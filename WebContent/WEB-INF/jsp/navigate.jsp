<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>Navigation Menu</title>
</head>

<body>
	<spring:url value="/getTopics" var="getTopics" />
	<spring:url value="/getAllClients" var="getAllClients" />
	<spring:url value="/getAllProcessedTopics" var="getAllProcessedTopics" />
	<spring:url value="/newProcessedTopicForm?login=${operators.login}" var="newProcessedTopicForm" />
	
	Hi, ${operators.name}
	
	<form:form action="${getTopics}" method="GET">
		<input id="submit" value="All Topics" type="submit">
	</form:form>
	
	<form:form action="${getAllClients}" method="GET">
		<input id="submit" value="All Clients" type="submit">
	</form:form>
	
	<form:form action="${getAllProcessedTopics}" method="GET">
		<input id="submit" value="Processed Topics" type="submit">
	</form:form>
	
	<form:form action="${newProcessedTopicForm}" method="POST">
		<input id="submit" value="New Processed Topic Form" type="submit">
	</form:form>
	
	<spring:url value="/exit" var="exit" />
	</br>
	<form:form action="${exit}" method="GET">
		<input id="submit" value="Log Out" type="submit">
	</form:form>
</body>
</html>