<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
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
	<!--   link rel="stylesheet" type="text/css" href="css/style.css" 
	-->

  </head>
  
  <body bgcolor="#22aadd">
    <div align="center"><h2>学生管理系统登录</h2></div><br><br><br>
    <form action="validate.jsp" name="login">
    <table align="center">
    <tr>
    <td><h3>Username</h3></td><td> <h3><input type="text" name="sid" size="12" style="width: 143px; height: 37px"></h3></td></tr>
    <tr>
   <td> <h3>Password</h3> </td><td><h3><input type="password" name="password" size="12" style="width: 143px; height: 37px"></h3></td></tr>
  <tr><td align="center"><h3><input type="submit" value="login"  style="height: 30px; width: 70px; "></h3></td>
  <td align="center"><h3><input type="reset" value="reset" style="height: 30px; width: 70px; "></h3></td></tr>
    </table>
    </form>
    <br><br><br><br><br><br><br><br>
    <div align="right"><h6>Owner: Zhang Yifei ; initial account password: sid&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h6></div>
  </body>
</html>
