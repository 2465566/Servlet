<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:useBean class="uu.NoteList" id="noteList" scope="application"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="style/css.css"/>
    <title>DELETE</title>
</head>
<body>
<center>
    <jsp:getProperty name="noteList" property="map"/>
    <%
        String userName = (String) session.getAttribute("id");
        String note = request.getParameter("note");     // TODO: 6/17/17  通过连接传递的参数通过 .getParameter 获取
        String noteId = noteList.getMap().get(note);
        if (userName.equals(noteId)) {
            noteList.getMap().remove(note);
            response.setHeader("refresh", "1;URL=list_notes.jsp");
        } else {
            response.sendRedirect("warning.jsp");
        }
    %>
</center>
</body>
</html>