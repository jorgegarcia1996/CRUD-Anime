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
      session.setAttribute("nombre", request.getParameter("nombre"));
      session.setAttribute("sinopsis", request.getParameter("sinopsis"));
      session.setAttribute("genero", request.getParameter("genero"));
      session.setAttribute("numeroEpisodios", request.getParameter("numeroEpisodios"));
      session.setAttribute("duracionEpisodio", request.getParameter("duracionEpisodios"));
      session.setAttribute("fechaEstreno", request.getParameter("fechaEstreno"));
      session.setAttribute("estudio", request.getParameter("estudio"));
      session.setAttribute("tipo", request.getParameter("tipo"));
      

      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/anime", "root", "root");
      Statement s = conexion.createStatement();

      String insercion = "INSERT INTO ANIME ";
      insercion += "VALUES (NULL, '";
      insercion += session.getAttribute("nombre") + "', '";
      insercion += session.getAttribute("sinopsis") + "', '";
      insercion += session.getAttribute("genero") + "', ";
      insercion += session.getAttribute("numeroEpisodios") + ", ";
      insercion += session.getAttribute("duracionEpisodio") + ", '";
      insercion += session.getAttribute("fechaEstreno") + "', '";
      insercion += session.getAttribute("estudio") + "', ";
      insercion += session.getAttribute("tipo") + ")";

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
