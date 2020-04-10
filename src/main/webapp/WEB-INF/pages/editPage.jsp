<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <c:if test="${empty user.login}">
        <title>Add</title>
    </c:if>
    <c:if test="${!empty user.login}">
        <title>Edit</title>
    </c:if>
</head>
<body align="center">
<c:if test="${empty user.login}">
    <c:url value="/admin/add" var="var"/>
</c:if>
<c:if test="${!empty user.login}">
    <c:url value="/admin/edit" var="var"/>
</c:if>
<form action="${var}" method="POST">
    <c:if test="${!empty user.login}">
        <input type="hidden" name="id" value="${user.id}">
    </c:if>
    <label for="Login">Login</label>
    <input type="text" name="Login" id="Login" value="${user.login}">
    <label for="Password">Password</label>
    <input type="text" name="Password" id="Password" value="${user.password}">
    <label for="Role">Role</label>
    <input type="text" name="Role" id="Role">
    <c:if test="${empty user.login}">
        <input type="submit" value="Add new user">
    </c:if>
    <c:if test="${!empty user.login}">
        <input type="submit" value="Edit user">
    </c:if>

    <h4><a href="<c:url value="/logout"/>">Exit</a></h4>
</form>
</body>
</html>
