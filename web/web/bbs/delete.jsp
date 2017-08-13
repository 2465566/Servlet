<%@ page contentType="text/html;charset=GBK"%>
<jsp:useBean class="bean.NoteList" id="noteList" scope="application"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link rel="stylesheet" type="text/css" href="style/css.css"/>
    <title>DELETE</title>
</head>
<body>
<center>
    <jsp:setProperty name="noteList" property="map"/>
    <%
        request.setCharacterEncoding("gbk");
        String userName = (String) session.getAttribute("id");
        String note = request.getParameter("note");
          /* avoid chinese messy code temporary, should add filter in web.xml to handle this issue in future*/
        note = new String(note.getBytes("ISO8859_1"), "GBK");
        String noteId = noteList.getMap().get(note);
        if (userName.equals(noteId)) {
            noteList.getMap().remove(note);
            response.setHeader("refresh", "1;URL=notesList.jsp");
        } else {
            response.sendRedirect("warning.jsp");
        }
    %>
</center>
</body>
</html>