<%@ page contentType="text/html;charset=UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style/css.css"/>
        <title>留言</title>
    </head>
    <body>
    <center>
        <form action="insert_do.jsp" method="post">
            <table>
                <tr>
                    <td colspan="2">添加新留言</td>
                </tr>
                <tr>
                <tr>
                    <td>内容：</td>
                    <td><textarea name="content" cols="30" rows="6"></textarea></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="添加">
                        <input type="reset" value="重置">
                    </td>
                </tr>
            </table>
        </form>
        <h3><a href="list_notes.jsp">回到留言列表页</a></h3>
    </center>
</body>
</html>