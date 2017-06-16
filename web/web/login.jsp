<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css"/>
        <title>BBS 登陆</title>
    </head>
    <body>
    <center>
        <form name="frmLogin" action="loginHandler.jsp" method="post" >
            <table width="50%">
                <tr>
                    <td colspan="2"><STRONG style="color:red;font-size:30px;">登陆</STRONG></td>
                </tr>
                <tr>
                    <td>用户名：</td>
                    <td><input type="text" name="id" id="id" ></td>
                </tr>
                <tr>
                    <td>密&nbsp;&nbsp;码：</td>
                    <td><input type="password" name="password" id="password"></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="登陆">
                        <input type="reset" value="重置">
                        <a href="register.jsp">立即注册</a>
                    </td>
                </tr>
            </table>
        </form>
        <hr>
    </center>
</body>
</html>