<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>Processed Topics</title>
</head>

<body>
	<c:forEach items="${opTp}" var="opTp">
		<table border="1">
			<col width="120" valign="top">
			<col width="240" valign="top">
			<tr>
				<td>Operator Login:</td>

				<td>${opTp.opName}</td>
			</tr>
			<tr>
				<td>User Login:</td>
				<td>${opTp.username}</td>
			</tr>
			<tr>
				<td>User Toggle:</td>
				<td>${opTp.toggle}</td>
			</tr>
			<tr>
				<td>Problem:</td>
				<td>${opTp.problem}</td>
			</tr>
			<tr>
				<td align="left" valign="top">Description:</td>
				<td>${opTp.description}</td>
			</tr>
			<tr>
				<td>User Adress</td>
				<td>${opTp.adress}</td>
			</tr>
			<tr>
				<td>Date:</td>
				<td>${opTp.date}</td>
			</tr>
			<tr>
				<spring:url value="/deletePdTp?id=${opTp.id}" var="delete" />
				<td><form:form action="${delete}" method="post">
						<input type="hidden" name="_method" value="DELETE" />
						<input id="submit" value="Delete Topic" type="submit">
					</form:form></td>
				<spring:url value="/operatorTp?id=${opTp.id}" var="edit" />
				<td><form:form action="${edit}" method="post">
						<input id="submit" value="Edit Topic" type="submit">
					</form:form></td>
			</tr>
		</table>
		<br />
		<br />
	</c:forEach>

	<spring:url value="/exit" var="exit" />
	</br>
	<form:form action="${exit}" method="GET">
		<input id="submit" value="Log Out" type="submit">
	</form:form>
</body>
</html>