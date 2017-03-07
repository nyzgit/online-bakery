<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="el.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CAKES</title>
</head>
<body>
	<%@include file="navbar.jsp"%><br>
	<br>
	<br>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>CAKES</th>
				<th><img src="${img}/c1.jpg" alt="cakes" height="70" width="70"></th>
				<th><button type="button" class="btn btn-primary">VIEW</button>
					<button type="button" class="btn btn-primary">ADD TO CART</button></th>
			</tr>
		</thead>
		<thead>
			<tr>
				<th>CUPCAKES</th>
				<th><img src="${img}/c2.jpg" alt="cakes" height="70" width="70"></th>
				<th><a href="cupcake.jsp"><button type="button"
							class="btn btn-primary">VIEW</button></a>
					<button type="button" class="btn btn-primary">ADD TO CART</button></th>
			</tr>
		</thead>
	</table>

</body>

</html>