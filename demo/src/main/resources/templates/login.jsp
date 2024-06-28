<%@ page import="java.util.HashMap" %>
<%@ page session="true" %>
<%
    // Hardcoded users for simplicity
    HashMap<String, String> users = new HashMap<>();
    users.put("testuser", "testpass");

    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if (username != null && password != null) {
        if (users.containsKey(username) && users.get(username).equals(password)) {
            session.setAttribute("username", username);
            response.sendRedirect("home.jsp");
        } else {
            request.setAttribute("error", "Invalid username or password");
        }
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/styles.css">
</head>
<body>
    <h2>Login</h2>
    <form action="login.jsp" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username"><br>
        <label for="password">Password:</label>
        <input type="password" id="password" name="password"><br>
        <button type="submit">Login</button>
    </form>
    <%
        if (request.getAttribute("error") != null) {
            out.println("<p style='color: red;'>" + request.getAttribute("error") + "</p>");
        }
    %>
</body>
</html>
