<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Menu</title>
</head>
<body>
	<form method="post" action="navigationServlet">
		<table>
			<c:forEach items="${requestScope.allItems}" var="currentitem">
			<tr>
				<td><input type="radio" name="id" value="${currentitem.id}"></td>
				<td>${currentitem.type}</td>
				<td>${currentitem.quantity}</td>
			</tr>
			</c:forEach>	
		</table>
		<input type="submit" value="edit" name="doThisToItem">&nbsp;&nbsp;&nbsp;
		<input type="submit" value="delete" name="doThisToItem">&nbsp;&nbsp;&nbsp;
		<input type="submit" value="add" name="doThisToItem">
	</form>
</body>
</html>