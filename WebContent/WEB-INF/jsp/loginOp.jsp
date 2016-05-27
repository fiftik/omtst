<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>Login page</title>
</head>
<body>
	<spring:url value="/loginOp/check" var="logincheckurl" />
	<form:form action="${logincheckurl}" id="loginOp" commandName="operators"
		method="post">

		<form:input id="login" placeholder="Login" autofocus="" required=""
			type="text" path="login" />
		<form:input id="password" placeholder="Password" required=""
			type="password" path="password" />
		</br>
		<form:errors cssStyle="color: red;" path="login" />
		</br>

		<input id="submit" value="Войти" type="submit">
	</form:form>
</body>
</html>