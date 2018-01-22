
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>



<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">


    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <meta name="keywords" content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
    <link href="/loginCSS/style.css" rel='stylesheet' type='text/css' />
    <link href="https://fonts.googleapis.com/css?family=Press+Start+2P" rel="stylesheet">

</head>
<body>
<script>$(document).ready(function(c) {
    $('.close').on('click', function(c){
        $('.login-form').fadeOut('slow', function(c){
            $('.login-form').remove();
        });
    });
});
</script>
<h1>GEEK BLOG</h1>
<div class="login-form">
    <div class="close"> </div>
    <div class="head-info">
        <label class="lbl-1"> </label>
        <label class="lbl-2"> </label>
        <label class="lbl-3"> </label>
    </div>
    <div class="clear"> </div>
    <div class="avtar">
        <img src="/loginImages/avtar.png" />
    </div>


    <form action="/login" method="post" autocomplete="on" enctype="multipart/form-data">
        <input id="username" name="username" type="text" class="text" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" >
        <div class="key">
            <input id="password"  name="password" type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">
        </div>

        <a class="reg" href="/registration"><span></span>   Create an account</a>
        <div class="signin" href="/login" >
            <input  type="submit" value="Login" >
        </div>

    </form>









</div>
</body>
</html>







<%--<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>

<%--<c:set var="contextPath" value="${pageContext.request.contextPath}"/>--%>



<%--<!DOCTYPE html>--%>
<%--<html lang="en">--%>
<%--<head>--%>

    <%--<meta charset="utf-8">--%>
    <%--<meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <%--<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->--%>
    <%--<meta name="description" content="">--%>
    <%--<meta name="author" content="">--%>


    <%--<title>Login</title>--%>
    <%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <%--<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>--%>
    <%--<meta name="keywords" content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />--%>
    <%--<link href="/loginCSS/style.css" rel='stylesheet' type='text/css' />--%>
    <%--<!--webfonts-->--%>
    <%--<link href='http://fonts.useso.com/css?family=PT+Sans:400,700,400italic,700italic|Oswald:400,300,700' rel='stylesheet' type='text/css'>--%>
    <%--<link href='http://fonts.useso.com/css?family=Exo+2' rel='stylesheet' type='text/css'>--%>
    <%--<!--//webfonts-->--%>
    <%--<script src="http://ajax.useso.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>--%>
<%--</head>--%>
<%--<body>--%>
<%--<script>$(document).ready(function(c) {--%>
    <%--$('.close').on('click', function(c){--%>
        <%--$('.login-form').fadeOut('slow', function(c){--%>
            <%--$('.login-form').remove();--%>
        <%--});--%>
    <%--});--%>
<%--});--%>
<%--</script>--%>
<%--<!--SIGN UP-->--%>
<%--<h1>klasikal Login Form</h1>--%>
<%--<div class="login-form">--%>
    <%--<div class="close"> </div>--%>
    <%--<div class="head-info">--%>
        <%--<label class="lbl-1"> </label>--%>
        <%--<label class="lbl-2"> </label>--%>
        <%--<label class="lbl-3"> </label>--%>
    <%--</div>--%>
    <%--<div class="clear"> </div>--%>
    <%--<div class="avtar">--%>
        <%--<img src="/loginImages/avtar.png" />--%>
    <%--</div>--%>


    <%--<form action="/login" method="post" autocomplete="on">--%>
        <%--<input id="username" name="username" type="text" class="text" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" >--%>
        <%--<div class="key">--%>
            <%--<input id="password"  name="password" type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">--%>
        <%--</div>--%>

        <%--<a  href="/registration"><span></span>   Create an account</a>--%>

        <%--<div class="signin" href="/login" >--%>
            <%--<input  type="submit" value="Login" >--%>
        <%--</div>--%>

    <%--</form>--%>









<%--</div>--%>
<%--<div class="copy-rights">--%>
    <%--<p >Copyright &copy; 2015.Company name All rights reserved.</p>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>