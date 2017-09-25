<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css"></style>
<link href="paytm/css/style.css" rel="style" type="text/css" />
<title>PAYTM</title>
</head>
<body>
<h1>PAYTM</h1><br/>
<%
	session.setAttribute("login",0);
%>
	<!--img src="C:\Users\Vendi\Desktop\logo.jpg" width= 25% align="right"-->
	<form action="Login.jsp">
	USER NAME:<input type="text" name="userid" /><br/><br/>
	PASSWORD: <input type="password" name="pass" /><br/><br/>
	<input type="Submit" value="login" />
	</form>
</body>
</html>
