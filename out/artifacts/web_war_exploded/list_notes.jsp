<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Set" %>
<jsp:useBean class="uu.NoteList" id="noteList" scope="application"/>
<jsp:useBean class="uu.Register" id="register" scope="application"/>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css"/>
    <title>BBS </title>

</head>
<body>
<center>
    </h3><a href="insert.jsp">添加新留言</a> <a href="login.jsp">退出</a></h3>
    <%
        request.setCharacterEncoding("UTF-8");
    %>



    <jsp:setProperty name="noteList" property="map"/>
    <jsp:setProperty name="register" property="id"/>
    <jsp:setProperty name="register" property="psw"/>

    <%
        if (session.getAttribute("id") == null || session.getAttribute("psw") == null
        || !session.getAttribute("psw").equals(register.getMap().get(session.getAttribute("id")))) {
            response.sendRedirect("login.jsp");
    }
        HashMap<String, String> list = noteList.getMap();
        Set<String> key = list.keySet();
        for (String note : key) {
            if (note != null) {
                String id = list.get(note);
                request.setAttribute("note",note);
    %>
    <table width="92%" border="3">
        <tr>
            <td><%=id%>
            </td>
            <td style="height:20px;"><%=note%>
            </td>
            <td><a href="delete_do.jsp?id=<%=id%>&note=<%=note%>">删除</a></td>
            <td><a href="update.jsp?id=<%=id%>&note=<%=note%>">编辑</a></td>
        </tr>

    </table>
    <%
            }
        }
    %>
</center>
</body>
</html>