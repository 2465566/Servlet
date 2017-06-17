<%--
  Created by IntelliJ IDEA.
  User: rico
  Date: 6/13/17
  Time: 2:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" />
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
