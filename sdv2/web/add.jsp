

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="conexao.*" %>

<%
  
    
if(request.getParameter("ac").equals("adicionar")){
String  nome_trab = request.getParameter("nome_trab");
String  nome = request.getParameter("nome");
String p_ori = request.getParameter("p_ori");
String curso = request.getParameter("curso");
String turno = request.getParameter("turno");
String turma = request.getParameter("turma");
String comt = request.getParameter("comt");

Connection con = new Conexao().abrir();

String sql="insert into grupos( nome_trab,nome, p_ori, turno,turma,curso,comt) values (?,?,?,?,?,?,?)";

//Prepara o sql e o transforma em excutavel
PreparedStatement stmt = con.prepareStatement(sql);

//Pego os parametros
stmt.setString(1,nome_trab);
stmt.setString(2, nome);
stmt.setString(3, p_ori);
stmt.setString(4, turno);
stmt.setString(5, turma);
stmt.setString(6, curso);
stmt.setString(7, comt);

//executando o sql
stmt.execute();

stmt.close();
con.close();
response.sendRedirect("votacao.jsp");
}
%>
