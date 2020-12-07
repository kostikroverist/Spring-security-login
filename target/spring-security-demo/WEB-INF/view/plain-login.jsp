<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%--
  Created by IntelliJ IDEA.
  User: Костя
  Date: 07.12.2020
  Time: 13:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>


    <style>
        .failed{
            color:red;
        }
    </style>
</head>
<body>

<h3>My Custom Login Page</h3>

<form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">

    
    <!-- Check for login error-->
    
    <c:if test="${param.error != null}">
        <i class="failed">Sorry! You entered invalid username/password</i>
    </c:if>
    <P>
        User name : <input type="text" name="username"/>
    </P>

    <P>
        Password : <input type="password" name="password"/>
    </P>

    <input type="submit" value="Login"/>

</form:form>

</body>
</html>
