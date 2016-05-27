<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>Client Topic</title>
</head>

<body>
	<spring:url value="/editTopic" var="edit" />
	<form:form action="${edit}" method="post">
		<input type="hidden" name="_method" value="PUT" />
		<input type="hidden" id="id" name="id" value="${opTopic.id}" />
		<table border="1">
			<col width="120" valign="top">
			<col width="240" valign="top">
			<tr>
				<td>Operator Login:</td>

				<td><input id="opName" name="opName" value="${opTopic.opName}"
					size="30" readonly="readonly"></td>
			</tr>
			<tr>
				<td>User Login:</td>
				<td><input id="username" name="username" size="30"
					value="${opTopic.username}"></td>
			</tr>
			<tr>
				<td>User Toggle:</td>
				<td><input id="toggle" name="toggle" size="30"
					value="${opTopic.toggle}"></td>
			</tr>
			<tr>
				<td>Problem:</td>
				<td><select name="problem" id="problem">
						<c:forEach items="${topics}" var="topics">
							<option>${topics.topic}</option>
						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<td align="left" valign="top">Description:</td>
				<td><input id="description" name="description" size="30"
					style="height: 100px" value="${opTopic.description}"></td>
			</tr>
			<tr>
				<td>User Adress</td>
				<td><input id="adress" name="adress" size="30"
					style="height: 50px" value="${opTopic.adress}"></td>
			</tr>
		</table>

		
		<br />

		<input id="submit" value="Save Topic" type="submit">
	</form:form>

	<spring:url value="/exit" var="exit" />
	<br />
	<form:form action="${exit}" method="GET">
		<input id="submit" value="Log Out" type="submit">
	</form:form>
</body>
</html>