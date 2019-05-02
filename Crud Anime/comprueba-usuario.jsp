<%-- 
    Document   : comprueba-usuario
    Created on : 30-abr-2019, 20:01:47
    Author     : Jorge
--%>


<%@page import="org.apache.commons.codec.digest.DigestUtils"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
  request.setCharacterEncoding("UTF-8");

  Class.forName("com.mysql.jdbc.Driver");
  Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/anime", "root", "root");
  Statement s = conexion.createStatement();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Comprobar usuario</title>
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
    <%
      String consulta = "SELECT * FROM USUARIO";
      session.setAttribute("usuario", request.getParameter("username"));

      //out.println(consulta);
      ResultSet usuario = s.executeQuery(consulta);
    %>
    <div class="container-flex">
      <div class="row">
        <div class="col-md-4 offset-md-4 text-center font-weight-bold">
          <div id="loginFail" class="alert alert-danger" role="alert">
            Usuario o contraseña incorrectos.<br>
            <a href="./index.jsp" class="btn btn-info"><span>Volver</span></a>
          </div>
        </div>
      </div>
    </div>
  </body>
  <%
    while (usuario.next()) {
      if (usuario.getString("nomusu").equals(session.getAttribute("usuario")) && usuario.getString("conusu").equals(DigestUtils.md5Hex(request.getParameter("password")))) {
        out.print("<script>"
                + "document.getElementById(\"loginFail\").style.display = \"none\";"
                + "location.replace(\"lista.jsp\");"
                + "</script>");
      } else {
        out.print("<script>"
                + "document.getElementById(\"loginFail\").style.display = \"block\";"
                + "</script>");
      }
    }

    conexion.close();
  %>
</html>
