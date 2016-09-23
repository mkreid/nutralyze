<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="auth.UserBean"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Successful Login!</title>
</head>
<body>
<% Calendar cal = Calendar.getInstance(); %>
<% DateFormat time = new SimpleDateFormat("k:mm a z"); %>
<% DateFormat date = new SimpleDateFormat("dd-MMM-yyyy"); %>
<% String loadTime = time.format(cal.getTime()); %>
<% String loadDate = date.format(cal.getTime()); %>
<div style="text-align: center"> 
<p>
<% UserBean currentUser = (UserBean) (session.getAttribute("currentSessionUser")); %> 

<% if (currentUser == null) {
	response.getWriter().println("<script type=\"text/javascript\">");
	response.getWriter().println("alert('You must sign in first.');");
	response.getWriter().println("location='login.jsp';");
	response.getWriter().println("</script>");
	
	return;
} %>
Welcome <%= currentUser.getFirstName() + " " + currentUser.getLastName() %> 
<br>

</p>
</div>

<div style="position: relative">
<p style="position: fixed; bottom: 0; width:100%; text-align: center">
<%= "Current User: <b>" + currentUser.getUsername() + "</b> | Last refreshed: <b>" + loadTime + "</b> on <b>" + loadDate + "</b>"%>
| <a href="logout.jsp">Logout</a>
</p>
</div>


</body>
</html>