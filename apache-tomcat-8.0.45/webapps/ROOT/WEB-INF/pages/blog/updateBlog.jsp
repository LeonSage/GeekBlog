<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en-US">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0"/>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/codemirror.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.6.0/css/froala_editor.pkgd.min.css" rel="stylesheet" type="text/css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.6.0/css/froala_style.min.css" rel="stylesheet" type="text/css" />

    <title>Update Blog</title>
    <meta name="description" content="Download free amazing responsive Fashion Blog template."/>
    <meta name="keywords" content="free, responsive, blog, fashion"/>
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
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
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
                        <a target="_blank" href="https://www.facebook.com/myresponsee">
                            <i class="icon-facebook_circle icon2x"></i>
                        </a>
                        <a target="_blank" href="https://twitter.com/MyResponsee">
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
                    <h1>Update your articles</h1>
                    <div class="container">
                        <form:form class="customform" action="/admin/blogs/updateP" method="post" commandName="blogP" role="form">
                            <div class="form-group">
                                <label for="title">Title:</label>
                                <input type="text" class="form-control" id="title" name="title" placeholder="Enter Title:" value="${blog.title}"/>
                            </div>

                            <div class="form-group">
                                <label for="type">Type</label>
                                <select class="form-control" id="type" name="type" value="${blog.type}">
                                    <option>Database</option>
                                    <option>Operating System</option>
                                    <option>Algorithm</option>
                                    <option>C++</option>
                                    <option>HTML</option>
                                </select>
                            </div>

                            <div class="form-group">

                                <label for="froala-editor">Content:</label>

                                <textarea rows="150" cols="50" class="form-control" id="froala-editor" name="content" rows="3" placeholder="Please Input Content">${blog.content}</textarea>

                            </div>

                            <div class="form-group">
                            <script>
                                window.onload = function(){
                                    function getDate(){
                                        debugger;
                                        var today = new Date();
                                        var date;
                                        date = (today.getFullYear()) +"-" + (today.getMonth() + 1 ) + "-" + today.getDate();

                                        return date;
                                    }
                                    window.setInterval(function(){
                                        document.getElementById("pubDate").value=getDate();
                                    }, 1000);
                                }
                                //

                            </script>
                            <label for="pubDate">Publish Date:</label>
                            <input type="text" class="form-control" id="pubDate" name="pubDate" value=""/>



                            <input type="hidden" id="id" name="id" value="${blog.id}"/>
                            <div class="form-group">
                                <button type="submit" class="btn btn-sm btn-success">UPDATE</button>
                            </div>
                        </form:form>
                    </div>
                </div>
            </article>
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

<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/codemirror.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/codemirror/5.25.0/mode/xml/xml.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/froala-editor/2.6.0//js/froala_editor.pkgd.min.js"></script>

<script>
    $(function() {
        $('textarea#froala-editor').froalaEditor()
    });

</script>
</html>