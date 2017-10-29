<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.yifei.model.*"%>
<%@ page import="java.io.*,java.util.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'showstu.jsp' starting page</title>
    
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
  <%request.setCharacterEncoding("utf-8"); %>

	<jsp:useBean id="user" class="com.yifei.model.Student"></jsp:useBean>
	<jsp:useBean id="userservice" class="com.yifei.service.stuInfoService"></jsp:useBean>
	<jsp:setProperty property="*" name="user" />
	<%
	     List stus=userservice.querybySid(user);
	     Iterator iter = stus.iterator();
	 %>
	 <table>
		<tr align="center" id="row1"
		onMouseOver="changeColor('row1')" onMouseOut="resetColor('row1')" bgcolor="#eeeeff">
			<td>学号</td>
			<td>姓名</td>
			<td>密码</td>
			<td>性别</td>
			<td>QQ号</td>
			<td>手机号码</td>
			<td>籍贯</td>
		</tr>
		<%
			int i = 0;
			while (iter.hasNext()) {
				Student student = (Student) iter.next();
		%>

		<tr align="center" id="row2"
		onMouseOver="changeColor('row2')" onMouseOut="resetColor('row2')">
			<td><%=student.getSid()%></td>
			<td><%=student.getName()%></td>
			<td><%=student.getPassword()%></td>
			<td><%=student.getSex()%></td>
			<td><%=student.getQq()%></td>
			<td><%=student.getTel() %></td>
			<td><%=student.getProvince()%></td>
		</tr>
		<%
			}
			
		%>
    
  </body>
</html>
