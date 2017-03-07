<%@ page isELIgnored="false" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:url var="css" value="/resources/css"/>
<spring:url var="img" value="/resources/img"/>
<spring:url var="js" value="/resources/js"/>
		
		<!-- Bootstrap CSS -->
		<link href="${css}/bootstrap.min.css" rel="stylesheet">
		<link href="${css}/bootstrap-glyphicons.css" rel="stylesheet">
		
		<!-- Custom CSS -->
		<link rel="stylesheet" href="${css}/styles.css">
		
		<!-- Include Modernizr in the head, before any other Javascript -->
		<script src="${js}/modernizr-2.6.2.min.js"></script>
		
		<!-- All Javascript at the bottom of the page for faster page loading -->
		
	<!-- First try for the online version of jQuery-->
	<script src="http://code.jquery.com/jquery.js"></script>
	
	<!-- If no online access, fallback to our hardcoded version of jQuery -->
	<script>window.jQuery || document.write('<script src="includes/js/jquery-1.8.2.min.js"><\/script>')</script>
	
	<!-- Bootstrap JS -->
	<script src="${js}/bootstrap.min.js"></script>
	
	<!-- Custom JS -->
	<script src="${js}/script.js"></script>
		
