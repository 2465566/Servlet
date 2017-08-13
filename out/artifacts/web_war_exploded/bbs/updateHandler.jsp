<%@ page contentType="text/html;charset=GBK"%>
<jsp:useBean id="noteList" class="bean.NoteList" scope="application"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link rel="stylesheet" type="text/css" href="style/css.css"/>
    <title>更新</title>
</head>
<body>
<center>
    <jsp:setProperty name="noteList" property="map"/>
    <%
        request.setCharacterEncoding("GBK");
        String noteId = request.getParameter("noteId");
        String note = request.getParameter("content");

        /* avoid chinese messy code temporary, should add filter in web.xml to handle this issue in future*/
        note = new String(note.getBytes("ISO8859_1"), "GBK");

        noteList.getMap().put(note, noteId);

        String oldNote = request.getParameter("oldNote");
        oldNote = new String(oldNote.getBytes("ISO8859_1"), "GBK");
        noteList.getMap().remove(oldNote);

        response.setHeader("refresh", "1;URL=notesList.jsp");
    %>

</center>
</body>
</html>