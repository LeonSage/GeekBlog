<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width" />
    <title>Geek Blog</title>
    <meta name="description" content="Geek Blog"/>
    <meta name="keywords" content="Geek Blog"/>
    <link rel="stylesheet" href="/css/components.css">
    <link rel="stylesheet" href="/css/responsee.css">
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
                <!-- text -->
                <div class="post-text">
                    <h1>About Me</h1>
                    <img src="${user.profileImgAddress}" alt="Fashion">
                    <p>
                        ${user.introduction}
                    </p>
                </div>
            </article>


        </div>
        <!-- SIDEBAR -->
        <div class="s-12 l-3">
            <aside>
                <!-- LATEST POSTS -->
                <div class="aside-block margin-bottom">
                    <h3>Latest posts</h3>
                    <c:forEach items="${blogList}" var="blogs">
                        <a class="latest-posts" href="/admin/show/${blogs.id}">
                            <h5>${blogs.title}</h5>
                            <p>
                                <c:set var = "content" value = "${blogs.content}" />
                                <c:set var = "subContent" value = "${fn:substring(content, 0, 200)}" />
                                    ${subContent}...
                            </p>
                        </a>
                    </c:forEach>
                </div>
            </aside>
        </div>
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
</body>
</html>