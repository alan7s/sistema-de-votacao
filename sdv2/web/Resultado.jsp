
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <!<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Resultado</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
      <div class="col-md-6 col-md-offset-3"> 
    <h1 align="center">Resultado Parcial</h1>
    <%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="conexao.*" %>



<div class="table-responsive">
  <table class="table" border="2">
    <thead>
        <tr>
           <th>Titulo do trabalho</th>
            <th>N° do Grupo</th>
            <th>Orientador</th>
            <th>Lider</th>
            <th>Modulo</th>
            <th>Quantidade de Votos</th>
            
        </tr>
    </thead>        
<%
int id_novo, votos = 0, soma = 0;
String titulo, numero, orientador, lider,modulo;



Connection con = new conexao().abrir();

//Executa o sql
Statement stmt = con.createStatement();

//pega o resultado do sql
ResultSet rs = stmt.executeQuery("select * from novo");


while(rs.next()){
    
    id_novo = rs.getInt("id_novo");
    
    
    Statement stmtVotos = con.createStatement();
    ResultSet rsVotos = stmtVotos.executeQuery("select count(*) as total from votos where id_novo_id = " + id_novo);
    
     
   
    
    titulo = rs.getString("titulo");
    orientador = rs.getString("orientador");
    numero = rs.getString("numero");
    lider = rs.getString("lider");
    modulo = rs.getString("modulo");
    if(rsVotos.next()) {
        votos = rsVotos.getInt("total");
        soma++;
    }
    
    rsVotos.close();
    stmtVotos.close();
     
%>

    <tbody>
    <form action="editctt.jsp" method="post">
        <tr>
           
           <td> <%=titulo%> </td>
           <td><%=numero%> </td>
           <td><%=orientador%> </td>
           <td><%=lider%></td>
            <td><%=modulo%></td>
           <td><%=votos%></td>
        </tr>
    </form>
    </tbody>
           
            
            
            
            <% }
            rs.close();
            stmt.close();
            con.close();
            %>
            
        </table>
                        <button type="submit" name="votar" class="btn btn-info"> <a href="index.jsp"> Inicio </a></button> 

</div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script></div>
  </body>
</html>











