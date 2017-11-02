<%@page contentType="text/html" pageEncoding="iso8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
	<link href="css/signin.css" rel="stylesheet">
	    

    <!-- Custom styles for this template -->
    <link href="css/cover.css" rel="stylesheet">
  </head>
  <body>
  <div class="site-wrapper">

      <div class="site-wrapper-inner">

        <div class="cover-container">

          <div class="masthead clearfix">
            <div class="inner">
              <h3 class="masthead-brand">Login de usuário</h3>
              <nav>
                <ul class="nav masthead-nav">
                  <li class="active"><a href="cadastro.jsp">Cadastar novo usuário</a></li>
                </ul>
              </nav>
            </div>
          </div>
		  
<div class="container">
      <form class="form-signin">
        <h2 class="form-signin-heading" align="center">Sistema de votação</h2>
        <label for="inputEmail" class="sr-only">Email:</label>
        <input type="email" id="inputEmail" class="form-control" placeholder="Digite seu usuário" required autofocus>
        <label for="inputPassword" class="sr-only">Senha:</label>
        <input type="password" id="inputPassword" class="form-control" placeholder="Digite sua senha" required>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Lembrar-me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
		<br>
		<div class="alert alert-warning" role="alert">
			<strong>Atenção!</strong> Se esqueceu seus dados de login, entre em contato com o administrador do sistema.
		</div>
      </form>

    </div> <!-- /container -->
  </body>
</html>