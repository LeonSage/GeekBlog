





<!DOCTYPE html>
<html lang="en">
<head>
    <title>Sign up</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>SpringMVC 添加用户</title>

    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <meta name="keywords" content="Flat Dark Web Login Form Responsive Templates, Iphone Widget Template, Smartphone login forms,Login form, Widget Template, Responsive Templates, a Ipad 404 Templates, Flat Responsive Templates" />
    <link href="/loginCSS/styleRegister.css" rel='stylesheet' type='text/css' />


    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>


<script>$(document).ready(function(c) {
    $('.close').on('click', function(c){
        $('.login-form').fadeOut('slow', function(c){
            $('.login-form').remove();
        });
    });
});

function openwin() {

    window.open ("index.html", "newwindow",
        "height=400, width=400, toolbar=no, " +
        "menubar=no, scrollbars=no, resizable=no, " +
        "location=no, status=no")

    //写成一行

}
</script>


<div class="login-form">
    <div class="close"> </div>
    <div class="head-info">
        <label class="lbl-1"> </label>
        <label class="lbl-2"> </label>
        <label class="lbl-3"> </label>
    </div>
    <div class="clear"> </div>

    <form action="/signUp" method="post" autocomplete="on" enctype="multipart/form-data">

        <input id="nickname" name="nickname" type="text" class="text" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" >


        <input  id="firstName" name="firstName" type="firstName" class="firstName" value="First name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" >


        <input id="lastName" name="lastName" type="lastName" class="lastName" value="Last name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" >


        <!-- <input id="introduction" name="introduction"  type="inTroduction" class="inTroduction" value="Self introduction" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" > -->



        <textarea id="introduction" name="introduction" rows="4" cols= "40">
          Self introduction here.
        </textarea>



        <input id="password" name="password" type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}">


        <input type="submit" value="Sign Up"/>


        <div class="container">

            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" href="#collapse1">Select your profile image</a>
                        </h4>
                    </div>
                    <div id="collapse1" class="panel-collapse collapse">
                        <ul class="list-group">



                            <li class="list-group-item"> <input type="checkbox" name="profileImgAddress" value="/loginImages/1.jpeg">  <br><img   src="/loginImages/1.jpeg" height="82" width="82" /></li>
                            <li class="list-group-item"> <input type="checkbox" name="profileImgAddress" value="/loginImages/2.jpeg">  <br><img   src="/loginImages/2.jpeg" height="82" width="82" /></li>
                            <li class="list-group-item"> <input type="checkbox" name="profileImgAddress" value="/loginImages/3.jpeg">  <br><img   src="/loginImages/3.jpeg" height="82" width="82" /></li>
                            <li class="list-group-item"> <input type="checkbox" name="profileImgAddress" value="/loginImages/4.jpeg">  <br><img   src="/loginImages/4.jpeg" height="82" width="82" /></li>
                            <li class="list-group-item"> <input type="checkbox" name="profileImgAddress" value="/loginImages/5.jpeg">  <br><img   src="/loginImages/5.jpeg" height="82" width="82"/></li>
                            <li class="list-group-item"> <input type="checkbox" name="profileImgAddress" value="/loginImages/6.jpeg">  <br><img   src="/loginImages/6.jpeg" height="82" width="82"/></li>
                            <li class="list-group-item"> <input type="checkbox" name="profileImgAddress" value="/loginImages/7.jpeg">  <br><img   src="/loginImages/7.jpeg" height="82" width="82"/></li>
                            <li class="list-group-item"> <input type="checkbox" name="profileImgAddress" value="/loginImages/8.jpeg">  <br><img   src="/loginImages/8.jpeg" height="82" width="82"/></li>
                            <li class="list-group-item"> <input type="checkbox" name="profileImgAddress" value="/loginImages/9.jpeg">  <br><img   src="/loginImages/9.jpeg" height="82" width="82"/></li>
                            <li class="list-group-item"> <input type="checkbox" name="profileImgAddress" value="/loginImages/10.jpeg">  <br><img   src="/loginImages/10.jpeg" height="82" width="82"/></li>
                            <li class="list-group-item"> <input type="checkbox" name="profileImgAddress" value="/loginImages/11.jpeg">  <br><img   src="/loginImages/11.jpeg" height="82" width="82"/></li>
                            <li class="list-group-item"> <input type="checkbox" name="profileImgAddress" value="/loginImages/12.jpeg">  <br><img   src="/loginImages/12.jpeg" height="82" width="82"/></li>
                            <li class="list-group-item"> <input type="checkbox" name="profileImgAddress" value="/loginImages/13.jpeg">  <br><img   src="/loginImages/13.jpeg" height="82" width="82"/></li>

                        </ul>
                    </div>
                </div>
            </div>

        </div>
    </form>






</div>


</body>
</html>
