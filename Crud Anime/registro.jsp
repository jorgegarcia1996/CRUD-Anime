<%-- 
    Document   : registro
    Created on : 30-abr-2019, 18:41:39
    Author     : Jorge
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CRUD Programación - REGISTRO</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="./main.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </head>
  <body>
    <h1 class="font-weight-bold text-center">Registro</h1>
    <br>
    <div class="container-flex">
      <form action="registrar-usuario.jsp" method="POST">
        <div class="row">
          <div class="col-md-2 offset-md-2 text-double text-right font-weight-bold">
            <p>Usuario:</p>
          </div>
          <div class="col-md-4">
            <input type="text" name="username" id="username" class="form-control" required>
          </div>
        </div>
        <br>
        <div class="row">
          <div class="col-md-2 offset-md-2 text-double text-right font-weight-bold" >
            <p>Contraseña:</p>
          </div>
          <div class="col-md-4">
            <input type="password" name="password" id="password" class="form-control" required>
          </div>
        </div>
        <br>
        <div class="row">
          <div class="col-md-2 offset-md-2 text-double text-right font-weight-bold">
            <p>Correo:</p>
          </div>
          <div class="col-md-4">
            <input type="email" name="email" id="email" class="form-control" required>
          </div>
        </div>
        <br>
        <div class="row">
          <div class="col-md-12 text-center">
            <input type="submit" class="btn btn-success" value="Registrarse">
            <a href="index.jsp" class="btn btn-info">Volver</a>
          </div>
        </div>
      </form>
    </div>
  </body>
</html>
