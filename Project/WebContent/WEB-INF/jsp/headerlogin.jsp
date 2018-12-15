<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<nav id="nav">
						<ul class="links">
							<li class="active"><a href="fine.jsp">Home</a></li>
							 <li><a href="updatespringclient.jsp">Update</a></li>
							<li><a href="fine.jsp">Add Client</a></li>
							
							<%
if((session.getAttribute("userName"))!=null&&(session.getAttribute("password")!=null))
{

%>

Welcome <%= session.getAttribute("userName")%> <li><a href="BjExclusiveLogout.jsp">Logout</a></li>

<%
}
else 
{
%>
		<!--  <li><a href="BjExclusiveLogIn.jsp">Log In</a></li>-->
<%
}
%>


					
						</ul>
					
					</nav>
					
</body>
</html>