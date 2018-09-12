<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	 href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>

<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="col-sm-12">
		<h3>Welcome!</h3>
		<hr>
		<p>Spring Security Demo</p>
		<hr>
		<p>User: <sec:authentication property="principal.username"/>
		<br>
		Roles: <sec:authentication property="principal.authorities"/>
		</p>
		<hr>
		<sec:authorize access="hasRole('MANAGER')">
			<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a>
		</sec:authorize>
		
		<br>
		<sec:authorize access="hasRole('ADMIN')">
			<a href="${pageContext.request.contextPath}/systems">IT System Page</a>
		</sec:authorize>
		<br>
		<form:form action="${pageContext.request.contextPath}/logout" method="POST">
			<input type="submit" value="Logout" class="btn btn-danger">
		</form:form>
	</div>
</body>
</html>