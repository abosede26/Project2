<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><% 
response.setHeader("Cache-Control","no-store"); 
response.setHeader("Pragma","no-cache"); 
response.setDateHeader ("Expires", 0);  
%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bj Exclusive Braids Log-Out Page</title>
</head>
<body>
<%
String usNam = (String)session.getAttribute("userName");
if(usNam!=null)
    {
       out.println(usNam+" loged out, <a href=\"Bj_index.jsp\">Back to Home Page</a>");
        session.removeAttribute("userName");
        session.removeAttribute("password");
        session.invalidate();
    }
 else
     {
     out.println("You are already not login <a href=\"Bj_index.jsp\">Back to Home Page</a>");
 }

%>
<% 
response.sendRedirect("Bj_index.jsp");
%>
</body>
</html>