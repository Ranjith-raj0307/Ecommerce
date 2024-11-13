<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>

<style>
.abc
{
display:grid;
grid-columns:start 1 end 3;

}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String a=session.getAttribute("username").toString();
out.println("welcome "+a);



%>
<div class="abc">
    
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/besantproject","root","Ranjith@0307");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from padd");
    while(rs.next())
    {%>
    <div class="h">
    <h3><%=rs.getString(2) %></h3>
    <h5><%=rs.getString(3) %></h5>
    <input type="submit">
    </div>
    
    
    	
    <%}
}
catch(Exception e)
{
	out.println(e);
}





%>
</div>


</body>
</html>