
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
            <legend>Cadastrar grupo</legend>
            <form action="add.jsp" method="post">
            <div class="form-group"><table border="0">
            <tr>
				<td><label>Nome do trabalho: </label></td>
				<td><input type="text" id="nome_trab" name="nome_trab" size="73" maxlength="100" placeholder="Nome do trabalho"/></td>
            </tr>
			<tr>
				<td><label>Nome do líder: </label></td>
				<td><input type="text" id="nome" name="nome" size="73" maxlength="100" placeholder="Nome do líder"/></td>
            </tr>
			<tr>
				<td><label>Professor Orientador: </label></td>
				<td><input type="text" id="p_ori" name="p_ori" size="73" maxlength="100" placeholder="Nome do orientador"/></td>
            </tr>
						
            <td><label>Curso: </label></td>
				<td><select id="curso" name="curso">
					<option value="" selected="selected">Selecionar</option>
					<option value="informatica">Informática</option>
					<option value="internet">Informática para internet</option>
					
				</select></td>
            </tr><tr>
            <td><label>Turno: </label></td>
				<td><select id="turno" name="turno">
					<option value="" selected="selected">Selecionar</option>
					<option value="manha">Manha</option>
					<option value="tarde">Tarde</option>
					<option value="noite">Noite</option>
				</select></td>
			</tr>
			<tr>
				<td><label>Turma: </label></td>
				<td><input type="text" id="turma" name="turma" size="73" maxlength="100" placeholder="Ex: 3I1M2"/></td>
            </tr>
			<tr>
				<td><label>Comentário: </label></td>
				<td><textarea id="comt" name="comt" rows="6" cols="74" placeholder="Texto descritivo, breve introdução ao projeto.(Será exibido na página principal)."></textarea></td>
            </tr>
            </table>  
        </fieldset>
                <div id="btn"><br>
                
<p class="text-center"><button type="submit" class="btn btn-success">Adicionar</button>
    <button type="reset" class="btn btn-danger">Limpar</button>
 <a href="index.jsp" target="_top"><button type="button" class="btn btn-danger"> Cancelar </button> </a></p>
            </div>
                <input type="hidden" id="ac" name="ac" value="adicionar">
			</form>
    </table>
      
  </body>
</html>