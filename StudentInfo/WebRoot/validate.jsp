<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'validate.jsp' starting page</title>

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

	<jsp:useBean id="sid" class="com.yifei.model.Student"></jsp:useBean>
	<jsp:useBean id="userservice" class="com.yifei.service.userService"></jsp:useBean>
	<jsp:setProperty property="*" name="sid" />
	<%
		out.print(sid.getSid());
		out.print(sid.getPassword()); 
		if (userservice.valiUser(sid)) {
			//session.setAttribute("user", user);
	%>
    <jsp:forward page="firstpage.jsp"/>
    <%
    	out.print("success");
    	} else
    		out.print("error");
    %>
  </body>
</html>
