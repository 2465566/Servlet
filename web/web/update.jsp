<%@ page contentType="text/html;charset=UTF-8" %>
<jsp:useBean class="uu.NoteList" id="noteList" scope="application"/>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="style/css.css"/>
    <title>update</title>
</head>
<body>
<center>
    <jsp:setProperty name="noteList" property="map"/>
    <%
        String userName = (String) session.getAttribute("id");
        String note = request.getParameter("note");
        String oldNote = note;// TODO: 6/17/17 why can not add here 
        String noteId = noteList.getMap().get(note);
        if (userName.equals(noteId)) {
    %>

    <form action="update_do.jsp" method="post">
        <table>
            <tr>
                <td colspan="2">添加新留言</td>
            </tr>
            <tr>
                <td>内容：</td>
                <td><textarea name="content" cols="30" rows="6"><%=note%></textarea></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="hidden" name="noteId" value="<%=noteId%>">
                    <input type="hidden" name="oldNote" value="<%=oldNote%>">
                    <input type="submit" value="更新">
                    <input type="reset" value="重置">
                </td>
            </tr>
        </table>
    </form>
<%
    } else {
        response.sendRedirect("warning.jsp");
    }
%>

</center>
</body>
</html>