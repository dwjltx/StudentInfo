<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.yifei.model.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--link rel="stylesheet" type="text/css" href="css/style.css" -->

  </head>
  
  <body bgcolor="#22aadd">
  <div align="left">查看两个数据库中学生学号，姓名，性别，地址，电话，qq等信息</div>
    <jsp:useBean id="stuSer" class="com.yifei.service.stuInfoService"></jsp:useBean>
	<%
		List stus1 = stuSer.queryAllStu1();
		List stus2=stuSer.queryAllStu2();
		//out.print(stus.size());
		Iterator iter1 = stus1.iterator();
		Iterator iter2 = stus2.iterator();
	%>
	<script>
    alert("查询全部学生信息") ;
  </script>
	<table>
		<tr>
			<td>学号</td>
			<td>姓名</td>
			<td>性别</td>
		
			<td>地址</td>
			<td>手机号码</td>
			<td>QQ</td>
		</tr>
		<%
			int i = 0;
			while (iter1.hasNext()) {
				myStudent student = (myStudent) iter1.next();
		%>

		<tr>
			<td><%=student.getSid()%></td>
			<td><%=student.getName()%></td>
			<td><%=student.getSex()%></td>
			<td><%=student.getAddress()%></td>
			<td><%=student.getTel()%></td>
			<td><%=student.getQq() %></td>
		</tr>
		<%
			}
		%>
		
		<%
			i = 0;
			while (iter2.hasNext()) {
				myStudent student = (myStudent) iter2.next();
		%>

		<tr>
			<td><%=student.getSid()%></td>
			<td><%=student.getName()%></td>
			<td><%=student.getSex()%></td>
			<td><%=student.getAddress()%></td>
			<td><%=student.getTel()%></td>
			<td><%=student.getQq() %></td>
		</tr>
		<%
			}
		%>
	</table>
  </body>
</html>
