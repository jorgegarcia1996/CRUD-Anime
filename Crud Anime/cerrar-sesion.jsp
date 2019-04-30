<%-- 
    Document   : cerrar-sesion
    Created on : 30-abr-2019, 20:43:14
    Author     : Jorge
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Logout</title>
  </head>
  <body>
    <%session.invalidate();%>
  </body>
  <script>
      // Redirecciona a la página principal
      location.replace("index.jsp");
    </script>
</html>
