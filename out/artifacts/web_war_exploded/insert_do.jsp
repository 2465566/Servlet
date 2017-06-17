<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean class="uu.NoteList" id="noteList" scope="application"/>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css"/>
    <title>留言</title>
</head>
<body>
<center>
    <jsp:getProperty name="noteList" property="map"/>
    <%
        request.setCharacterEncoding("UTF-8");
        String id = (String) session.getAttribute("id");
        request.setAttribute("id", id);
        noteList.processRequest(request);

        response.setHeader("refresh", "1;URL=list_notes.jsp");
    %>
    <hr>
</center>
</body>
</html>