<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>Login page</title>
</head>
<spring:url value="/loginOp" var="loginOp" />
<spring:url value="/loginUs" var="loginUs" />
<body>
				<a href="${loginOp}">Operator</a>
				<a href="${loginUs}">User</a>
</body>
</html>