<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${department}</h1>
	
	<p>Il dipartimento ${department} è presente nei seguenti ospedali:</p>

	<c:forEach var="hospital" items="${hospitals}">
		<p>${hospital.name}</p>
	</c:forEach>


</body>
</html>