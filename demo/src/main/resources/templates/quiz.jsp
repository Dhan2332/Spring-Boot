<%@ page session="true" %>
<%
    String username = (String) session.getAttribute("username");
    if (username == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String scoreParam = request.getParameter("score");
    if (scoreParam != null) {
        int score = Integer.parseInt(scoreParam);
        session.setAttribute("score", score);
        response.sendRedirect("home.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Quiz</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/styles.css">
</head>
<body>
    <h2>Quiz</h2>
    <form action="quiz.jsp" method="post">
        <label for="score">Enter your score:</label>
        <input type="number" id="score" name="score"><br>
        <button type="submit">Submit</button>
    </form>
</body>
</html>
