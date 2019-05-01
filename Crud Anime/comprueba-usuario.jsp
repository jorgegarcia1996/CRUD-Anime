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
  </head>
  <body>
    <%
      String consulta = "SELECT * FROM USUARIO";
      session.setAttribute("usuario", request.getParameter("username"));
      
      //out.println(consulta);
      ResultSet usuario = s.executeQuery(consulta);
    %>
  </body>
  <%
  while (usuario.next()) {
        if (usuario.getString("nomusu").equals(session.getAttribute("usuario")) && usuario.getString("conusu").equals(DigestUtils.md5Hex(request.getParameter("password")))) {
          out.print("<script>"
          + "location.replace(\"lista.jsp\");"
          + "</script>");
        } else {
          out.print("<script>"
          + "setTimeout(function(){ location.replace(\"index.jsp\"); }, 500);"
          + "</script>");
        }
      }
      
      conexion.close();
  %>
</html>
