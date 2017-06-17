<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean class="uu.Register" id="register" scope="application"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css"/>
    <title>登陆</title>
</head>
<body>
<center>
    <%
        boolean flag = false;

        String id = request.getParameter("id");
        String password = request.getParameter("password");
    %>
    <jsp:getProperty name="register" property="map"/>
    <jsp:getProperty name="register" property="id"/>
    <%
        for (int i = 0; i < register.getMap().size(); i++) {
            if (password.equals(register.getMap().get(id))) {
                flag = true;
            }
        }
    %>
    <%

        if (flag) {
            session.setAttribute("id", id);
            session.setAttribute("psw", password);
    %>
    <jsp:forward page="list_notes.jsp"/>
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