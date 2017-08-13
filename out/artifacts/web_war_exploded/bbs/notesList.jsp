<%@ page contentType="text/html;charset=GBK" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Set" %>
<jsp:useBean class="bean.NoteList" id="noteList" scope="application"/>
<jsp:useBean class="bean.Register" id="register" scope="application"/>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=GBK">
    <link rel="stylesheet" type="text/css"/>
    <title>BBS </title>

</head>
<body>
<center>
    </h3><a href="insert.jsp">添加新留言</a> <a href="login.jsp">退出</a></h3>
    <%
        request.setCharacterEncoding("GBK");
    %>

    <jsp:setProperty name="noteList" property="map"/>
    <jsp:setProperty name="register" property="id"/>
    <jsp:setProperty name="register" property="psw"/>

    <%
        if (session.getAttribute("id") == null || session.getAttribute("psw") == null ||
                !session.getAttribute("psw").equals(register.getMap().get(session.getAttribute("id")))) {
            response.sendRedirect("login.jsp");
        }
        HashMap<String, String> notesList = noteList.getMap();
        Set<String> key = notesList.keySet();
        for (String note : key) {
            if (note != null) {
                String id = notesList.get(note);
                 /* used in delete and edit page*/
//                request.setAttribute("note", note);
    %>
    <table width="92%" border="3">
        <tr>
            <td><%=id%></td>
            <td style="height:20px;"><%=note%></td>
            <%--send the id and note as paramaters to corresponding page  --%>
            <td><a href="delete.jsp?id=<%=id%>&note=<%=note%>">删除</a></td>
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