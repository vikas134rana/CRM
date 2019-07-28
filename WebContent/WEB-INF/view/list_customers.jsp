<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>

<head>
<title>List Customers</title>

<!-- reference our style sheet -->

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

			<input type="button" class="add-button"
				onclick="window.location.href='form'; return false;"
				value="Add Customer">

			<!--  add our html table here -->

			<table class="list">
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Actions</th>
				</tr>

				<!-- loop over and print our customers -->
				<c:forEach var="tempCustomer" items="${customers}">

					<c:url var="updateLink" value="/customer/updateForm">
						<c:param name="id" value="${tempCustomer.id}"></c:param>
					</c:url>

					<c:url var="deleteLink" value="/customer/delete">
						<c:param name="id" value="${tempCustomer.id}"></c:param>
					</c:url>

					<tr>
						<td>${tempCustomer.firstName}</td>
						<td>${tempCustomer.lastName}</td>
						<td>${tempCustomer.email}</td>
						<td><a href="${updateLink}">Update</a> &nbsp; <a href="${deleteLink}">delete</a> </td>
					</tr>

				</c:forEach>

			</table>

		</div>

	</div>


</body>

</html>









