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


<title>Expense Details</title>
</head>
<body>

<h1 class="text-center m-5">Expense Details</h1>

<div class="my-auto mx-auto col-2 border border-solid border-black flex">
	<table class="table table-striped table-hover table-secondary">
	
		<tbody>
		
			<tr>
				<td class="h3">Expense Name:</td>
				<td class="h4"><c:out value="${expense.name}"></c:out></td>
			</tr>
			
			<tr>
				<td class="h3">Vendor Name:</td>
				<td class="h4"><c:out value="${expense.vendor}"></c:out></td>
			</tr>
			
			<tr> 
				<td class="h3">Amount:</td>
				<td class="h4">$<fmt:formatNumber type="number" minFractionDigits="2" value="${expense.amount}"/></td>
			</tr>
			<tr>
				<td class="h3">Description:</td>
				<td class="h4"><c:out value="${expense.description}"></c:out></td>
			</tr>
		</tbody>
	</table>
	
</div>
<div class="text-center m-2"><a href="/expenses" class="btn btn-danger" type="submit">Go Back</a></div>
</body>
</html>