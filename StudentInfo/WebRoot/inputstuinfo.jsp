<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'inputstuinfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="#ffeeff">
 <%request.setCharacterEncoding("UTF-8"); %>
   <form method="get" action="myService.jsp">
    <table bgcolor="#ffffaa" align="center" style="height: 417px; width: 310px; ">
     <tr><td colspan="2" align="center"><h3>插入信息</h3> </td></tr>
     <tr><td><h3>insert1</h3></td><td><input type="text" name="insert1" style="height: 39px; width: 156px; "></td></tr>
     <tr><td><h3>insert2</h3></td><td><input type="text" name="insert2" style="height: 37px; width: 156px; "></td></tr>
     
     <tr><td>
     <input type="submit" value="提交" style="height: 40px; width: 84px; "/>
    </td><td><input type="reset" value="取消" style="height: 40px; width: 84px; "/>
     </td></tr>
   </table>
    </form>
  </body>
</html>
