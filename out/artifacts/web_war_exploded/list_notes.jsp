<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*"%>

<%!
    String str;

    public String subStr(String str) {
        if (str == null || "".equals(str)) {
            return "";
        }
        if (str.length() > 10) //            return str.substring(0,10) + "...";
        {
            return str;
        } else {
            return str;
        }
    }
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" />
        <title>BBS </title>

    </head>
    <body>
    <center>
        <%
            // 编码转换
            request.setCharacterEncoding("UTF-8");
            if (session.getAttribute("uname") != null) {
                        // 用户已登陆
        %>
        <%!
            String DBDRIVER = "com.mysql.jdbc.Driver";
            String DBURL = "jdbc:mysql://localhost:3306/db_jsp?characterEncoding=utf-8";
            String DBUSER = "root";
            String DBPASSWORD = "3049";
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
        %>
        <%
            // 如果有内容，则修改变量i，如果没有，则根据i的值进行无内容提示
            int i = 0;
            String sql = "SELECT id,title,author,content FROM note";

            try {
                Class.forName(DBDRIVER);
                conn = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
                pstmt = conn.prepareStatement(sql);
                rs = pstmt.executeQuery();
        %>

    </h3><a href="insert.jsp">添加新留言</a>　　　　　　　　<a href="go.jsp">退出</a></h3>

<table width="92%" border="3" >
    <tr>
        <td>留言ID</td>
        <td>标题</td>
        <td>作者</td>
        <td>内容</td>
        <td>删除</td>
        <td>编辑</td>
    </tr>
    <%
        while (rs.next()) {
            i++;
                            // 进行循环打印，打印出所有的内容，以表格形式
            // 从数据库中取出内容
            int id = rs.getInt(1);
            String title = rs.getString(2);
            String author = rs.getString(3);
            String content = rs.getString(4);

    %>
    <tr>
        <td><%=id%></td>
        <td><a href="update.jsp?id=<%=id%>"><%=title%></a></td>
        <td><%=author%></td>
        <td style="height:20px;">　<img src="images/list.png" /> <%=subStr(content)%></td>
        <td><a href="delete_do.jsp?id=<%=id%>&author=<%=author%>">删除</a></td>
        <td><a href="update.jsp?id=<%=id%>&author=<%=author%>">编辑</a></td>
    </tr>

    <%
            request.setAttribute("author", author);
        }
        // 判断i的值是否改变，如果改变，则表示有内容，反之，无内容
        if (i == 0) {
                            // 进行提示
    %>
    <tr>
        <td colspan="5">没有任何内容！！！</td>
    </tr>
    <%
        }
    %>
</table>

<%
        rs.close();
        pstmt.close();
        conn.close();
    } catch (Exception e) {
    }
%>
<%
} else {
    // 用户未登陆，提示用户登陆，并跳转
    response.setHeader("refresh", "2;URL=login.jsp");
%>
您还未登陆，请先登陆！！！<br>
两秒后自动跳转到登陆窗口！！！<br>
如果没有跳转，请按<a href="login.jsp">这里</a>！！！<br>
<hr>
<%
    }
%>
<hr>
</center>
</body>
</html>