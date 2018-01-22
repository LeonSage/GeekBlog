<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Geek Blog - Add Comment</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="/assets/css/main.css" />
</head>

<body>

<form:form action="/admin/blogs/${id}/AddC" method="post" >
   <div align = "center">
       <section id="banner">
           <h1>Comment</h1>
       </section>
       <hr />

<div class="6u$ 12u$(medium)" >
<div class="12u$">


    <textarea id="content" name="content" rows="3" placeholder="Please Input Comment"></textarea>
</div>
<div class="12u$">
    <input class="form-control" id='bid' name="bid" type="hidden" value="${cBlog.id}"/>
    <input class="form-control" id='author' name="author" type="hidden" value="${nickName}"/>
</div>
    <ul></ul>
    <div class="12u$">
        <a class="actions">
            <input type="submit" value="Submit" /><a></a>
            <input type="reset" value="Reset" class="alt" />
        </a>
</div>
</div>
    <hr />
    </div>
</form:form>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>
</body>
</html>