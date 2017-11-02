<%-- 
    Document   : ranking
    Created on : 24/10/2017, 00:32:05
    Author     : Pedro
--%>

<%@page import="conexao.Conexao"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="refresh" content="5" >
        <title>Ranking</title>
        <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/cover.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>
    
    </head>
    <body>
        <h1 class="cover-heading">Grupos mais votados</h1>
        <br>
        <table class="table table-striped table-dark" >
  <thead>
    <tr class="bg-info">
      <th scope="col" class="text-center">Posição</th>
      <th scope="col">Nome do Projeto</th>
      <th scope="col" class="text-center">Turma</th>
      <th scope="col" class="text-center">Professor Orientador</th>
      <th scope="col" class="text-center">Número de Votos</th>
    </tr>
  </thead>
  <%
int id_grupo, votos = 0, i=0;
String nome, turma, orientador, cor;



Connection con = new Conexao().abrir();

//Executa o sql
Statement stmt = con.createStatement();


ResultSet rs = stmt.executeQuery("SELECT idgrupo, COUNT(idvoto) AS total FROM voto GROUP BY idgrupo ORDER BY total DESC");

while(rs.next()){
    
    id_grupo = rs.getInt("idgrupo");
    
           
    Statement stmtGrupos = con.createStatement();
    ResultSet rsGrupos = stmtGrupos.executeQuery("select * from grupos where id = " + id_grupo);
    rsGrupos.next();
    
    nome = rsGrupos.getString("nome_trab");
    turma = rsGrupos.getString("turma");
    orientador = rsGrupos.getString("p_ori");
    
     votos = rs.getInt("total");
    i++;
    if(i<=3){
        cor="class=\"bg-success\"";
    }
    else if(i<=10){
        cor="class=\"bg-primary\""; 
    }
    else if(i<=20){
        cor="class=\"bg-info\""; 
    }
    else{
        cor="class=\"bg-danger\""; 
    }
     
%>
  <tbody>
    <tr <%=cor%>>
      <th scope="row" class="text-center"><%=i%></th>
      <th><%=nome %></th>
      <th class="text-center"><%=turma %></th>
      <th class="text-center"><%=orientador %></th>
      <th class="text-center"><%=votos%></th>
    <tr>
    <% }
            rs.close();
            stmt.close();
            con.close();

            %>
  </tbody>
</table>
    <a href="votacao.jsp" target="_top"><button type="button" class="btn btn-secondary">Ir para página de votação </button> </a>
    </body>
</html>