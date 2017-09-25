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
	String otp=request.getParameter("otp");
	String credit=request.getParameter("credit");
	String recharge=request.getParameter("recharge");
	String mobile=request.getParameter("mobile");
	String simcard=request.getParameter("simcard");
	
	if(otp==null)
	{
		out.print("your simcard is of "+simcard+" and "+" your mobile number is "+mobile+"\n");
		out.print(" Recharge Amount is "+ recharge+" \n To continue enter OTP ");
	}
	
		else
		{
		
			out.print("Wrong OTP, Try again");
		}
	
		%>
		<form action="Receipt.jsp">
		<input type="hidden" name=recharge value=<%= recharge %> ><br/><br/>
		OTP :<input type="text" name="otp" > <br /><br/>
		<input type="submit" value="Confirm" >
		</form>
</body>
</html>