<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="el.jsp" %>
<s:url value="/resources/css/" var="css" />
<s:url value="/resources/js/" var="js" />
<s:url value="/resources/img" var="img" />
<link href="${css}bootstrap.css" rel="stylesheet">
<link href="${css}bootstrap-glyphicons.css" rel="stylesheet">
<link href="${css}dataTables.bootstrap.css" rel="stylesheet">
<link href="${css}dataTables.bootstrap.min.css" rel="stylesheet" >
<script type="text/javascript" src="${js}jquery-3.1.1.js"></script>
<script type="text/javascript" src="${js}bootstrap.min.js"></script>
<script type="text/javascript" src="${js}jquery.dataTables.js"></script>
<script type="text/javascript" src="${js}modernizr-2.6.2.min.js"></script>
<script type="text/javascript" src="${js}mytable.js"></script>
</head>
<body >
<%@include file="navbar.jsp" %>
<br><br><br><br><br>
<div>
<table id="mytable" class="table table-responsive">

  <thead>
<th>id</th>
<th>name</th>
<th>description</th>
<th>image</th>
<th>Action</th>
</thead>

</table>
</div>
 <%@include file="footer.jsp" %> 
</body>
</html>