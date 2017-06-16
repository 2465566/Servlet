<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css"/>
        <title>留言</title>
    </head>
    <body>
    <center>
        <%!
            int i = 0;
        %>
        <%
            request.setCharacterEncoding("UTF-8");
            String note = request.getParameter("content");
            i = i+1;
            application.setAttribute(session.getAttribute("id") + "note_" + i, note);

            response.setHeader("refresh", "1;URL=list_notes.jsp");
        %>
        <hr>
    </center>
</body>
</html>