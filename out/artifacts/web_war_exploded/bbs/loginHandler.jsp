<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean class="bean.Register" id="register" scope="application"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css"/>
    <title>登陆</title>
</head>
<body>
<center>
    <%
        boolean isValidUser = false;
        String id = request.getParameter("id");
        String password = request.getParameter("password");

        if(id.isEmpty() || password.isEmpty()) {
            response.sendRedirect("login.jsp");
            return;
        }
    %>
    <jsp:getProperty name="register" property="map"/>
    <jsp:getProperty name="register" property="id"/>
    <%
        for (int i = 0; i < register.getMap().size(); i++) {
            if (password.equals(register.getMap().get(id))) {
                isValidUser = true;
            }
        }
    %>
    <%
        if (isValidUser) {
            session.setAttribute("id", id);
            session.setAttribute("psw", password);
    %>
    <jsp:forward page="notesList.jsp"/>
    <%
    } else {
    %>
    <jsp:forward page="login.jsp"/>
    <%
        }
    %>
</center>
</body>
</html>