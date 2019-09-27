<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Item</title>
</head>
<body>
	<form action = "editItemServlet" method= "post" > 
		Food Type: <input type="text" name="type" value= "${itemToEdit.type}" > 
		Quantity: <input type="text" name="quantity" value= "${itemToEdit.quantity}" > 
		<input type="hidden" name="id" value="${itemToEdit.id}" > 
		<input type="submit" value="Save Item" > 
	</form>

</body>
</html>