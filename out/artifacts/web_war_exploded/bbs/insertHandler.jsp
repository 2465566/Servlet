<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean class="bean.NoteList" id="noteList" scope="application"/>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css"/>
    <title>留言</title>
</head>
<body>
<center>
    <jsp:setProperty name="noteList" property="map"/>
    <%
        request.setCharacterEncoding("UTF-8");
        String id = (String) session.getAttribute("id");
        request.setAttribute("id", id);
        noteList.processRequest(request);

        response.setHeader("refresh", "1;URL=notesList.jsp");
    %>
    <hr>
</center>
</body>
</html>