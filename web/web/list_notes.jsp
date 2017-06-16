<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.List" %>
<jsp:useBean class= "uu.NoteList" id="noteList" scope="application"/>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css"/>
    <title>BBS </title>

</head>
<body>
<center>
    </h3><a href="insert.jsp">添加新留言</a> <a href="login.jsp">退出</a></h3>
    <%=noteList.getId()%>
    <%
        request.setCharacterEncoding("UTF-8");

        List<String> list = new ArrayList<>();
        for (Enumeration e = application.getAttributeNames(); e.hasMoreElements(); ) {
            String attName = (String) e.nextElement();
            list.add(attName);
        }

        for (Enumeration e = application.getAttributeNames(); e.hasMoreElements(); ) {
            String attName = (String) e.nextElement();
            if (attName.contains("note_")) {
                String note = (String) application.getAttribute(attName);
                application.setAttribute(note,attName);

    %>

    <table width="92%" border="3">
        <tr>
            <td><%=attName%>
            </td>
            <td style="height:20px;"><%=note%>
            </td>
            <td><a href="delete_do.jsp?note=<%=note%>">删除</a></td>
            <td><a href="update.jsp?note=<%=note%>">编辑</a></td>
        </tr>

    </table>
    <%
            }
        }
    %>
</center>
</body>
</html>