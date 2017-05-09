<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<h1>this is the newsfeed page</h1>
<!-- 
I've hard coded three posts here to show you what this might look like. 
The newsfeed servlet would be called to query the database and populate the
posts into an arraylist which would be displayed in this JSP
-->
<table>
<!-- each html table row starts with tr, each cell starts with td -->
<tr>
<td><a href="ProfileServlet?userid=1&action=viewProfile">user1@domain.com</a></td>
<td>This is the text of user1's tweet</td>
</tr>
<tr>
<td><a href="ProfileServlet?userid=2&action=viewProfile">user2@domain.com</a></td>
<td>This is the text of user2 tweet</td>
</tr>
<tr>
<td><a href="ProfileServlet?userid=3&action=viewProfile">user3@domain.com</a></td>
<td>This is the text of user3 tweet</td>
</tr>
</table>
</body>
</html>