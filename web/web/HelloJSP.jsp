<%--
  Created by IntelliJ IDEA.
  User: rico
  Date: 6/11/17
  Time: 12:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name = request.getParameter("name");
    String url = request.getParameter("url");
%>
name = <%=name %>
<br/>
url = <%=url %>
</body>
</html>
