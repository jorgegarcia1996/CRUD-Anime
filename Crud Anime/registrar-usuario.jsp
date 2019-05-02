<%-- 
    Document   : agregar
    Created on : 26-feb-2019, 18:53:37
    Author     : JorgeGarciaMolina
--%>
<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Agregar Anime a la lista</title>
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
    <div class="container-flex">
      <div class="row">
        <div class="col-md-4 offset-md-4 text-center font-weight-bold">
          <div id="existeUsuario" class="alert alert-danger" role="alert">
            El usuario ya existe<br>
            <a href="./registro.jsp" class="btn btn-info"><span>Volver</span></a>
          </div>
        </div>
      </div><br>
      <div class="row">
        <div class="col-md-4 offset-md-4 text-center font-weight-bold">
          <div id="creadoUsuario" class="alert alert-success" role="alert">
            Usuario creado correctamente<br>
            <a href="./index.jsp" class="btn btn-info"><span>Ir al Login</span></a>
          </div>
        </div>
      </div>
    </div>
  </body>
 <%
      request.setCharacterEncoding("UTF-8");

      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/anime", "root", "root");
      Statement s = conexion.createStatement();
      Statement s2 = conexion.createStatement();

      boolean existe = false;

      ResultSet usuario = s2.executeQuery("SELECT * FROM USUARIO");

      while (usuario.next()) {
        if (usuario.getString("nomusu").equals(request.getParameter("username"))) {
          existe = true;
        }
      }

      if (!existe) {
        out.print("<script>"
                + "document.getElementById(\"existeUsuario\").style.display = \"none\";"
                + "document.getElementById(\"creadoUsuario\").style.display = \"block\";"
                + "</script>");
        String insercion = "INSERT INTO USUARIO ";
        insercion += "VALUES (NULL, '";
        insercion += request.getParameter("username") + "', '";
        insercion += DigestUtils.md5Hex(request.getParameter("password")) + "', '";
        insercion += request.getParameter("email") + "')";
        //out.print(insercion);
        s.execute(insercion);
      } else {
        out.print("<script>"
                + "document.getElementById(\"creadoUsuario\").style.display = \"none\";"
                + "document.getElementById(\"existeUsuario\").style.display = \"block\";"
                + "</script>");
      }
      conexion.close();
    %>
</html>