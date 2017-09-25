<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
  <%@ include file = "../Database.jsp" %>
  <!--%@jsp:include page="../Database.jsp" %-->
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
    
 	String name=request.getParameter("userid");
	String password=request.getParameter("pass");
	stmt=con.createStatement();
	rs=stmt.executeQuery("select * from login where name='"+name+"'");
	rs.next();
	if(password.equals(rs.getString(2)))
	{
		session.setAttribute("userid",rs.getInt(1));
		session.setAttribute("login",1);
		response.sendRedirect("Recharge.jsp");
	}
	else
	{
		out.print("login unsuceesfully");
		response.sendRedirect("home.jsp");
	}
%>
</body>
</html>