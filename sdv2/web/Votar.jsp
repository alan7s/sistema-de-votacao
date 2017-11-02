<%@page contentType="text/html" pageEncoding="iso8859-1"%>
<!DOCTYPE html>
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="salvarVoto.jsp" method="post">
        <table>
            <tr>
                <td>Nome</td>
                <td>Telefone</td> 
                <td>Comentario</td>
           </tr>
           <tr>
               <td> <input id="nome" type="text" name="nome" value="<%= request.getParameter("nome") %>"> </input> </td>
               <td> <input type="text" name="telefone" value="<%= request.getParameter("telefone") %>"> </input> </td>
               <td> <input type="text" name="comentario"> </input> </td>
           <input type="hidden" name="votar" value="votar"></input>
           <input type="hidden" name="id" value="<%= request.getParameter("id") %>"></input>
           </tr>
            
        </table>
          
        <input type="submit" value="Votar"> </input>
        </form>
    </body>
</html>

