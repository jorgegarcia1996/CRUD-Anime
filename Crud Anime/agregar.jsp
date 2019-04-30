<%-- 
    Document   : agregar
    Created on : 26-feb-2019, 18:53:37
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
    <title>Agregar Anime a la lista</title>
  </head>
  <body>
    <%
      request.setCharacterEncoding("UTF-8");
      
      

      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/anime", "root", "root");
      Statement s = conexion.createStatement();

      String insercion = "INSERT INTO ANIME ";
      insercion += "VALUES (NULL, '";
      insercion += request.getParameter("nombre") + "', '";
      insercion += request.getParameter("sinopsis") + "', '";
      insercion += request.getParameter("genero") + "', ";
      insercion += request.getParameter("numeroEpisodios") + ", ";
      insercion += request.getParameter("duracionEpisodios") + ", '";
      insercion += request.getParameter("fechaEstreno") + "', '";
      insercion += request.getParameter("estudio") + "', ";
      insercion += request.getParameter("tipo") + ")";

      //out.print(insercion);
      s.execute(insercion);
      conexion.close();
    %>
    
    
    <script>
      // Redirecciona a la página principal
      location.replace("lista.jsp");
    </script>
  </body>
</html>
