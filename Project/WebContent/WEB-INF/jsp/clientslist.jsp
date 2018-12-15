<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Clients List</title>
</head>
<%@include file="Header.jsp" %>
	<body class="is-preload">

		<!-- Wrapper -->
			<div id="wrapper" class="fade-in">

				<!-- Intro -->
					<div id="intro">
						<h1>This is<br />
						BJ Exclusive Braids</h1>
						<p>Call Ms. B. for your edible hair styles at glance</p>
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
							<article class="post featured">
								<header class="major">
				
	<h1> Clients List</h1>
	<table width="371" border="1">
	<tr>
	<th>Client ID</th>
	<th>Client First Name</th>
	<th>Client Last Name</th>
	
	</tr>
	<c:forEach var="client" items="${clientsList}">
<form action="getclientdetails.jsp"  method="get">
	<tr>
	<td><input name="id" type=hidden value="${client.id}" /></td>
	<td>${client.fname}</td>
	<td>${client.lname}</td>
	<td><input type="submit" value="See details" ></td>
	</form>
	<td><a href="deletespringclient.jsp?helloID=${client.id}"><input type="submit" value="Delete" ></a></td>

	</tr>
	
	</c:forEach>

	</table>
	
	Above should display the list of clients in the system...

<form action="newspringclient.jsp" method="get">
	<input type="submit" value="Add a new Spring Client"><br/>
</form>

								</header>
								<a href="#" class="image main"><img src="images/pic01.jpg" alt="" /></a>
								<ul class="actions special">
									<li><a href="#" class="button large">Lemonade Feed-In Braids</a></li>
								</ul>
							</article>

						<!-- Posts -->
							<section class="posts">
								<article>
									<header>
										<span class="date">September 26, 2018</span>
										<h2><a href="#">Protective Hairstyle<br />
										For Porche Bebes</a></h2>
									</header>
									<a href="#" class="image fit"><img src="images/pic02.jpg" alt="" /></a>
                                    <p>Senegalese Hand-Made Crochet Twist is a protective hairstyle for all types of natural hair. Starting Price $75.00</p>
									<ul class="actions special">
										<li><a href="#" class="button">Senegalese Twist In Updo</a></li>
									</ul>
								</article>
								<article>
									<header>
										<span class="date">September 26, 2018</span>
										<h2><a href="#">Quick Weave<br />
										With Closure</a></h2>
									</header>
									<a href="#" class="image fit"><img src="images/pic03.jpg" alt="" /></a>
                                    <p>Sew-in weave with closure is another protective hairstyle. Starting Price $70.00.
                                    A hairdo for ladies with 100% natural hair. It comes in different curls and lengths.</p>
									<ul class="actions special">
										<li><a href="#" class="button">Sew-In With Closure</a></li>
									</ul>
								</article>
								<article>
									<header>
										<span class="date">September 27, 2018</span>
										<h2><a href="#">Crochet In Weave<br />
										Protective Style/h2>
									</header>
									<a href="#" class="image fit"><img src="images/pic04.jpg" alt="" /></a>
                                    <p>Crochet weave with invisible closure is another protective hairstyle. Starting Price $100.00.  
                                    Hairdo for ladies with 100% natural hair. It comes in different curls and lengths.</p>
									<ul class="actions special">
										<li><a href="#" class="button">Deep Body Wave</a></li>
									</ul>
								</article>
								<article>
									<header>
                                        <span class="date">September 27, 2018</span>
										<h2><a href="#">Kids braids<br />
										Protective Styles</a></h2>
									</header>
									<a href="#" class="image fit"><img src="images/pic05.jpg" alt="" /></a>
                                    <p>Cornrows is another protective hairstyle. Starting Price $40.00. 
                                     A protective hairdo for kids from age 5 with 100% natural hair.</p>
									<ul class="actions special">
										<li><a href="#" class="button">Kids Cornrows</a></li>
									</ul>
								</article>
								<article>
									<header>
                                        <span class="date">September 27, 2018</span>
										<h2><a href="#">Protective Hairstyle<br />
										Water Set</a></h2>
									</header>
									<a href="#" class="image fit"><img src="images/pic06.jpg" alt="" /></a>
                                    <p>
                                        Box Braid Hand-Made single braids is a protective hairstyle for all types of natural hair.
                                        Starting Price $120.00. Also, this haistyles can be done in faux-loc.
                                    </p>
									<ul class="actions special">
										<li><a href="#" class="button">Box Braid</a></li>
									</ul>
								</article>
								<article>
									<header>
                                        <span class="date">September 27, 2018</span>
										<h2><a href="#">Natural Virgin<br />
										Hair Extention</a></h2>
									</header>
									<a href="#" class="image fit"><img src="images/pic07.jpg" alt="" /></a>
                                    <p>Sew-in weave with closure is another protective hairstyle. Starting Price $70.00. It is good for ladies with 100% natural hair. It comes in different curls and lengths.</p>
									<ul class="actions special">
										<li><a href="#" class="button">Peruvian Virgin Hair</a></li>
									</ul>
								</article>
							</section>

						<!-- Footer -->
							<footer>
								<div class="pagination">
									<!--<a href="#" class="previous">Prev</a>-->
									<a href="#" class="page active">1</a>
									<a href="#" class="page">2</a>
									<a href="headerlogin.jsp" class="page">3</a>
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