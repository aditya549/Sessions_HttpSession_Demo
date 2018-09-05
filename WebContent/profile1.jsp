<%@page import="com.Cubic.userbean.UserBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>User Details</h1>
<% UserBean u=(UserBean)session.getAttribute("usersession");
	String name=(String)session.getAttribute("testname");
%>
<pre>
UserName :<%=u.getName() %>
Password :<%=u.getPassword() %>
Email id :<%=u.getEmail() %>
ID       :<%=u.getId() %>
Test Name:<%=name%>>
<a href="profile2.jsp">Click Here</a><br>
<a href="logout.jsp">Logout</a><br>
<a href="login.jsp">LoginPage</a><br>
</pre>
</body>
</html>