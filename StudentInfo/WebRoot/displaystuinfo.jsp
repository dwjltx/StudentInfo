<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="com.yifei.model.*"%>
<%@ page import="java.io.*,java.util.*" %>
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

<title>My JSP 'displaystuinfo.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script language="javascript">
	    function changeColor(row){
	        document.getElementById(row).style.backgroundColor='#CCCCFF';
	    }
	    function resetColor(row){
	        document.getElementById(row).style.backgroundColor='';
	    }
	</script>

</head>

<body bgcolor="#ffeeff">
 <%request.setCharacterEncoding("UTF-8"); %>
	<jsp:useBean id="stuSer" class="com.yifei.service.stuInfoService"></jsp:useBean>
	<jsp:useBean id="user1" class="com.yifei.model.Student"></jsp:useBean>
	<jsp:setProperty property="*" name="user1"/>
	<jsp:useBean id="user2" class="com.yifei.model.interest"></jsp:useBean>
	<jsp:setProperty property="*" name="user2"/>
	<jsp:useBean id="user3" class="com.yifei.model.Student_base_information"></jsp:useBean>
	<jsp:setProperty property="*" name="user3"/>
	<jsp:useBean id="user4" class="com.yifei.model.Student_contact_way"></jsp:useBean>
	<jsp:setProperty property="*" name="user4"/>
	
	
	<% String mytable=request.getParameter("table"); 
	String myclasses=request.getParameter("classes");
	//out.print(mytable);
	//out.print(myclasses);
	%>
	<script>
    alert("查询全部信息") ;
  </script>
	<%
	if(mytable.equals("student") && myclasses.equals("jike1401")){
		List stus = stuSer.queryAllStu();
		//out.print(stus.size());
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
			}
		%>
		
		<%
	if(mytable.equals("interest") && myclasses.equals("jike1401")){
		List stus = stuSer.queryAllStu1();
		//out.print(stus.size());
		Iterator iter = stus.iterator();
	%>
	
	<table>
		<tr align="center" id="row1"
		onMouseOver="changeColor('row1')" onMouseOut="resetColor('row1')" bgcolor="#eeeeff">
			<td>编号</td>
			<td>兴趣</td>
			
		</tr>
		<%
			int i = 0;
			while (iter.hasNext()) {
				interest student = (interest) iter.next();
		%>

		<tr align="center" id="row2"
		onMouseOver="changeColor('row2')" onMouseOut="resetColor('row2')">
			<td><%=student.getIntid()%></td>
			<td><%=student.getInterest()%></td>
			
		</tr>
		<%
			}
			}
			%>
			<% 
			if(mytable.equals("Student_base_information") && myclasses.equals("jike1403")){
		List stus = stuSer.queryAllStu2();
		//out.print(stus.size());
		Iterator iter = stus.iterator();
	%>
	
	<table>
		<tr align="center" id="row1"
		onMouseOver="changeColor('row1')" onMouseOut="resetColor('row1')" bgcolor="#eeeeff">
			<td>学号</td>
			<td>姓名</td>
			<td>性别</td>
			<td>民族</td>
			<td>生日</td>
			<td>籍贯</td>
			<td>住址</td>
			<td>父亲</td>
			<td>父亲电话</td>
		</tr>
		<%
			int i = 0;
			while (iter.hasNext()) {
				Student_base_information student = (Student_base_information) iter.next();
		%>

		<tr align="center" id="row2"
		onMouseOver="changeColor('row2')" onMouseOut="resetColor('row2')" >
			<td><%=student.getStudent_id()%></td>
			<td><%=student.getStudent_name()%></td>
			<td><%=student.getStudent_sex()%></td>
			<td><%=student.getStudent_family()%></td>
			<td><%=student.getStudent_birthday()%></td>
			<td><%=student.getStudent_roots() %></td>
			<td><%=student.getStudent_address()%></td>
			<td><%=student.getStudent_parent1() %></td>
			<td><%=student.getStudent_parent1_tel()%></td>
		</tr>
		<%
			}
			}
		%>
		
		<%
	if(mytable.equals("Student_contact_way") && myclasses.equals("jike1403")){
		List stus = stuSer.queryAllStu3();
		//out.print(stus.size());
		Iterator iter = stus.iterator();
	%>
	
	<table>
		<tr align="center" id="row1"
		onMouseOver="changeColor('row1')" onMouseOut="resetColor('row1')" bgcolor="#eeeeff">
			<td>学号</td>
			<td>姓名</td>
			<td>寝室楼</td>
			<td>寝室号</td>
			<td>电话</td>
			<td>QQ</td>
			<td>邮箱</td>
			
		</tr>
		<%
			int i = 0;
			while (iter.hasNext()) {
				Student_contact_way student = (Student_contact_way) iter.next();
		%>

		<tr align="center" id="row2"
		onMouseOver="changeColor('row2')" onMouseOut="resetColor('row2')">
			<td><%=student.getStudent_id()%></td>
			<td><%=student.getStudent_name()%></td>
			<td><%=student.getStudent_dormitory()%></td>
			<td><%=student.getStudent_number()%></td>
			<td><%=student.getStudent_tel()%></td>
			<td><%=student.getStudent_QQ() %></td>
			<td><%=student.getStudent_email()%></td>
			
		</tr>
		<%
			}
			}
		%>
		<%if(mytable.equals("Student_contact_way") && myclasses.equals("jike1401")||mytable.equals("Student_base_information") && myclasses.equals("jike1401")
		||mytable.equals("student") && myclasses.equals("jike1403")||mytable.equals("interest") && myclasses.equals("jike1403")){
		
		 %>
		 <script>
    alert("您选择的数据错误") ;
  </script>
		 <%} %>
	</table>

</body>
</html>
