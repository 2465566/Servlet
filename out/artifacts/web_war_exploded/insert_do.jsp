<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css"/>
        <title>JSP+JDBC 留言管理程序――登陆</title>
    </head>
    <body>
    <center>
        <h1>留言管理范例 ―― JSP + JDBC实现</h1>
        <hr>
        <br>
        <%
            // 进行乱码处理
            request.setCharacterEncoding("UTF-8");
        %>
        <%
            if (session.getAttribute("uname") != null) {
                        // 用户已登陆
        %>
        <%!
            String DBDRIVER = "com.mysql.jdbc.Driver";
            String DBURL = "jdbc:mysql://localhost:3306/db_jsp?characterEncoding=utf-8";
            String DBUSER = "root";
            String DBPASSWORD = "3049";
            Connection conn = null;
            Statement stmt = null;
        %>
        <%
            // 声明一个boolean变量
            boolean flag = false;

            // 接收参数
            String title1 = request.getParameter("title");
            String author1 = request.getParameter("author");
            String content1 = request.getParameter("content");
        %>
        <%
                // 现在note表中的主键是id自动递增生成
            String sql = "INSERT INTO note(title,author,content)"
                    + " VALUES ('" + title1 + "','"
                    + author1 + "','"
                    + content1 + "')";
            try {
                Class.forName(DBDRIVER);
                conn = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
                stmt = (Statement) conn.createStatement();
                stmt.executeUpdate(sql);
                stmt.close();
                conn.close();
                // 如果插入成功，则肯定能执行到此段代码
                flag = true;

            } catch (Exception e) {
                System.out.println("数据库连接失败：" + e.getMessage());
            }
        %>
        <%
            response.setHeader("refresh", "0;URL=list_notes.jsp");
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
    </center>
</body>
</html>