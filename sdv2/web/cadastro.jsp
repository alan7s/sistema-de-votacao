<%@page contentType="text/html" pageEncoding="iso8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Cadastro</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link href="css/signin.css" rel="stylesheet">
  </head>
  <body> 
	<table border="0" align="center">
        <tr><td>
        <fieldset>
            <legend>Cadastrar usuário</legend>
            <form action="add_user.jsp" method="post">
            <div class="form-group"><table border="0">
            <tr>
            <td><label>Nome: </label></td>
            <td><input type="text" id="nome" name="nome" size="73" maxlength="100" placeholder="Nome completo"/></td>
            </tr>
			<td><label>Usuário: </label></td>
            <td><input type="text" id="login" name="login" size="73" maxlength="100" placeholder="Nome de usuário"/></td>
            </tr>
			<td><label>Senha: </label></td>
            <td><input type="password" id="senha" name="senha" size="73" maxlength="100" placeholder="Senha"/></td>
            </tr>
            
            </table>  
        </fieldset>
                <div id="btn"><br>
                
<p class="text-center"><button type="submit" class="btn btn-success">Cadastrar</button>
     <a href="index.jsp" target="_top"><button type="button" class="btn btn-danger"> Cancelar </button> </a></p>
            </div>
                <input type="hidden" id="ac" name="ac" value="adicionar">
			</form>
    </table>
        </div>
  </body>
</html>