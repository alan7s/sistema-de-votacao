<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="conexao.Conexao"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="iso8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    

    <title>Sistema de votação</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="justified-nav.css" rel="stylesheet">
  </head>

  <body>

    <div class="container">

      <div class="masthead">
        <h3 class="text-muted">SdV2 - INFOTEC VI</h3>

        <nav class="navbar navbar-expand-md navbar-light bg-light rounded mb-3">
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav text-md-center nav-justified w-100">
              <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Início <span class="sr-only">(current)</span></a>
              </li>
              <!--<li class="nav-item">
                <a class="nav-link" href="login.jsp">Logar-se</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="cadastro.jsp">Cadastrar usuário</a>
              </li>-->
              <li class="nav-item">
                <a class="nav-link" href="ranking.jsp">Ranking</a>
              </li>
            </ul>
          </div>
        </nav>
      </div>
        <div class="jumbotron">
        <h1>Sistema de votação</h1>
        <p class="lead">Sistema de votação de grupos da Feira da Escola Estadual Professor Fontes, vote no seu grupo favorito e confira a classificação dos grupos concorrendo a um prêmio.</p>
        <p><a class="btn btn-lg btn-success" href="cadastro-grupo.jsp" role="button">Cadastrar novo grupo</a></p>
      </div>
        
        <table style="table-layout: fixed; width: 1110px; overflow: hidden;" border="0"> 
                <script>
            <%
    
int contador=1;
//int id;
String nome_trab,turma,comt,id,tabela, tabela2;
String operacao="excluir";

String pesquisa = request.getParameter("pesquisa");
Connection con = new Conexao().abrir();

//Executa o sql
Statement stmt = con.createStatement();

//pega o resultado do sql
ResultSet rs;
if(pesquisa == null || pesquisa.equals("")){
    rs = stmt.executeQuery("select * from grupos");
}else{
     rs = stmt.executeQuery("select * from grupos where nome like '%"+pesquisa +"%'");
}

while(rs.next()){
    id=rs.getString("id");
    nome_trab=rs.getString("nome_trab");
    turma = rs.getString("turma");
    comt = rs.getString("comt");
    if(contador==1){
        tabela="<tr>";
        tabela2="";
        contador=0;
    }
    else{
        tabela="";
        tabela2="</tr>";
        contador=1;
    }         
%>

   </script>
            
      <!-- Example row of columns -->
      
      <%=tabela%>
              <td>
           <form method="submit" action="SalvarVotos2.jsp" class="row">     
        <div class="col-lg-4">
          <h2><%=nome_trab%></h2>
          <h5><%=turma%></h5>
          <p><%=comt%> </p>
          <p align="right">
              <!--<form method="submit" align="center" action="SalvarVotos2.jsp" >-->
                  <button type="submit" class="btn btn-info">Votar</button>
  <!-- <button type="text"class="btn btn-info" name="votar" id="votar" value="votar" >Votar</button> !-->
   <input type="hidden" id="v" name="v" value="votar">
   <input type="hidden" id="id" name="id" value="<%= id %>">
         <!--</form>-->

              
          </p>
        </div>
           </form>
       </td>
       <%=tabela2%>
                      
                                        
      
          
          <% }
            rs.close();
            stmt.close();
            con.close();
            %>
        </table>
       
      <!-- Site footer -->
      <footer class="footer">
        <p>&copy; INFOTEC 2017</p>
      </footer>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="js/vendor/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>
