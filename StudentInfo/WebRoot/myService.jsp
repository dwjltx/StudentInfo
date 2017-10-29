<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,com.yifei.model.*,java.io.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'myService.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <%
   
	Connection conn1 = new com.yifei.conn.conn().getCon();
    Connection conn2 = new com.yifei.conn.conn2().getCon();
	String insert2=request.getParameter("insert2");
	String insert1=request.getParameter("insert1");
	
	String sql="insert into"+insert1+"values("+insert2+")";
	if(insert1.equals("student")||insert1.equals("interest")){
	    PreparedStatement pstmt=conn1.prepareStatement(sql);
	    int n=pstmt.executeUpdate();
	    if(n==1){%>
	    <script>
	    alert("插入成功");
	    </script>
	    <%
	}else%>
	<script>
	    alert("插入失败");
	    </script>
	<%} 
	%>
  </body>
</html>
