<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%-- <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<s:url value="/resources/css/" var="css" />
<s:url value="/resources/js/" var="js" />
<s:url value="/resources/img" var="img" />
<link href="${css}bootstrap.css" rel="stylesheet">
<link href="${css}bootstrap-glyphicons.css" rel="stylesheet">
<script type="text/javascript" src="${js}bootstrap.min.js"></script>
<script type="text/javascript" src="${js}modernizr-2.6.2.min.js"></script>
<title>My Landing Page</title>
<%@include file="el.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container">
		<table class="table tale-bordered">


			<td class="col-sm-6 col-md-6"><img src="${img}/${product.id}.jpg" class="img-circle"/> <%-- ${imgs}/${product.id} +".jpg" --%>
			</td>
			<td class="col-sm-6 col-md-6">
				<table>
					<tr height="100px">
						<td width="50%"><B>Product Name:</B></td>
						<td align="center">${product.name}</td>
					</tr>
					<tr height="100px">
						<td><b>Product Description</b></td>
						<td align="center">${product.description }</td>
					</tr>
					<tr>
						<td align="center"><button class="btn btn-success">Add
								To Cart</button></td>
					</tr>
				</table>
			</td>
		</table>

	</div>
	<%@include file="footer.jsp"%>
</body>
</html>