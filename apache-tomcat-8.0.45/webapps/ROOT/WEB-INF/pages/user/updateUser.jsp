<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
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
                        <a href="/admin/blogs">My Blogs</a>
                    </li>
                    <li>
                        <a href="/commonViewUser">Geekers</a>
                    </li>
                    <li>
                        <a href="/about">About</a>
                    </li>
                    <li>
                        <a href="/admin/users/update/${id}">Setting</a>
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
                    <h1>Setting</h1>
                    <form:form action="/admin/users/updateP" method="post" commandName="userP" role="form">
                        <font color="#00008b"/>
                        <div class="form-group">
                            <label for="firstName"> Nickname:</label>
                            <input type="text" class="form-control" id="nickname" name="nickname" placeholder="Enter Nickname:"
                                   value="${user.nickname}"/>
                        </div>
                        <div class="form-group">
                            <label for="firstName">First Name:</label>
                            <input type="text" class="form-control" id="firstName" name="firstName" placeholder="Enter FirstName:"
                                   value="${user.firstName}"/>
                        </div>
                        <div class="form-group">
                            <label for="lastName">Last Name:</label>
                            <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Enter LastName:"
                                   value="${user.lastName}"/>
                        </div>
                        <div class="form-group">
                            <label for="password">Password:</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password:"
                                   value="${user.password}"/>
                        </div>
                        <!-- 把 id 一并写入 userP 中 -->
                        <input type="hidden" id="id" name="id" value="${user.id}"/>

                        <div class="form-group">
                            <button type="submit" class="btn btn-sm btn-success">Submit</button>
                        </div>
                    </form:form>
                </div>
            </article>


        </div>
        <!-- SIDEBAR -->
        <div class="s-12 l-3">
            <aside>

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