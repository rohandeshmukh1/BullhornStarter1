<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome to Bullhorn</title>
</head>
<body>
<h1>Login Page</h1>
<jsp:include page="bootstrap.jsp"></jsp:include>
<form action="LoginServlet" method="post">
	Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="email" value="user1@domain.com"><br/>
	Password:&nbsp;<input type="password" name="password" value="password"><br/>
	<input type="hidden" name="action" value="login">
	<input type="submit" value="Log In">
</form>
<p/>
<a href="LoginServlet?action=create">Create New User</a>
</body>
</html>