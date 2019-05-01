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
      session.setAttribute("actualizarAnime", request.getParameter("actualizarAnime"));
      session.setAttribute("nombre", request.getParameter("nombre"));
      session.setAttribute("sinopsis", request.getParameter("sinopsis"));
      session.setAttribute("genero", request.getParameter("genero"));
      session.setAttribute("numeroEpisodios", request.getParameter("numeroEpisodios"));
      session.setAttribute("duracionEpisodio", request.getParameter("duracionEpisodio"));
      session.setAttribute("fechaEstreno", request.getParameter("fechaEstreno"));
      session.setAttribute("estudio", request.getParameter("estudio"));
      session.setAttribute("tipo", request.getParameter("tipo"));

      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/anime", "root", "root");
      Statement s = conexion.createStatement();

      String actualizacion = "UPDATE ANIME SET NomAni='";
      actualizacion += session.getAttribute("nombre");
      actualizacion += "', SinAni='";
      actualizacion += session.getAttribute("sinopsis");
      actualizacion += "', GenAni='";
      actualizacion += session.getAttribute("genero");
      actualizacion += "', NumEpiAni=";
      actualizacion += session.getAttribute("numeroEpisodios");
      actualizacion += ", DurEpiAni=";
      actualizacion += session.getAttribute("duracionEpisodios");
      actualizacion += ", FecEstAni='";
      actualizacion += request.getParameter("fechaEstreno");
      actualizacion += "', EstAni='";
      actualizacion += request.getParameter("estudio");
      actualizacion += "', CodTip=";
      actualizacion += session.getAttribute("tipo");
      actualizacion += " WHERE CodAni=";
      actualizacion += session.getAttribute("actualizarAnime");
      
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
