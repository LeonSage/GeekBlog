<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

</head>
<body>



<div style="padding:20px;margin-top:30px;height:1500px;">
    <h1> ${logedUsr.firstName} 's personal blog </h1>

    <h2>Id:</h2>

    <p>${logedUsr.id}</p>

    <h2>Last Name:</h2>

    <p>${logedUsr.lastName}</p>

    <h2>First Name:</h2>

    <p>${logedUsr.firstName}</p>

    <h2>Profile img:</h2>

    <img src="${basePath}${logedUsr.profileImgAddress}">

</div>

</body>
</html>