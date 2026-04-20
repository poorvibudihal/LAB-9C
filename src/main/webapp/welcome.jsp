<%@ page import="java.util.*" %>
<%
    String name = request.getParameter("uname");
    String timeStr = request.getParameter("time");

    if (name != null && timeStr != null) {
        int minutes = Integer.parseInt(timeStr);

        // Set session timeout (convert minutes → seconds)
        session.setMaxInactiveInterval(minutes * 60);

        session.setAttribute("username", name);
    }

    String user = (String) session.getAttribute("username");
%>

<html>
<head>
    <title>Welcome</title>
</head>
<body>

<%
    if (user != null) {
%>
        <h2>Hello <%= user %>!</h2>
        <p>Session is set successfully.</p>

        <p><b>Session ID:</b> <%= session.getId() %></p>
        <p><b>Creation Time:</b> <%= new Date(session.getCreationTime()) %></p>

        <br>
        <a href="check.jsp">Click here to check session</a>

        <p><i>Click above link within given time OR wait to see session expiry.</i></p>

<%
    } else {
%>
        <h2>Session Expired!</h2>
        <a href="index.jsp">Go Back</a>
<%
    }
%>

</body>
</html>