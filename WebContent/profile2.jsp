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
<% UserBean u=(UserBean)session.getAttribute("usersession");%>
<pre>
UserName :<%=u.getName() %>
Password :<%=u.getPassword() %>
Email id :<%=u.getEmail() %>
ID       :<%=u.getId() %>
<a href="profile2.jsp">Click Here</a>
<a href="logout.jsp">Logout</a>
<a href="login.jsp">LoginPage</a>
</pre>
</body>
</html>