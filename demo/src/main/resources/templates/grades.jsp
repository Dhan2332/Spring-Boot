<%@ page session="true" %>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    Integer score = (Integer) session.getAttribute("score");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Grades</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/styles.css">
</head>
<body>
    <h2>Grades</h2>
    <table border="1">
        <thead>
            <tr>
                <th>Username</th>
                <th>Score</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><%= username %></td>
                <td><%= (score != null ? score : "N/A") %></td>
            </tr>
        </tbody>
    </table>
</body>
</html>
