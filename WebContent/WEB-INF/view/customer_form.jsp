<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h2>
				<a href="${pageContext.request.contextPath}">CRM - Customer
					Relationship Manager</a>
			</h2>
		</div>
	</div>

	<div id="container">

		<div id="content">

			<h2>Add Customer</h2>

			<!--  add our html table here -->

			<form:form action="create" modelAttribute="customer" method="post">

				<form:hidden path="id"/>

				<table>
					<tr>
						<td>First Name</td>
						<td><form:input path="firstName" /></td>
					</tr>
					<tr>
						<td>Last Name</td>
						<td><form:input path="lastName" /></td>
					</tr>
					<tr>
						<td>Email</td>
						<td><form:input path="email" /></td>
					</tr>

					<tr>
						<td></td>
						<td><input type="submit" value="Save"></td>
					</tr>
				</table>
			</form:form>
		</div>

	</div>



</body>
</html>