<%@page import="java.util.*"%>
	<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	

	%>
