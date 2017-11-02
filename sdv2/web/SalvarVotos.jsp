<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="conexao.conexao" %>

<%
    
if(request.getParameter("votar").equals("votar")){
String comentario = request.getParameter("comentario");
String id_novo_id = request.getParameter("id_novo");

Connection con = new conexao().abrir();

String sql="insert into votos( id_novo_id, comentario) values (?,?)";

PreparedStatement stmt = con.prepareStatement(sql);

stmt.setString(1, id_novo_id);
stmt.setString(2, comentario );



stmt.execute();
stmt.close();
con.close();

response.sendRedirect("Resultado.jsp");
}
%>
