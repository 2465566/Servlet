<%@ page contentType="text/html;charset=UTF-8"%>
<jsp:useBean id="noteList" class="uu.NoteList" scope="application"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="style/css.css"/>
    <title>更新</title>
</head>
<body>
<center>
    <jsp:setProperty name="noteList" property="map"/>
    <%
        request.setCharacterEncoding("UTF-8");
        String noteId = request.getParameter("noteId");
        String note = request.getParameter("content");
        noteList.getMap().put(note, noteId);

        String oldNote = request.getParameter("oldNote");
        noteList.getMap().remove(oldNote);

        response.setHeader("refresh", "1;URL=list_notes.jsp");
    %>

</center>
</body>
</html>