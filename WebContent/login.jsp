<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
var username=document.forms["login"]["usr"];
var password=document.forms["login"]["pwd"];
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SOLUTIONS@cs</title>
</head>
<body style="background:#D2E2F3;">
	<%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
String userid=request.getParameter("usr"); 
session.putValue("userid",userid); 
String pwd=request.getParameter("pwd"); 
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","Pranav","mishra@96"); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select * from users where userid='"+userid+"'"); 
if(rs.next()) 
{ 
if(rs.getString(2).equals(pwd)) 
{ 
out.println("WELCOME TO SOLUTIONS@cs   "+userid); 

} 
else 
{ 
out.println("Invalid password try again"); 
} 
} 
else 
%>
<br></br>
<h4><a href="index.html">HOME</a></h4>
</body>
</html>