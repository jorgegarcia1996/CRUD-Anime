<%-- 
    Document   : actualizar
    Created on : 27-feb-2019, 11:19:21
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
    <title>Actualizar los datos de un anime</title>
  </head>
  <body>
    <%
      request.setCharacterEncoding("UTF-8");

      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/anime", "root", "root");
      Statement s = conexion.createStatement();

      String actualizacion = "UPDATE ANIME SET NomAni='";
      actualizacion += request.getParameter("nombre");
      actualizacion += "', SinAni='";
      actualizacion += request.getParameter("sinopsis");
      actualizacion += "', GenAni='";
      actualizacion += request.getParameter("genero");
      actualizacion += "', NumEpiAni=";
      actualizacion += request.getParameter("numeroEpisodios");
      actualizacion += ", DurEpiAni=";
      actualizacion += request.getParameter("duracionEpisodios");
      actualizacion += ", FecEstAni='";
      actualizacion += request.getParameter("fechaEstreno");
      actualizacion += "', EstAni='";
      actualizacion += request.getParameter("estudio");
      actualizacion += "', CodTip=";
      actualizacion += request.getParameter("tipo");
      actualizacion += " WHERE CodAni=";
      actualizacion += request.getParameter("actualizarAnime");
      
      //out.print(actualizacion);
      s.execute(actualizacion);
      conexion.close();
    %>

    <script>
      // Redirecciona a la página principal
      location.replace("lista.jsp");
    </script>
  </body>
</html>
