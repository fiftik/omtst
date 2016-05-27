<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>Processed Topic Form</title>
</head>

<body>
	<spring:url value="/addNewTopic" var="addNewTopic" />
	<h2>New Topic Form</h2>

	<form:form action="${addNewTopic}" method="post"
		commandName="OperatorTopics">
		<table border="1">
			<tr>
				<td>Operator login:</td>
				<td><input id="opName" name="opName" value="${oprs.login}"
					size="30" readonly="readonly"></td>
			</tr>
			<tr>
				<td>User login:</td>
				<td><input id="username" name="username" size="30"></td>
			</tr>
			<tr>
				<td>User toggle:</td>
				<td><input id="toggle" name="toggle" size="30"></td>
			</tr>
			<tr>
				<td><label for="problem">Choose problem:</label></td>

				<td><select name="problem" id="problem">
						<c:forEach items="${topics}" var="topics">
							<option>${topics.topic}</option>
						</c:forEach>
				</select></td>
			</tr>
			<tr>
				<td valign="top">Describe user<br/> problem:
				</td>
				<td><input id="description" name="description" size="30"
					style="height: 100px"></td>
			</tr>
			<tr>
				<td valign="top">User adress:</td>
				<td><input id="adress" name="adress" size="30"
					style="height: 50px"></td>
			</tr>
			<tr>
				<td></td>
				<td><input id="submit" value="Отправить" type="submit" /></td>
			</tr>
		</table>
	</form:form>


	<spring:url value="/exit" var="exit" />
	<br/>
	<form:form action="${exit}" method="GET">
		<input id="submit" value="Log Out" type="submit">
	</form:form>
</body>
</html>