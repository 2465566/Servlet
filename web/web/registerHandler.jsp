<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %><%--
  Created by IntelliJ IDEA.
  User: rico
  Date: 6/13/17
  Time: 2:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css"/>
    <title>BBS register</title>
</head>
<body>
<center>
    <%
        request.setCharacterEncoding("UTF-8");
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
        boolean flag = false;
        String id = request.getParameter("id");
        String name = request.getParameter("name");
        String psw = request.getParameter("psw");
    %>
    <%
        String sql = "INSERT INTO person(id,name,password)"
                + " VALUES ('" + id + "','"
                + name + "','"
                + psw + "')";
        try {
            Class.forName(DBDRIVER);
            conn = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
            stmt = conn.createStatement();
            stmt.executeUpdate(sql);
            stmt.close();
            conn.close();

            flag = true;
        } catch (Exception e) {
            System.out.println("error when connect to sql：" + e.getMessage());
        }
    %>

    <%
        response.setHeader("refresh", "1;URL=login.jsp");
    %>
</center>

</body>
</html>
