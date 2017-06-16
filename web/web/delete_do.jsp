<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="style/css.css"/>
    <title>DELETE</title>
</head>
<body>
<center>
    <%
        String userName = (String) session.getAttribute("id");
        String note = request.getParameter("note");
        String noteUser = (String) application.getAttribute(note);
        String noteUser_really = noteUser.substring(0, noteUser.length() - 6);
        if (userName.equals(noteUser_really)) {
            application.removeAttribute(noteUser);
            response.setHeader("refresh", "1;URL=list_notes.jsp");
        } else {
            response.sendRedirect("warning.jsp");
        }
    %>
</center>
</body>
</html>