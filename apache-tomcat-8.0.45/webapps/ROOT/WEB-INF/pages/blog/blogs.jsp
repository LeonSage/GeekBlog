<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en-US">
<head>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 10px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }

        fieldset {
            overflow: hidden
        }

        .some-class {
            float: left;
            clear: none;
        }

        label {
            float: left;
            clear: none;
            display: block;
            padding: 2px 5em 0 0;
        }

        input[type=radio],
        input.radio {
            float: left;
            clear: none;
            margin: 2px 0 0 2px;
        }
    </style>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width" />
    <title>Blog Home</title>
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
                        <a href="/admin/blogs/add">Add Blog</a>
                    </li>
                    <li>
                        <a href="/aboutUs">About</a>
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
<section id="home-section" class="line">
    <div class="margin">

        <form:form action="/admin/blogs/search/ " method="get" role="form">

            <div class="form-group">
                <input type="text" class="form-control" id="search" name="search" placeholder="Enter Keywords:"/>
            </div>

            <div class="form-group">
                <fieldset>
                    <div class="some-class">
                        <input type="radio" class="radio" name="choose"  value="option1" id="option1" checked />
                        <label for="option1">All</label>
                        <input type="radio" class="radio" name="choose" value="option2" id="option2" />
                        <label for="option2">Database</label>
                        <input type="radio" class="radio" name="choose" value="option3" id="option3" />
                        <label for="option3">Operating System</label>
                        <input type="radio" class="radio" name="choose" value="option4" id="option4" />
                        <label for="option4">Algorithm</label>
                        <input type="radio" class="radio" name="choose" value="option5" id="option5" />
                        <label for="option5">C++</label>
                        <input type="radio" class="radio" name="choose" value="option6" id="option6" />
                        <label for="option6">HTML</label>
                    </div>
                </fieldset>
            </div>

            <div class="form-group">
                <button type="submit" style="color:rgb(70,70,70)" class="btn btn-sm btn-success">Search</button>
                <a href="/admin/blogs/add" type="button" class="btn btn-sm btn-success ">Add your own articles</a>
            </div>



        </form:form>
        <!-- ARTICLES -->
        <div class="s-12 l-9">
            <c:forEach items="${blogList}" var="blogs">
                <c:set var="ID" value="${blogs.id}"/>
                <c:if test="${ID mod 2 == '1'}">
                    <article class="post-${blogs.id mod 5} line">
                        <!-- image -->
                        <div class="s-12 l-6 post-image">
                            <a href="/admin/blogs/show/${blogs.id}">
                                <img src="/img/blog_4.jpg" alt="Fashion 1">
                            </a>
                        </div>
                        <!-- text -->
                        <div class="s-12 l-5 post-text">
                            <a href="/admin/blogs/show/${blogs.id}">
                                <h2>${blogs.title}</h2>
                                <h1>${blogs.type}</h1>
                            </a>
                            <a href="/admin/blogs/show/${blogs.id}" type="button" class="btn btn-sm btn-success">Detail</a>
                            <a href="/admin/blogs/update/${blogs.id}" type="button" class="btn btn-sm btn-warning">Update</a>
                            <a href="/admin/blogs/delete/${blogs.id}" type="button" class="btn btn-sm btn-danger">Delete</a>
                        </div>
                        <!-- date -->
                        <div class="s-12 l-1 post-date">
                            <p class="date">${blogs.pubDate.date}</p>
                            <p class="month">${blogs.pubDate.month+1}</p>
                        </div>
                    </article>
                </c:if>
                <c:if test="${ID mod 2 == '0'}">
                    <article class="post-${blogs.id mod 5} right-align line">
                        <!-- image -->
                        <div class="s-12 l-6 post-image">
                            <a href="/admin/blogs/show/${blogs.id}">
                                <img src="/img/blog_4.jpg" alt="Fashion 1">
                            </a>
                        </div>
                        <!-- text -->
                        <div class="s-12 l-5 post-text">
                            <a href="/admin/blogs/show/${blogs.id}">
                                <h2>${blogs.title}</h2>
                                <h1>${blogs.type}</h1>
                            </a>

                            <a href="/admin/blogs/show/${blogs.id}" type="button" class="btn btn-sm btn-success">Detail</a>
                            <a href="/admin/blogs/update/${blogs.id}" type="button" class="btn btn-sm btn-warning">Update</a>
                            <a href="/admin/blogs/delete/${blogs.id}" type="button" class="btn btn-sm btn-danger">Delete</a>

                        </div>
                        <!-- date -->
                        <div class="s-12 l-1 post-date">
                            <p class="date">${blogs.pubDate.date}</p>
                            <p class="month">${blogs.pubDate.month+1}</p>
                        </div>
                    </article>
                </c:if>

            </c:forEach>
        </div>
        <!-- SIDEBAR -->
        <div class="s-12 l-3">
            <aside>

            </aside>
        </div>
    </div>
</section>
<!-- FOOTER -->
<<div class="line">
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