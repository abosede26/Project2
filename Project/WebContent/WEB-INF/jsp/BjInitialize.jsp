<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% 
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache"); 
    response.setDateHeader ("Expires", 0);  
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BJ Log-In Initialize Page</title>
</head>
<body>
<%
if((session.getAttribute("userName"))!=null&&(session.getAttribute("password")!=null))
{

%>
<center>
<p>Welcome <%= session.getAttribute("userName")%> </p><a href="BjExclusiveLogout.jsp">Logout</a>
<br><br><a href="BjExclusiveLogout.jsp">Logout</a>
</center>
</body>
<%
}
else 
{
%>
<jsp:forward page="BjExclusiveLogIn.jsp"/>
<%
}
%>

</html>