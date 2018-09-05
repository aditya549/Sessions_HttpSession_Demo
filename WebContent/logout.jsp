<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
session.invalidate(); 
out.println("You'r Logged Out");
%>
<a href="profile1.jsp?id=">Profile</a><br>
<a href="profile2.jsp">Click Here</a><br>
<a href="login.jsp">LoginPage</a><br>

</body>
</html>