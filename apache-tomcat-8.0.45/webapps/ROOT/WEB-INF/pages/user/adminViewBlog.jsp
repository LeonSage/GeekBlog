<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width" />
    <title>Geek Blog</title>
    <meta name="description" content="Geek Blog"/>
    <meta name="keywords" content="Geek Blog"/>
    <link rel="stylesheet" href="css/components.css">
    <link rel="stylesheet" href="css/responsee.css">
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- CUSTOM STYLE -->
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,700&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/template-style.css">
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="js/modernizr.js"></script>
    <script type="text/javascript" src="js/responsee.js"></script>
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
<section id="home-section" class="line">
    <div class="margin">
        <!-- ARTICLES -->
        <div class="s-12 l-9">
            <c:forEach items="${blogList}" var="blogs">
                    <article class="margin-bottom">
                        <div class="post-${blogs.id mod 5} line">
                            <!-- image -->
                            <div class="s-12 l-11 post-image">
                                <a href="/admin/show/${blogs.id}"><img src="/img/post${blogs.id mod 4}-big.jpg" alt="Fashion"></a>
                            </div>
                            <!-- date -->
                            <div class="s-12 l-1 post-date">
                                <p class="date">${blogs.pubDate.date}</p>
                                <p class="month">${blogs.pubDate.month}</p>
                            </div>
                        </div>
                        <!-- text -->
                        <div class="post-text">
                            <a href="/admin/show/${blogs.id}">
                                <h2>${blogs.title}</h2>
                            </a>
                            <p>
                                    ${blogs.userByUserId.firstName} ${blogs.userByUserId.lastName}
                            </p>

                            <p>
                                <c:set var = "content" value = "${blogs.content}" />
                                <c:set var = "subContent" value = "${fn:substring(content, 0, 200)}" />
                                ${subContent} ...
                            </p>
                            <a href="/admin/show/${blogs.id}" type="button" class="btn btn-sm btn-success">Detail</a>
                            <a href="/admin/delete/${blogs.id}" type="button" class="btn btn-sm btn-danger">Delete</a>
                        </div>
                    </article>
            </c:forEach>
        </div>
        <!-- SIDEBAR -->
        <div class="s-12 l-3">
            <aside>
                <!-- NEWS 1 -->
                <img src="img/news1.jpg" alt="News 1">
                <div class="aside-block margin-bottom">
                    <h3>This is the first news on blog</h3>
                    <p>The goal of Geek blog is to build a discussion or informational website platform published on the World Wide Web consisting of mass information, or called posts, which created and disseminated by people, organizations. This news and articles published by free media people are displayed on the web page in reverse chronological order, from late to early. Users will operate their blog as their personal home page with contents editing, posts managing and collections annotating. This is to aid users to efficiently and rationally develop their own blog of specific themes in a personalized way. Through this website, bloggers do not only produce content to post on their blogs but also often build social relations with their readers and other bloggers. In that sense, Geek blog can be seen as a form of social networking service.
                    </p>
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