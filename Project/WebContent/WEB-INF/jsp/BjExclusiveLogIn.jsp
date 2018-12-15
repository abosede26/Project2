<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BJ Log-In Page</title>
</head>
<body>
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
							<form action="UserValidation.jsp" method="post">
 
        User Name:<input type="text" name="userName" placeholder="User Name"/><br/>
        Password:<input type="password" name="password" placeholder="Password"/><br/>
        Language: <select name="language">
            <option>Hindi</option>
            <option>English</option>
            <option>French</option>
        </select> <br/>
        <input type="submit" value="login"/>
 
    </form>

						
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