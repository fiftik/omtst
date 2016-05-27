<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>Client Topic</title>
</head>

<body>
	<h2>${userTopics.username}</h2>

		${userTopics.toggle} &nbsp - &nbsp ${userTopics.description}</br>
		${userTopics.adress}
	</br>
		</br>
	
	<spring:url value="/deleteTopic?id=${userTopics.id}" var="dlTp" />
	</br>
	<form:form action="${dlTp}" method="post">
		<input type="hidden" name="_method" value="DELETE" />
		<input id="submit" value="Delete Topic" type="submit">
	</form:form>

	<spring:url value="/exit" var="exit" />
	</br>
	<form:form action="${exit}" method="GET">
		<input id="submit" value="Log Out" type="submit">
	</form:form>
</body>
</html>