<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="../database.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
    Connection con = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String driver = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost/payatm";
	String un = "root";
	String pass = "";
	try{
		Class.forName(driver);
	con = DriverManager.getConnection(url,un,pass);
	}catch(Exception e){}
    
	int recharge=Integer.parseInt(request.getParameter("recharge"));
	int otp=Integer.parseInt(request.getParameter("otp"));
	String userid;
	if(session !=null){
		 userid=session.getAttribute("userid").toString();
	stmt=con.createStatement();
	
	rs=stmt.executeQuery("select * from login where id="+userid+"");
	rs.next();
	int r=rs.getInt(6);
	if(otp==rs.getInt(5))
	{
		r=r-recharge;
		stmt.execute("Update login set rs="+ r +" where id="+userid);
		out.println("YOur current Amount is =" +r+ " and  recharged amount is "+ recharge);
	}
	else{
		out.print("Wrong OTP");
		response.sendRedirect("pay.jsp?otp=0");
		
	}
	}
	else
	{
			out.print("not defined");
	}
	
%>

</body>
</html>