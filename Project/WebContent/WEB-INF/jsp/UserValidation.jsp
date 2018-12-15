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
<title>Insert title here</title>
</head>
<body>
<% 
    String usNam=null,pw=null;
    try
    {
    session.setAttribute("usNam",null);
    session.setAttribute("pw",null);
    usNam=request.getParameter("userName");
    pw=request.getParameter("password");
    if(usNam.equals("kiran")&&pw.equals("kiran"))
    { 
     session.setAttribute("userName",usNam);
     session.setAttribute("password",pw);
    response.sendRedirect(request.getContextPath()+"/Bj_index.jsp");
    }
    else
    {
     %>
     <jsp:forward page="BjExclusiveLogIn.jsp"/>
     <%
    }
    }
    catch(Exception e)
    {
     System.out.println("errror"+e);
    }
    %>
</body>
</html>