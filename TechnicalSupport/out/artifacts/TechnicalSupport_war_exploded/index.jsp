<%--
  Created by IntelliJ IDEA.
  User: Stephane Moluh
  Date: 6/11/2019
  Time: 3:59 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Support</title>
  </head>
  <body>
  <h2>HTML Forms</h2>

  <form action="support" method="post">
    Name:<br>
    <input type="text" name="name" >
    <br>
    Email:<br>
    <input type="text" name="email" >
    <br>
    Problem:<br>
    <input type="text" name="problem" >
    <br>
    Problem Description:
    <textarea name="problemDescription" rows="10" cols="30">

    </textarea>
    <input type="submit" value="Help">
  </form>
  </body>
</html>
