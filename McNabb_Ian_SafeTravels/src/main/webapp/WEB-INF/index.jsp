<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isErrorPage="true" %>
    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

<title>Save Travels</title>
</head>
<body>
<h1 class="text-center">Save Travels</h1>

<table class="table table-striped table-hover table-secondary">
	<thead>
		<tr>
			<th class="text-center">Expense</th>
			<th class="text-center">Vendor</th>
			<th class="text-center">Amount</th>
			<th class="text-center">Actions</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="expense" items="${expenses}">
			<tr>
				<td class="text-center"><a href="/expenses/<c:out value="${expense.id}"></c:out>"><c:out value="${expense.name}"></c:out></a></td>
				<td class="text-center"><c:out value="${expense.vendor}"></c:out></td>
				<td class="text-center">$<fmt:formatNumber type="number" minFractionDigits="2" value="${expense.amount}"/></td>
				<td class="text-center"><a href="/expenses/edit/${expense.id}">Edit</a> || <a href="/expenses/delete/${expense.id}">Delete</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<br>
<div class="border-top border-black border-solid m-5"></div>
	<div class="bg-dark-subtle p-5 col-3 my-auto mx-auto">
	<h1 class="text-dark">Add Expense</h1>
		<form:form action="/expenses" method="post" modelAttribute="expense">
		
			<div class="col-6 p-2">
				<form:label class="form-label" path="name">Expense Name:</form:label>
				<form:errors path="name" class="text-danger"/>
				<form:input class="form-control" path="name"/>
			</div>
			<div class="col-6 p-2">
				<form:label class="form-label" path="vendor">Vendor Name:</form:label>
				<form:errors path="vendor" class="text-danger"/>
				<form:input class="form-control" path="vendor"/>
			</div>	
			<div class="col-4 p-2">
				<form:label class="form-label" path="amount">Expense Amount:</form:label>
				<form:errors path="amount" class="text-danger"/>
				<form:input class="form-control" path="amount" type="text" data-type="currency" placeholder="$000.00"/>
			</div>
			<div class="col-12 p-2">
				<form:label class="form-label" path="description">Description:</form:label>
				<form:errors path="description" class="text-danger"/>
				<form:textarea class="form-control" path="description"/>
			</div>
			
			<div>
				<input class="btn btn-success col-2 p-2 m-2" type="submit" value="Submit"/>
			</div>
		
		</form:form>
	</div>

</body>
</html>