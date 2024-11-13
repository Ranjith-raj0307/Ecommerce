<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String a=request.getParameter("n1");
try
{
Cookie ck=new Cookie("user",a); 
response.addCookie(ck);
ck.setMaxAge(0); //delete the cookies

}
catch(Exception e)
{
	
}
  

%>

<form action="displaycookies.jsp" method="post">

<input type="submit">
</form>


</body>
</html>