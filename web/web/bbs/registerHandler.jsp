<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean class = "bean.Register" id="register" scope="application"/>
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
        String id = request.getParameter("id");
        String psw = request.getParameter("psw");

        if(id.isEmpty() || psw.isEmpty()) {
            response.sendRedirect("register.jsp");
        }
    %>
    <jsp:setProperty name="register" property="id"/>
    <jsp:setProperty name="register" property="psw"/>
    <jsp:setProperty name="register" property="submit"/>
    <%
        register.processRequest(request);
        response.setHeader("refresh", "1;URL=login.jsp");
    %>
</center>

</body>
</html>