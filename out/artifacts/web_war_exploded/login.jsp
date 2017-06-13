<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style/css.css"/>
        <title>JSP+JDBC 留言管理程序――登陆</title>
    </head>
    <SCRIPT Language = "javascript">
        //下面的副程序将执行资料检查
        function isValid()
        {
            //下面的if判断语句将检查是否输入帐号资料
            if (frmLogin.id.value == "")
            {
                window.alert("您必须完成帐号的输入!");
                //显示错误信息
                document.frmLogin.elements(0).focus();
                //将光标移至帐号输入栏		
                return  false;
            }

            //下面的if判断语句将检查是否输入帐号密码
            if (frmLogin.password.value == "")
            {
                window.alert("您必须完成密码的输入!");
                //显示错误信息
                document.frmLogin.elements(1).focus();
                //将光标移至密码输入栏
                return  false;  //离开函数
            }

            frmLogin.submit(); //送出表单中的资料
        }
    </SCRIPT>		
    <body>
    <center>
        <h1>留言管理范例 ―― JSP + JDBC实现</h1>
        <hr>
        <br>
        <%
                // 判断是否有错误信息，如果有则打印
            // 如果没有此段代码，则显示时会直接打印null
            if (request.getAttribute("err") != null) {
        %>
        <h2><%=request.getAttribute("err")%></h2>
        <%
            }
        %>
        <form name="frmLogin" action="login_conf.jsp" method="post" onSubmit="return isValid(this);">
            <table width="50%">
                <tr>
                    <td colspan="2"><STRONG style="color:red;font-size:30px;">　　　　用户登陆</STRONG></td>
                </tr>
                <%--用户类型判断 --%>
                <tr>
                    <td>用户类型：</td>
                    <td><select name="leixing">
                            <option  value="xuesheng" >学生</option>
                            <option value="guanliyuan" >管理员</option>
                        </select></td>
                </tr>
                <%--用户类型判断 --%>
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
                        <a href="zhuce.jsp">点击立即注册</a>
                    </td>
                </tr>
            </table>
        </form>
        <hr>
    </center>
</body>
</html>