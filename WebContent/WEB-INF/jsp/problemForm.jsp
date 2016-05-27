<%@page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Problem Form</title>
</head>
<body>
	<spring:url value="/sendProblem" var="sendProblem" />
	<%--<table>
		<tr>
			<td>Ваш логин:</td>
			<td><c:out value="${users.login}" /></td>
		</tr>
		<tr>
			<td>Ваш пароль:</td>
			<td><c:out value="${users.password}" /></td>
		</tr>
		<tr>
			<td>Ваш E-mail:</td>
			<td><c:out value="${users.email}" /></td>
		</tr>
	</table>

 
	<form:form action="${go}" method="post" id="profile"
		commandName="users">
		<input type="hidden" name="_method" value="put" />
		<table>
			<tr>
				<td>ID:</td>
				<td><form:input id="id" placeholder="Id" autofocus=""
						required="" type="text" path="id" value="${users.id}" /></td>
			</tr>
			<tr>
				<td>Login:</td>
				<td><form:input id="login" placeholder="Login" autofocus=""
						required="" type="text" path="login" value="User1" /></td>
				</br>
			</tr>
			<tr>
				<td>Password:</td>
				<td><form:input id="password" placeholder="Password" autofocus=""
						required="" type="text" path="password" value="user1" /></td>
				</br>
			</tr>
		</table>
		<input id="submit" value="GO" type="submit">
	</form:form>--%>


	<form:form action="${sendProblem}" method="post" commandName="usersTopics">
		<table>
			<tr>
				<td>Your login:</td>
				<td><input id="username" name="username" value="${users.login}"
					size="30" readonly="readonly"></td>
			</tr>
			<tr>
				<td>Your toggle:</td>
				<td><input id="toggle" name="toggle" size="30"></td>
			</tr>
			<tr>
				<td valign="top">Describe your</br> problem:
				</td>
				<td><input id="description" name="description" size="30"
					style="height: 100px"></td>
			</tr>
			<tr>
				<td valign="top">Your adress:</td>
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
	</br>
	<form:form action="${exit}" method="GET">
		<input id="submit" value="Log Out" type="submit">
	</form:form>
</body>
</html>