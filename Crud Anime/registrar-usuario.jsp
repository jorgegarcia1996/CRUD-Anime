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
  </head>
  <body>
    <%
      request.setCharacterEncoding("UTF-8");

      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/anime", "root", "root");
      Statement s = conexion.createStatement();

      String insercion = "INSERT INTO USUARIO ";
      insercion += "VALUES (NULL, '";
      insercion += request.getParameter("username") + "', '";
      insercion += DigestUtils.md5Hex(request.getParameter("password")) + "', '";
      insercion += request.getParameter("email") + "')";

      //out.print(insercion);
      s.execute(insercion);
      conexion.close();
    %>
    
    
    <script>
      // Redirecciona a la página principal
      location.replace("index.jsp");
    </script>
  </body>
</html>