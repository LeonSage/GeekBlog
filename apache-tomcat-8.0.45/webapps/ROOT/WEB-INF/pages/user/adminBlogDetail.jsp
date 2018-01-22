<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width" />
    <title>Blog Details</title>
    <meta name="description" content="Download free amazing responsive Fashion Blog template."/>
    <meta name="keywords" content="free, responsive, blog, fashion"/>
    <link rel="stylesheet" href="/css/components.css">
    <link rel="stylesheet" href="/css/responsee.css">
    <link rel="stylesheet" href="/assets/css/main.css" />
    <title>Blog Detail</title>
    <!-- CUSTOM STYLE -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="/css/template-style.css">
    <script type="text/javascript" src="/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="/js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="/js/modernizr.js"></script>
    <script type="text/javascript" src="/js/responsee.js"></script>
    <!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->


</head>
<body class="size-1140">
<!-- TOP NAV WITH LOGO -->
<header class="margin-bottom">
    <div class="line">
        <nav>
            <div class="top-nav">
                <p class="nav-text"></p>
                <a class="logo">
                    Geek<span>Blog</span>
                </a>
                <h1>Blog for Geekers!</h1>
                <ul class="top-ul right">
                    <li>
                        <a href="/adminViewBlog">Blogs</a>
                    </li>
                    <li>
                        <a href="/adminViewUser">Users</a>
                    </li>
                    <li>
                        <a href="/aboutUs">About</a>
                    </li>
                    <li>
                        <a href="/">Log Out</a>
                    </li>
                    <div class="social right">
                        <a target="_blank" href="https://www.facebook.com/">
                            <i class="icon-facebook_circle icon2x"></i>
                        </a>
                        <a target="_blank" href="https://twitter.com/">
                            <i class="icon-twitter_circle icon2x"></i>
                        </a>
                    </div>
                </ul>
            </div>
        </nav>
    </div>
</header>
<!-- MAIN SECTION -->
<section id="article-section" class="line">
    <div class="margin">
        <!-- ARTICLES -->
        <div class="s-12 l-9">
            <!-- ARTICLE 1 -->
            <article class="margin-bottom">
                <div class="post-1 line">
                    <!-- image -->
                    <div class="s-12 l-11 post-image">
                        <img src="/img/post1-big.jpg" alt="Fashion">
                    </div>
                    <!-- date -->
                    <div class="s-12 l-1 post-date">
                        <p class="date">${blog.pubDate.date}</p>
                        <p class="month">${blog.pubDate.month}</p>
                    </div>
                </div>
                <!-- text -->
                <div class="post-text">
                    <h1>${blog.title}</h1>
                    <text>${blog.content}</text>
                </div>
                <div class="row 200%">
                    <div class="6u 12u$(medium)">
                        <c:if test="${!empty BlogComment}">
                            <c:forEach items="${BlogComment}" var="comment">
                                <hr />
                                <h4>${comment.author}</h4>
                                <h5><fmt:formatDate value="${comment.pubDate}" pattern="yyyy-MM-dd"/></h5>
                                <p>${comment.content}</p>
                            </c:forEach>
                        </c:if>
                    </div>
                </div>
            </article>


        </div>
        <!-- SIDEBAR -->
    </div>
</section>


<!-- FOOTER -->
<div class="line">
    <footer>
        <div class="s-12 l-8">
            <p>
                Copyright 2017, Vision Design - Elec5619 Blog Team<br>

            </p>
        </div>
        <div class="s-12 l-4">
            <a class="right">Design and coding<br>
                by Elec5619 Blog Team
            </a>
        </div>
    </footer>
</div>


<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>
</body>

</html>