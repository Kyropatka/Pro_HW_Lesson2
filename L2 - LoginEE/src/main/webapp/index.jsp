<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>Prog Academy</title>
  </head>
  <body>
    <% String login = (String)session.getAttribute("user_login"); %>
    <% int age = (session.getAttribute("user_age") != null) ? (Integer) session.getAttribute("user_age") : 0; %>


    <% if (login == null || "".equals(login)) { %>
        <form action="/login" method="POST">
            Login: <input type="text" name="login"><br>
            Password: <input type="password" name="password"><br>
            Age: <input type="text" name="age"><br>
            <input type="submit" />
        </form>
    <% } else if (age < 18) {%>
        <h1>Your age does not match the recommended age</h1>
        <br>Click this link to <a href="/login?a=exit">logout</a>
    <% } else { %>
        <h1>You are logged in as: <%= login %></h1>
        <br>Click this link to <a href="/login?a=exit">logout</a>
    <% } %>
  </body>
</html>
