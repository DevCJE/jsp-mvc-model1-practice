
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="javax.naming.*" %>
<%
    //1. JNDI 서버 객체 새성
    InitialContext ic= new InitialContext();

//2. lookup()
    DataSource ds = (DataSource) ic.lookup("java:comp/env/jdbc/myoracle");

//3. getConnection()
    Connection conn = ds.getConnection();

    Statement stmt=conn.createStatement();
    ResultSet rs = stmt.executeQuery("select * from test");

    while(rs.next()) {
        System.out.println(rs.getString("id") + ":" + rs.getString(2) + "<br>");
    }

//반납
    rs.close();
    stmt.close();
    conn.close();

    public String getUserIngo(String userid){
    try{
    conn = dosirak.db.DosirakDB.getConn();
    String sql="select name from dosirak_member where id=?";
    ps=conn.prepareStatement(sql);
    ps.setString(1, userid);
    rs=ps.executeQuery();
    rs.next();
    return rs.getString(1);

    }catch(Exception e){
    e.printStackTrace();
    return null;
    }finally{
    try{
    if(rs!=null)rs.close();
    if(ps!=null)ps.close();
    if(conn!=null)conn.close();

    }catch(Exception e2){}
    }
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>