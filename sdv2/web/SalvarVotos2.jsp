<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="conexao.Conexao" %>

<%
     
if(request.getParameter("v").equals("votar")){
    
String id_grupo = request.getParameter("id");

Connection con = new Conexao().abrir();

String sql="insert into voto(idgrupo) values (?)";

PreparedStatement stmt = con.prepareStatement(sql);

stmt.setString(1, id_grupo);


stmt.execute();
stmt.close();
con.close();

response.sendRedirect("ranking.jsp");
}
%>
