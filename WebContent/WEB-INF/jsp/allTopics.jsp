<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>Topics</title>
</head>

<body>
	<h2>Possible Problem</h2>
	<table border="1">
		<c:forEach items="${topics}" var="topics">
			<tr>
				<td>${topics.topic} <br />
				</td>
			</tr>
		</c:forEach>
	</table>
	<spring:url value="/exit" var="exit" />
	<br />
	<form:form action="${exit}" method="GET">
		<input id="submit" value="Log Out" type="submit">
	</form:form>
</body>
</html>