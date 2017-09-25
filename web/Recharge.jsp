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
		if(!session.getAttribute("login").equals(1))
		{
			response.sendRedirect("home.jsp");
		}

		
	%>
	<a href="home.jsp">Logout</a>
	<form action="pay.jsp">
	Simcard   : <input type="text" name="simcard" /> <br/><br/>
	Mobile    : <input type="text" name="mobile" /> <br /><br/>
	Recharge  : <input type="text" name="recharge" /> <br /><br/>
	Credit    : <input type="text" name="credit" /> <br /><br/>
	<input type="submit" value="Recharge" />
	</form>
	
</body>
</html>