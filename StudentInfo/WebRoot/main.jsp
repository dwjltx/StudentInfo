<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'main.jsp' starting page</title>
    
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
   <form method="get" action="displaystuinfo.jsp">
    <table bgcolor="#ffffaa" align="center" style="height: 417px; width: 310px; ">
     <tr><td colspan="2" align="center"><h3>选择查看信息</h3> </td></tr>
     <tr><td><h2>table</h2></td><td>
     <select name="table" style="height: 33px; width: 109px; ">
     <option selected>student</option>
     <option>interest</option>
     <option>Student_base_information</option>
     <option>Student_contact_way</option>
     </select>
     </td></tr>
     
     <tr><td><h2>classes</h2></td><td>
     <select name="classes" style="height: 35px; width: 118px; ">
     <option selected>jike1401</option>
     <option>jike1402</option>
     <option>jike1403</option>
     <option>jike1404</option>
     </select>
     </td></tr>
     
     <tr><td>
     <input type="submit" value="提交" style="height: 40px; width: 84px; "/>
    </td><td><input type="reset" value="取消" style="height: 40px; width: 84px; "/>
     </td></tr>
   </table>
    </form>
  </body>
</html>
