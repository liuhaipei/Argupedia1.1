<%--
  Created by IntelliJ IDEA.
  User: HAPPY
  Date: 05/07/2016
  Time: 15:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
；

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--<link rel="icon" href="../../favicon.ico">-->
    <title>Welcome to Argupedia System</title>

    <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap theme -->
    <link href="bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">

    <link href="//cdn.bootcss.com/font-awesome/4.3.0/css/font-awesome.css" rel="stylesheet">
    <script src="//cdn.bootcss.com/geopattern/1.2.3/js/base64.min.js"></script>
    <script src="//cdn.bootcss.com/geopattern/1.2.3/js/typedarray.min.js"></script>

    <!-- Styles for this page -->
    <link href="Stylesheet/stylesheet.css" rel="stylesheet">
</head>

<body class="home-template" role="document">
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Argupedia System</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="#about">About</a></li>
                <li><a href="#contact">Contact</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                       aria-expanded="false">Dropdown <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Action</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li class="dropdown-header">Nav header</li>
                        <li><a href="#">Separated link</a></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li>
                    <%--<a href="#">Login</a>--%>
                    <a id="login" href="#login_container" role="button" class="btn" data-toggle="modal">Login</a>
                </li>
                <li>
                    <a href="#">Register</a>
                </li>
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</nav>

<header class="site-header jumbotron">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <h1>Argupedia System</h1>

                <p>Some description here.
                    <br>
                </p>

                <form class="" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control search clearable"
                               placeholder="Search any tags here, like: middle east">
                        <i class="fa fa-search">
                        </i>
                    </div>
                </form>
            </div>
        </div>
    </div>
</header>

<div class="container protocal-notice">
    <div class="row">
        <div class="col-xs-12 hidden-xs">

            <form class="form-inline pull-right">
                <label>Didn't find what you are interested in?, try to </label>
                <button type="submit" class="btn btn-inverse">create a new argument</button>
            </form>
        </div>
    </div>
</div>

<div class="container">
    <div class="listpanel">
        <div class="row">
            <div class="col-md-10 column">
                <div class="list-group packages">
                    <h4>Top Search Arguments</h4>
                    </br>


                    <s:iterator id="argument" value="#request.allArguments">
                        <s:property value="#argument.aid"/>
                        <s:property value="#argument.topic"/>
                        testtesttesttesttest
                    </s:iterator>

                    <a href="/*/" class="package list-group-item" data-library-name="bootstrap" target="_blank"
                       onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'bootstrap'])">
                        <div class="row">
                            <div class="col-md-3"><h4 class="package-name">Middle East</h4></div>
                            <div class="col-md-9 hidden-xs"><p class="package-description">We should invade
                                Iraq</p>
                            </div>
                            <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i
                                    class="fa fa-star"></i> agree: 0   disagree: 0</span></div>
                        </div>
                    </a>
                    <a href="/*/" class="package list-group-item" data-library-name="bootstrap" target="_blank"
                       onclick="_hmt.push(['_trackEvent', 'packages', 'click', 'bootstrap'])">
                        <div class="row">
                            <div class="col-md-3"><h4 class="package-name">Traffic camera</h4></div>
                            <div class="col-md-9 hidden-xs"><p class="package-description">We should biuld more
                                traffic
                                camera</p></div>
                            <div class="package-extra-info col-md-9 col-md-offset-3 col-xs-12"><span><i
                                    class="fa fa-star"></i> agree: 0   disagree: 0</span></div>
                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-2 column">
                <h4>Top Search Tags</h4>

                <h4>
                    <span class="label label-default">Default</span></br>
                    <span class="label label-primary">Primary</span></br>
                    <span class="label label-success">Success</span></br>
                    <span class="label label-info">Info</span></br>
                    <span class="label label-warning">Warning</span></br>
                    <span class="label label-danger">Danger</span>
                </h4>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="login_container" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">
                    Log In
                </h4>
            </div>
            <div class="modal-body">
                <form role="form">
                    <div class="form-group">
                        <label for="exampleInputEmail">Email address</label><input type="email" class="form-control"
                                                                                   id="exampleInputEmail"/>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputPassword">Password</label><input type="password" class="form-control"
                                                                                 id="exampleInputPassword"/>
                    </div>
                    <div class="checkbox">
                        <label><input type="checkbox"/>Save email address and password.</label>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">return</button>
                <button type="button" class="btn btn-default">login</button>
            </div>
        </div>

    </div>

</div>

<footer id="footer" class="footer hidden-print">
    <div class="container">
        <div class="row">
            <div class="footer-about col-md-12 col-sm-12" id="about"><h4>About argupedia project</h4>

                <p>Some description here
                </p>

                <p></p>

                <p>Email：liuhappy.nju@gmail.com</p></div>

        </div>
    </div>
    <div class="copy-right"><span>&copy; JUN/2016-SEP/2016</span> developed by Haipei Liu</span></div>
</footer>

<a href="#" id="back-to-top"><i class="fa fa-angle-up"></i></a>
<script src="//cdn.bootcss.com/jquery/3.0.0/jquery.min.js"></script>
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script src="//cdn.bootcss.com/geopattern/1.2.3/js/geopattern.min.js"></script>
<script src="//cdn.bootcss.com/zeroclipboard/2.2.0/ZeroClipboard.min.js"></script>
<script src="//cdn.bootcss.com/localforage/1.4.2/localforage.min.js"></script>
<script src="/assets/js/site.min.js"></script>


</body>
</html>

