<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%--但是所有服务器都至少要发送一个：content-type:text/html。这将告诉浏览器准备接受一个 HTML 文档--%>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>BBS系统</title>
</head>
<body>
<center>
    <%
        request.setCharacterEncoding("UTF-8");
    %>

    <form action="registerHandler.jsp" method="post">
        <table>
            <tr>
                <td>注册信息:</td>
            </tr>
            <tr>
                <td>ID</td>
                <td><input type="text" name="id"></td>
            </tr>
            <tr>
            <td>姓名：</td>
            <td><input type="text" name="name"></td>
        </tr>
            <tr>
                <td>密码：</td>
                <td><input type="text" name="psw"></td>
            </tr>
            <tr>
                <td>
                    <input type="submit" name="submit" value="注册">  <a href="login.jsp">登录</a>
                </td>
            </tr>
        </table>
    </form>
</center>


</body>
</html>
