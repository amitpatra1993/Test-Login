<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login JSP Page</title>
</head>


<body>
<%@include file="menu.jsp" %>
	<div class="container">
		<div class="card">
			<div class="card-header bg-warning">
				<h1 class="text-dark text-center">User Login</h1>
			</div>
<form method="post">
User Name : <input type="text" name="username"><br>
Password : <input type="password" name="password"><br>
<button type="submit" name="submit">Submit</button>
<button type="reset">Reset</button>
</form>
<% 

if("Post".equalsIgnoreCase(request.getMethod()) && request.getParameter("submit")!=null)
{
	String user_name= request.getParameter("username");
	String password= request.getParameter("password");
	if("amitpatra".equalsIgnoreCase(user_name) && "amit1234".equalsIgnoreCase(password))
	{
		out.println("Welcome Admin!");
		
	}
	else
	{
		out.println("Username or password is incorrect, please try again");
	}
}

%>

</body>

</html>