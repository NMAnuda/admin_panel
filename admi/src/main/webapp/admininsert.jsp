<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="insertservlet" method="post">
	<table>
		<tr>
		<td>username :</td>
		<td><input type="text" name="username" required/></td>
		</tr>
		<tr>
		<td>email :</td>
		<td><input type="text" name="email" required/></td>
		</tr>
		<tr>
		<td colspan="2"><input type="submit" value="Submit"/></td>
		</tr>
		</table>
</form>
</body>
</html>