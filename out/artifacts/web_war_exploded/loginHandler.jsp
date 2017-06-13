<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" />
        <title>登陆</title>
    </head>
    <body>
    <center>
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
            // 声明一个boolean变量，用于保存用户是否合法的状态
            boolean flag = false;

            // 接收参数
            String id = request.getParameter("id");   				//用户名
            String password = request.getParameter("password");    //用户密码
        %>
        <%
            String sql = "SELECT name FROM person WHERE id=? and password=?";
            try {
                Class.forName(DBDRIVER);
                conn = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
                pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, id);
                pstmt.setString(2, password);
                rs = pstmt.executeQuery();
                if (rs.next()) {
                    // 用户合法
                    flag = true;
                    // 将用户名保存在session之中
                    session.setAttribute("uname", rs.getString(1));  //判断用户是否存在
                    session.setAttribute("uleixing", "同学");  //判断用户类型
                } else {
                    // 保存错误信息
                    request.setAttribute("err", "错误的学生用户名及密码！！！");
                }
                rs.close();
                pstmt.close();
                conn.close();
            } catch (Exception e) {
            }
        %>

        <%
            // 跳转
            if (flag) {
                        // 用户合法
        %>
        <jsp:forward page="list_notes.jsp"/>
        <%
        } else {
                        // 用户非法
        %>
        <jsp:forward page="login.jsp"/>
        <%
            }
        %>
    </center>
</body>
</html>