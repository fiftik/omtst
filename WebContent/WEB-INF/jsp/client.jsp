<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>Client</title>
</head>

<body>
	<h2>${users.login}</h2>
	<c:forEach items="${usTp}" var="usTp">
		<a href='<c:url value="/userTopic?id=${usTp.id}"/>'>&rarr;</a> &nbsp	${usTp.toggle} &nbsp - &nbsp ${usTp.description}</br>
		${usTp.adress}
	</br>
		</br>
	</c:forEach>

	<spring:url value="/exit" var="exit" />
	</br>
	<form:form action="${exit}" method="GET">
		<input id="submit" value="Log Out" type="submit">
	</form:form>
</body>
</html>