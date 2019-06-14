<%--
  Created by IntelliJ IDEA.
  User: Stephane Moluh
  Date: 6/12/2019
  Time: 12:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Login</title>
  </head>
  <body>
  <%
    Cookie[] cookies = request.getCookies();
      String username = "", password = "", rememberVal = "";
    if (cookies != null) {
      for (Cookie cookie : cookies) {
        if (cookie.getName().equals("username")) {
          username = cookie.getValue();
        }
        if (cookie.getName().equals("password")) {
          password = cookie.getValue();
        }
      }
    }
  %>

  <h1>Please Enter the log-in Information Below</h1>
  <form action='welcome' method='POST'>
    <br /><br />
    user name: <input id="username" type='text' name='username' value="<%=username%>"><br /><br />
    password: <input type='password' name='password' <%=password%>/><br /><br />
    <input type='submit' name='submit' value='log-in' /><br /><br />

    <input id="box1" type="checkbox" name="rememberme"  value="1"> Remember me<br /><br />
  </form><br /><br />
  </body>
</html>
