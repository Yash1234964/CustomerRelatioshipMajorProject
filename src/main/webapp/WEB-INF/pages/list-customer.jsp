<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Customers</title>
<link  type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css"/>
<link  type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/css/add-customer-style.css"/>
</head>
<body>
	<div id="wrapper">
	     <div id="header">
	        <h2>CRM-Customer Relationship Manager</h2>
	     </div>	
	</div>
	
	<div id="container">
		<div id="content">
				<input type='button' value='Add Customer' 
				onclick="window.location.href='showForm'; return false;"
				class="add-button"/>
		
			<table>
				<tr>
				    <th>First Name</th>
				    <th>LAST Name</th>
				    <th>EMAIL</th>
				    <th>ACTION</th>
				</tr>
				<c:forEach var="customer" items="${customers}">
				
					<c:url var="updateLink" value="/customer/showFormForUpdate">
					     <c:param name="customerId" value="${customer.id}"/>
					</c:url>
					
					<c:url var="deleteLink" value="/customer/showFormForDelete">
					     <c:param name="customerId" value="${customer.id}"/>
					</c:url>
				   <tr>
				      <td>${customer.firstName}</td>
				      <td>${customer.lastName}</td>
				      <td>${customer.email}</td>
				      <td>
				      <a href='${updateLink}'>UPDATE</a>
				      <a href='${deleteLink}'
				         onclick="if(!(confirm('Are you sure you want to delete?'))) return false;">DELETE</a>
				      </td>
				   </tr>
				
				</c:forEach>
			
			</table>
		</div>
	
	</div>

</body>
</html>