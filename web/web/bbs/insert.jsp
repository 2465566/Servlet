<%@ page contentType="text/html;charset=GBK"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=GBK">
        <link rel="stylesheet" type="text/css" href="style/css.css"/>
        <title>����</title>
    </head>
    <body>
    <center>
        <form action="insertHandler.jsp" method="post">
            <table>
                <tr>
                    <td colspan="2">���������</td>
                </tr>
                <tr>
                <tr>
                    <td>���ݣ�</td>
                    <td><textarea name="content" cols="30" rows="6"></textarea></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="���">
                        <input type="reset" value="����">
                    </td>
                </tr>
            </table>
        </form>
        <h3><a href="notesList.jsp">�ص������б�ҳ</a></h3>
    </center>
</body>
</html>