<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Please</title>
</head>
<body>
	<h2>Welcome to Nutralyze!</h2>
	<p>Please enter login information:</p>
	<form name="loginForm" method="POST" action="LoginServlet">
		<p>Username: <input type="text" name="username" size="20"/></p>
		<p>Password: <input type="password" size="20" name="password"/></p>
		<p> <input type="submit" value="Submit"/>
	</form>
	<p>Need an account? <a href="register.jsp">Click Here to register!</a>
</body>
</html>