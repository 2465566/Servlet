<%--
  Created by IntelliJ IDEA.
  User: rico
  Date: 6/13/17
  Time: 2:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean class = "uu.NoteList" id="noteList"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css"/>
    <title>BBS register</title>
</head>
<body>
<center>
    <%
        request.setCharacterEncoding("UTF-8");

        application.setAttribute(request.getParameter("id") + "name_",request.getParameter("name"));
        application.setAttribute(request.getParameter("id") + "psw_",request.getParameter("psw"));

        response.setHeader("refresh", "1;URL=login.jsp");
    %>
</center>

</body>
</html>
