<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/style.css">
<title>Login Please</title>
</head>
<body>
	<div id="loginBox">
	<h2>Welcome to Nutralyze!</h2>
	<p>Please enter login information:</p>
	<form name="loginForm" method="POST" action="LoginServlet">
		<input type="text" name="username" placeholder="Username" required="required"/>
		<input type="password" name="password" placeholder="Password" required="required"/>
		<button class="btn" type="submit"> Let me in</button>
	</form>
	<p>Need an account? <a href="register.jsp">Click Here to register!</a></p>
	</div>
</body>
</html>