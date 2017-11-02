

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="conexao.*" %>

<%
  
    
if(request.getParameter("ac").equals("adicionar")){
String  nome = request.getParameter("nome");
String  login = request.getParameter("login");
String  senha = request.getParameter("senha");

Connection con = new Conexao().abrir();

String sql="insert into login( nome,login,senha) values (?,?,?)";

//Prepara o sql e o transforma em excutavel
PreparedStatement stmt = con.prepareStatement(sql);

//Pego os parametros
stmt.setString(1,nome);
stmt.setString(2,login);
stmt.setString(3,senha);

//executando o sql
stmt.execute();

stmt.close();
con.close();
response.sendRedirect("login.jsp");
}
%>
