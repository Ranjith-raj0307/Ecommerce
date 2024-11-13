<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>


<%

String a=request.getParameter("name");
Date d=new Date();

String a1=session.getAttribute("username").toString();
if(a!=null)
{

try
{
	Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/besantproject","root","Ranjith@0307");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from padd1 where pname='"+a+"' ");
    while(rs.next())
    {%>
    <form action="#" method="post">
        <h5>username</h5><input type="text"  value=<%=a1 %> name="n5">
    	
    	<h5>Productname</h5><input type="text" value=<%= rs.getString(2) %> name="n1">
    	<h5>Productprice</h5><input type="text" value=<%= rs.getString(3) %> name="n2">
    	<h5>address</h5>
    	<input type="text" name="n3">
    	<h5>quantity</h5>
    	<input type="text" name="n4">
    	
    	<h5>payment mode</h5>
    	<input type="text" name="n6">
    	
    	<h5>order date</h5>
    	<input type="text"  value="<%=d.toString() %>" name="n7">
    	
    	
    	<input type="submit">
    	
    	</form>
    <% }
	
}
catch(Exception e)
{
	out.println(e);
}

	
}




%>


</body>
</html>