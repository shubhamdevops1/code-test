<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>back end page</title>
</head>
<body>
	<%@page import="java.sql.*" %>
	
	<%
		String name=request.getParameter("Name");
		String email=request.getParameter("Email");
		String subject=request.getParameter("Subject");
		String comment=request.getParameter("Comment");
		
		try{
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection c=DriverManager.getConnection("jdbc:mysql://myappdb.ckz4rewfk2tt.us-east-1.rds.amazonaws.com:3306/DB","root","12345678");
			PreparedStatement ps=c.prepareStatement("insert into people values(?,?,?,?)");
			ps.setString(1,name);
			ps.setString(2,email);
			ps.setString(3,subject);
			ps.setString(4,comment);
			ps.executeUpdate();
			//out.println("message sent");
		}
		catch(Exception e){
			out.println(e);
		}
	%>
</body>
</html>