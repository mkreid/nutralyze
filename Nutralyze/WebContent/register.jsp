<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create a Nutralyze account</title>
</head>
<body>
	<h2>Register a new user...</h2>
	<form name="registerForm" method="POST" action="/Register">
		<p>Name: <input type="text" name="user_given_name" size="20"/></p>
		<p>Username: <input type="text" name="username" size="20"/></p>
		<p>Password: <input type="password" size="20" name="password"/></p>
		<p> <input type="submit" value="Submit"/>
	</form>

</body>
</html>