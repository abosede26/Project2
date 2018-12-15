<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@include file="Header.jsp" %>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper" class="fade-in">

				<!-- Intro -->
					<div id="intro">
						<h1>This is<br />
						BJ Exclusive Braids</h1>
						<p>Call Ms. B. for your edible hair styles at glance; we will make you pretty at affordable price.</p>
						<ul class="actions">
							<li><a href="#header" class="button icon solo fa-arrow-down scrolly">Continue</a></li>
						</ul>
					</div>

				<!-- Header -->
					<header id="header">
						<a href="index.html" class="logo">Book Your Hair Appointment Now!</a>
					</header>

				<!-- Nav -->
				
				<%@include file="headerlogin.jsp" %>

				<!-- Main -->
					<div id="main">

						<!-- Featured Post -->
							<h3>New Spring Client</h3>
            <form:form action="addspringclient.jsp" method="GET" modelAttribute="client">
	        <form:hidden path="id"/>
	            Client First Name : <form:input path="fname"/><br/>
	            Client Last Name : <form:input path="lname"/><br/>
	            Client Phone: <form:input path="phone"/><br/>
	            Appointment Date : <form:input path="date"/> <br/>
	            Appointment Time : <form:input path="time"/> <br/>
	            Product Name : <form:input path="productName"/> <br/>
	            Product Description : <form:input path="productDescpt"/> <br/>
	            Price : <form:input path="price"/> <br/>
	            Country : <form:input path="country"/><br/>
	            <input type="submit" value="Save"/>
           </form:form>
                         <br/><center> <form action="clientslist.jsp" method="GET">
	                      <input type="submit" value="Get Clients List "/>
</form></center>><br/>
          
						<!-- Footer -->
							<footer>
								<div class="pagination">
									<!--<a href="#" class="previous">Prev</a>-->
									<a href="#" class="page active">1</a>
									<a href="#" class="page">2</a>
									<a href="#" class="page">3</a>
									<span class="extra">&hellip;</span>
									<a href="#" class="page">8</a>
									<a href="#" class="page">9</a>
									<a href="#" class="page">10</a>
									<a href="#" class="next">Next</a>
								</div>
							</footer>

					</div>
<%@include file="Footer.jsp" %> 
				
				<!-- Copyright -->
					<div id="copyright">
						<ul><li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li></ul>
					</div>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>




</body>
</html>