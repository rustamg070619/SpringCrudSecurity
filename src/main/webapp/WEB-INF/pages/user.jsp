<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: rustemrustem
  Date: 07.04.2020
  Time: 20:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<h1> Login is ${user.login} </h1>

<h1> Password is ${user.password} </h1>

<h1> Role is ${user.roles} </h1>

<h4><a href="<c:url value="/logout"/>">Exit</a></h4>

</body>
</html>
