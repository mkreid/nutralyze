<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="auth.UserBean"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body id = "home">
<% Calendar cal = Calendar.getInstance(); %>
<% DateFormat time = new SimpleDateFormat("k:mm a z"); %>
<% DateFormat date = new SimpleDateFormat("dd-MMM-yyyy"); %>
<% String loadTime = time.format(cal.getTime()); %>
<% String loadDate = date.format(cal.getTime()); %>
<h1>Nutralyze</h1>
<%-- Set up navigation section --%>
<ul id="nav">
	<li id="nav-home"><a href="home.jsp">Home</a></li>
	<li id="nav-ingredients"><a href="ingredients.jsp">Ingredients</a></li>
	<li id="nav-recipes"><a href="recipes.jsp">Recipes</a></li>
	<li id="nav-labelmaker"><a href="#">Label Maker</a>
</ul>
<%-- End navigation section --%>
<br><br>
<div> 
<p>
<% UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser")); %> 
<%-- Make sure user is logged in; if not redirect to login portal! --%>
<% if (currentUser == null) {
	response.getWriter().println("<script type=\"text/javascript\">");
	response.getWriter().println("alert('You must sign in first.');");
	response.getWriter().println("location='login.jsp';");
	response.getWriter().println("</script>");
	
	return;
} %>
Welcome, <%= currentUser.getFirstName() + " " + currentUser.getLastName() %>!
<br>
</p>
</div>



<div id="footer">
<p>
<%= "Current User: <b>" + currentUser.getUsername() + "</b> | Last refreshed: <b>" + loadTime + "</b> on <b>" + loadDate + "</b>"%>
| <a href="logout.jsp">Logout</a>
</p>
</div>


</body>
</html>