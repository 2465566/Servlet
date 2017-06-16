<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" />
        <title>登陆</title>
    </head>
    <body>
    <center>
        <%
            boolean flag = false;

            // 接收参数
            String id = request.getParameter("id");   				//用户名
            String password = request.getParameter("password");    //用户密码

            if (password.equals(application.getAttribute(request.getParameter("id") + "psw_"))) {
                session.removeAttribute("id");
                session.setAttribute("id",id);
                flag = true;
            }
            if (flag) {
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