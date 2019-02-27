<%-- 
    Document   : eliminar
    Created on : 26-feb-2019, 19:40:00
    Author     : JorgeGarciaMolina
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Eliminar Anime de la lista</title>
  </head>
  <body>
    <%
      request.setCharacterEncoding("UTF-8");
      
      

      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/ANIME", "root", "root");
      Statement s = conexion.createStatement();
      String borrado = "DELETE FROM ANIME WHERE CodAni = " + request.getParameter("borrarAnime");

      s.execute(borrado);
      conexion.close();
    %>
    
    
    <script>
      // Redirecciona a la página principal
      location.replace("index.jsp");
    </script>
  </body>
</html>
