<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: c026nenua
  Date: 15.06.2017
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>WFH</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://apis.google.com/js/api:client.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <script>
        function signOut() {
            var auth2 = gapi.auth2.getAuthInstance();
            auth2.signOut().then(function () {
                console.log('User signed out.');
                window.location = "https://setwfh.appspot.com";
            });
        }
    </script>
    <style>

        body, html {
            background: #f0f0f0 url("caluti.png");
            background-repeat: no-repeat;

        }
        @font-face {
            font-family: raiff_bold;
            src: url('raiffeisen_ro-bold-webfont.ttf');
        }
        @font-face {
            font-family: raiff_regular;
            src: url('raiffeisen_ro-regular-webfont.ttf');
        }
        footer {
            background-color: #2d2d30;
            color: #f5f5f5;
            padding: 32px;
        }

        body {
            font: 400 15px Lato, sans-serif;
            line-height: 1.8;
            color: #818181;
        }
        .btn-primary {
            color: #fff;
            background-color: #b1b2a2;
            border-color: #2e6da4;
        }
        h2 {
            font-size: 24px;
            text-transform: uppercase;
            color: #303030;
            font-weight: 600;
            margin-bottom: 30px;
        }
        h4 {
            font-size: 19px;
            line-height: 1.375em;
            color: #303030;
            font-weight: 400;
            margin-bottom: 30px;
        }
        .bunvenit{
            font-size:25px;
            color:black;
            font-family: raiff_regular;

        }
        .font{
            font-family: raiff_regular;
        }
        .home{
            background-color: #fff200;
            color:black;

            font-family: raiff_regular;
            margin-right: 10px;

        }
        .nume{
            font-family: raiff_regular;
            padding-right: 40px;
            padding-left: 10px;
        }

        .home:hover{
            background-color: #fff98c;
            color:black;
            border-radius:6px;

        }
        .home:active{
            background-color: #efe301;
            color:black;

            margin-top:10px;
            margin-right:10px;


        }
        .color{

            background-color:rgba(234,234,234,1);
            color:black;
            width: 230px;
            margin-right: 1%;
            margin-top: 14px;
        }
        .search{
            color:#fff;
            background-color:#2c83dc;
            border-color:#2c83dc;
            height:33px;
            margin-top: 14px;
            margin-right: 17px;
            font-family: raiff_regular;
        }
        .search:active{
            color:#fff;
            background-color:#2072c5;
            border-color:#2c83dc;
            height:33px;
        }
        .search:hover{
            color:#fff;
            background-color: #3995f3;
            border-color:#2c83dc;
            height:33px;
        }
        .butonsetwfh{
            background-color: #f7f7f7;
            padding: 33px 93px;
            font-size: 18px;
            line-height: 1.33333;
            height: 72px;
            width: 187px;
        }
        .butonsetwfh:hover{
            background:white url("hoverWFH.png");
            background-repeat: no-repeat;
            align-items: center;
            padding: 33px 93px;
            font-size: 18px;
            line-height: 1.33333;
            background-position-x: center;
            background-position-y: center;
            height: 72px;
            width: 187px;
        }
        .butonsetwfh:active{
            background: #f0ffee url("active.png");
            background-repeat: no-repeat;
            align-items: center;
            padding: 33px 93px;
            font-size: 18px;
            line-height: 1.33333;
            background-position-x: center;
            background-position-y: center;
            height: 72px;
            width: 187px;
        }
        .butonsetwfhsetat{
            background: #e2fbdf url("WFH.png");
            background-repeat: no-repeat;
            align-items: center;
            padding: 33px 93px;
            font-size: 18px;
            line-height: 1.33333;
            background-position-x: center;
            background-position-y: center;
            height: 72px;
            width: 187px;
        }
        .butonnosetwfh:hover{
            background:  #f7f7f7 url("noWFH.png");
            background-repeat: no-repeat;

            padding: 33px 93px;
            font-size: 18px;
            line-height: 1.33333;
            background-position-x: center;
            background-position-y: center;
            height: 72px;
            width: 187px;
        }
        .butonnosetwfh{
            background:  #f7f7f7;;


            padding: 33px 93px;
            font-size: 18px;
            line-height: 1.33333;
            height: 72px;
            width: 187px;
        }
        .butonfaq{
            background-color: rgba(158, 158, 158, 0.2);
            color:black;
            font-family: raiff_regular;
            margin-right: 10px;


        }

        .butonfaq:hover{
            background-color:#8d8d8d;
            color:#3f51b5 !important;
            border-radius:6px;

        }
        .butonfaq:active{
            background-color: #8d8d8d;
            color:#3f51b5 !important;
            border-radius:6px;
            margin-right: 10px;

        }
        .border{
            border-color:#f0f0f0;
            border-style: solid;
            border-width: 2px;



        }


        .container-fluid {
            padding: 60px 50px;
        }

        .thumbnail img {
            width: 100%;
            height: 100%;
            margin-bottom: 10px;
        }

        .carousel-indicators li {
            border-color: #f4511e;
        }
        .carousel-indicators li.active {
            background-color: #f4511e;
        }
        .item h4 {
            font-size: 19px;
            line-height: 1.375em;
            font-weight: 400;
            font-style: italic;
            margin: 70px 0;
        }
        .item span {
            font-style: normal;
        }

        .panel-footer .btn:hover {
            border: 1px solid #f4511e;
            background-color: #fff !important;
            color: #f4511e;
        }

        .marime{
            height:72px;

        }
        .marime2{
            height:70px;

        }
        .navbar-nav{

            padding-top: 0px;
            padding-bottom: 0px;
        }

        .panel-footer h3 {
            font-size: 32px;
        }
        .panel-footer h4 {
            color: #aaa;
            font-size: 14px;
        }
        .panel-footer .btn {
            margin: 15px 0;
            background-color: #f4511e;
            color: #fff;
        }
        .bg{

            background-color: rgba(141, 141, 141, 0.08);
        }
        .divtotal{
            padding-left: 43%;
            width: 20px;


        }
        .navbar {
            margin-bottom: 0;
            background-color: #fff !important;
            z-index: 9999;
            border: 0;
            font-size: 12px !important;
            line-height: 1.42857143 !important;
            letter-spacing: 4px;
            border-radius: 0;
            font-family: Montserrat, sans-serif;
            box-shadow: 0px 0px 1px 1px rgba(0, 0, 0, 0.14), 0px 0px 2px 2px rgba(0, 0, 0, 0.098), 0px 0px 5px 1px rgba(0, 0, 0, 0.084);
        }
        .total{
            padding-left: 7%;
            padding-top: 11%;
            font-size: 17px;
        }
        .col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9 {
            position: relative;
            min-height: 1px;
            padding-right: 0px;
            padding-left: 0px;
        }
        .row{
            margin-right: 0px;
            margin-left: 0px;
        }

        /* navbar */
        .navbar-primary .navbar { background:#9f58b5; border-bottom:none; }
        .navbar-primary .navbar .nav > li > a {color: #501762;}
        .navbar-primary .navbar .nav > li > a:hover {color: #fff; background-color: #8e49a3;}
        .navbar-primary .navbar .nav .active > a,.navbar .nav .active > a:hover {color: #fff; background-color: #501762;}
        .navbar-primary .navbar .nav li > a .caret, .tnav .navbar .nav li > a:hover .caret {border-top-color: #fff;border-bottom-color: #fff;}
        .navbar-primary .navbar .nav > li.dropdown.open.active > a:hover {}
        .navbar-primary .navbar .nav > li.dropdown.open > a {color: #fff;background-color: #9f58b5;border-color: #fff;}
        .navbar-primary .navbar .nav > li.dropdown.open.active > a:hover .caret, .tnav .navbar .nav > li.dropdown.open > a .caret {border-top-color: #fff;}
        .navbar-primary .navbar .navbar-brand {color:#fff;}
        .navbar-primary .navbar .nav.pull-right {margin-left: 10px; margin-right: 0;}
        .navbar-xs .navbar-primary .navbar { min-height:28px; height: 28px; }
        .navbar-xs .navbar-primary .navbar .navbar-brand{ padding: 0px 12px;font-size: 16px;line-height: 28px; }
        .navbar-xs .navbar-primary .navbar .navbar-nav > li > a {  padding-top: 0px; padding-bottom: 0px; line-height: 28px; }
        .navbar-sm .navbar-primary .navbar { min-height:40px; height: 40px; }
        .navbar-sm .navbar-primary .navbar .navbar-brand{ padding: 0px 12px;font-size: 16px;line-height: 40px; }
        .navbar-sm .navbar-primary .navbar .navbar-nav > li > a {  padding-top: 0px; padding-bottom: 0px; line-height: 40px; }


        .navbar-default .navbar-toggle {
            border-color: transparent;
            color: #fff !important;
        }
        footer .glyphicon {
            font-size: 20px;
            margin-bottom: 20px;
            color: #f4511e;
        }

        .slideanim {visibility:hidden;}
        .slide {
            animation-name: slide;
            -webkit-animation-name: slide;
            animation-duration: 1s;
            -webkit-animation-duration: 1s;
            visibility: visible;
        }
        @keyframes slide {
            0% {
                opacity: 0;
                transform: translateY(70%);
            }
            100% {
                opacity: 1;
                transform: translateY(0%);
            }
        }
        @-webkit-keyframes slide {
            0% {
                opacity: 0;
                -webkit-transform: translateY(70%);
            }
            100% {
                opacity: 1;
                -webkit-transform: translateY(0%);
            }
        }
        @media screen and (max-width: 768px) {
            .col-sm-4 {
                text-align: center;
                margin: 25px 0;
            }
            .btn-lg {
                width: 100%;
                margin-bottom: 35px;
            }
        }
        @media screen and (max-width: 480px) {
            .logo {
                font-size: 150px;
            }
        }

    </style>
    <script>
        $(function(){
            var hash = window.location.hash;
            hash && $('ul.nav a[href="' + hash + '"]').tab('show');

            $('.nav-pills a').click(function (e) {
                $(this).tab('show');
                var scrollmem = $('body').scrollTop() || $('html').scrollTop();
                window.location.hash = this.hash;
                $('html,body').scrollTop(scrollmem);
            });
        });



        function NASort(a, b) {
            if (a.innerHTML == 'Echipa') {
                return 1;
            }
            else if (b.innerHTML == 'Echipa') {
                return -1;
            }
            return (a.innerHTML > b.innerHTML) ? 1 : -1;
        };

        $('select option').sort(NASort).appendTo('select');

    </script>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

<nav class="navbar navbar-default navbar-fixed-top ">



    <div class="navbar-header">

        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="/editInregistrari"><img src="sigla-noua.png" style="margin-top: -18px;height: 56px;"></a>
    </div>


    <div class="collapse navbar-collapse " id="myNavbar">
        <ul class="nav navbar-nav navbar-left">
            <li class="home"><a href="/editInregistrari">Acasa</a></li>
            <li class="butonfaq"><a href="/FAQ.jsp">FAQ</a></li>
            <li class="butonfaq"><a href="/ghiddeutilizare.jsp">Ghid utilizare</a></li>

        </ul>
        <ul class="nav navbar-nav navbar-right">
            <div class = "row">
                <div class = "col-md-12">
                    <a class="nume"> ${Name}</a>
                </div>

            </div>
            <div class = "row">
                <div class = "col-md-12">
                    <a href="index.jsp"  class="nume" onclick="signOut();">Logout</a>
                </div>

            </div>

        </ul>
        <ul class="nav navbar-nav navbar-right">
            <img src="${poza}" class="img-circle" alt="Cinque Terre" width="40" height="40" style=" margin-top: 4px;">

        </ul>


    </div>

</nav>

<br>
<br>
<br>


<h2>  </h2>

<div class = "container">
    <div class = "bunvenit">
        Bine ai venit ${Name} !

    </div>

</div>
<div class = "container">

    <div class="panel panel-default">
        <div class="">
            <div class = "row">

                <div class = "col-md-4">
                    <form method="POST" action="editInregistrari3">
                        <input type="hidden" name="email" value="${email}">
                        <input type="hidden" name="unitate" value="${unitate}">
                        <input type="hidden" name="poza" value="${poza}">
                        <div class="input-group">
                            <textarea class="form-control" id="comments" name="emails" placeholder="Cauta dupa adresa de e-mail" rows="1" style="margin-top: 13px;margin-left: 11px;width: 300px;height: 35px;">${emails}</textarea>

                            <div class="input-group-btn">
                                <button type="submit" class="btn search">
                                    <span class="glyphicon glyphicon-search"></span>
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
                <div class = "col-md-2">

                </div>

                <div class = "col-md-6 text-right">
                    <form method="POST" action="editInregistrari2">
                        <input type="hidden" name="email" value="${email}">
                        <input type="hidden" name="unitate" value="${unitate}">
                        <input type="hidden" name="poza" value="${poza}">


                        <select name="unit"class="btn color dropdown-toggle">
                            <option value="1" selected disabled>Echipa</option>
                            <c:forEach items="${unitlist}" var="unitlist">
                                <option value="${unitlist.unit}"><c:out value="${unitlist.unit} " /></option>
                            </c:forEach>
                        </select>

                        <button type="submit" class="btn search">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>
                    </form>
                </div>

            </div>





        </div>
    </div>

</div>


<!-- Modal 1 -->
<div class="modal fade" id="myModalrez" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <h4 class="modal-title"> Info </h4>
            </div>
            <div class="modal-body">
                <div class="alert alert-info">
                    <strong>Felicitari !</strong> WFH a fost setat
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>
<!-- Modal 1 -->
<div class="modal fade" id="myModalrez2" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <h4 class="modal-title"> Info </h4>
            </div>
            <div class="modal-body">
                <div class="alert alert-warning">
                    <strong>Felicitari !</strong> WFH a fost anulat
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>



<!-- Modal 1 -->
<div class="modal fade" id="Luni" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Total WFH din IT & PMO </h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th><i>Nume</i></th>
                        <th><i>Prenume</i></th>
                        <th><i>Departament</i></th>
                        <th><i>Echipa</i></th>
                        <th><i>Email</i></th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:if test="${not empty wfhluni}">

                        <c:forEach items ="${wfhluni}" var="w">
                            <tr>
                                <td>${w.last_name}</td>
                                <td>${w.first_name}</td>
                                <td>${w.department}</td>
                                <td>${w.unit}</td>
                                <td>${w.email}</td>


                            </tr>
                        </c:forEach>
                    </c:if>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>


<div class="modal fade" id="Luni2" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Total WFH din IT & PMO </h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th><i>Nume</i></th>
                        <th><i>Prenume</i></th>
                        <th><i>Departament</i></th>
                        <th><i>Echipa</i></th>
                        <th><i>Email</i></th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:if test="${not empty wfhluni2}">

                        <c:forEach items ="${wfhluni2}" var="w">
                            <tr>
                                <td>${w.last_name}</td>
                                <td>${w.first_name}</td>
                                <td>${w.department}</td>
                                <td>${w.unit}</td>
                                <td>${w.email}</td>


                            </tr>
                        </c:forEach>
                    </c:if>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>


<div class="modal fade" id="Luni3" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Total WFH din IT & PMO </h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th><i>Nume</i></th>
                        <th><i>Prenume</i></th>
                        <th><i>Departament</i></th>
                        <th><i>Echipa</i></th>
                        <th><i>Email</i></th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:if test="${not empty wfhluni3}">

                        <c:forEach items ="${wfhluni3}" var="w">
                            <tr>
                                <td>${w.last_name}</td>
                                <td>${w.first_name}</td>
                                <td>${w.department}</td>
                                <td>${w.unit}</td>
                                <td>${w.email}</td>


                            </tr>
                        </c:forEach>
                    </c:if>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>


<div class="modal fade" id="Luni4" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Total WFH din IT & PMO </h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th><i>Nume</i></th>
                        <th><i>Prenume</i></th>
                        <th><i>Departament</i></th>
                        <th><i>Echipa</i></th>
                        <th><i>Email</i></th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:if test="${not empty wfhluni4}">

                        <c:forEach items ="${wfhluni4}" var="w">
                            <tr>
                                <td>${w.last_name}</td>
                                <td>${w.first_name}</td>
                                <td>${w.department}</td>
                                <td>${w.unit}</td>
                                <td>${w.email}</td>


                            </tr>
                        </c:forEach>
                    </c:if>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>




<!-- Modal 1 -->
<div class="modal fade" id="Marti" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Total WFH din IT & PMO </h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th><i>Nume</i></th>
                        <th><i>Prenume</i></th>
                        <th><i>Departament</i></th>
                        <th><i>Echipa</i></th>
                        <th><i>Email</i></th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:if test="${not empty wfhmarti}">

                        <c:forEach items ="${wfhmarti}" var="w">
                            <tr>
                                <td>${w.last_name}</td>
                                <td>${w.first_name}</td>
                                <td>${w.department}</td>
                                <td>${w.unit}</td>
                                <td>${w.email}</td>


                            </tr>
                        </c:forEach>
                    </c:if>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>





<!-- Modal 1 -->
<div class="modal fade" id="Marti2" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Total WFH din IT & PMO </h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th><i>Nume</i></th>
                        <th><i>Prenume</i></th>
                        <th><i>Departament</i></th>
                        <th><i>Echipa</i></th>
                        <th><i>Email</i></th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:if test="${not empty wfhmarti2}">

                        <c:forEach items ="${wfhmarti2}" var="w">
                            <tr>
                                <td>${w.last_name}</td>
                                <td>${w.first_name}</td>
                                <td>${w.department}</td>
                                <td>${w.unit}</td>
                                <td>${w.email}</td>


                            </tr>
                        </c:forEach>
                    </c:if>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>




<!-- Modal 1 -->
<div class="modal fade" id="Marti3" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Total WFH din IT & PMO </h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th><i>Nume</i></th>
                        <th><i>Prenume</i></th>
                        <th><i>Departament</i></th>
                        <th><i>Echipa</i></th>
                        <th><i>Email</i></th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:if test="${not empty wfhmarti3}">

                        <c:forEach items ="${wfhmarti3}" var="w">
                            <tr>
                                <td>${w.last_name}</td>
                                <td>${w.first_name}</td>
                                <td>${w.department}</td>
                                <td>${w.unit}</td>
                                <td>${w.email}</td>


                            </tr>
                        </c:forEach>
                    </c:if>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>




<!-- Modal 1 -->
<div class="modal fade" id="Marti4" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Total WFH din IT & PMO </h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th><i>Nume</i></th>
                        <th><i>Prenume</i></th>
                        <th><i>Departament</i></th>
                        <th><i>Echipa</i></th>
                        <th><i>Email</i></th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:if test="${not empty wfhmarti4}">

                        <c:forEach items ="${wfhmarti4}" var="w">
                            <tr>
                                <td>${w.last_name}</td>
                                <td>${w.first_name}</td>
                                <td>${w.department}</td>
                                <td>${w.unit}</td>
                                <td>${w.email}</td>


                            </tr>
                        </c:forEach>
                    </c:if>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>

<!-- Modal 1 -->
<div class="modal fade" id="Miercuri" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Total WFH din IT & PMO </h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th><i>Nume</i></th>
                        <th><i>Prenume</i></th>
                        <th><i>Departament</i></th>
                        <th><i>Echipa</i></th>
                        <th><i>Email</i></th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:if test="${not empty wfhmiercuri}">

                        <c:forEach items ="${wfhmiercuri}" var="w">
                            <tr>
                                <td>${w.last_name}</td>
                                <td>${w.first_name}</td>
                                <td>${w.department}</td>
                                <td>${w.unit}</td>
                                <td>${w.email}</td>


                            </tr>
                        </c:forEach>
                    </c:if>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>



<!-- Modal 1 -->
<div class="modal fade" id="Miercuri2" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Total WFH din IT & PMO </h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th><i>Nume</i></th>
                        <th><i>Prenume</i></th>
                        <th><i>Departament</i></th>
                        <th><i>Echipa</i></th>
                        <th><i>Email</i></th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:if test="${not empty wfhmiercuri2}">

                        <c:forEach items ="${wfhmiercuri2}" var="w">
                            <tr>
                                <td>${w.last_name}</td>
                                <td>${w.first_name}</td>
                                <td>${w.department}</td>
                                <td>${w.unit}</td>
                                <td>${w.email}</td>


                            </tr>
                        </c:forEach>
                    </c:if>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>




<!-- Modal 1 -->
<div class="modal fade" id="Miercuri3" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Total WFH din IT & PMO </h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th><i>Nume</i></th>
                        <th><i>Prenume</i></th>
                        <th><i>Departament</i></th>
                        <th><i>Echipa</i></th>
                        <th><i>Email</i></th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:if test="${not empty wfhmiercuri3}">

                        <c:forEach items ="${wfhmiercuri3}" var="w">
                            <tr>
                                <td>${w.last_name}</td>
                                <td>${w.first_name}</td>
                                <td>${w.department}</td>
                                <td>${w.unit}</td>
                                <td>${w.email}</td>


                            </tr>
                        </c:forEach>
                    </c:if>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>




<!-- Modal 1 -->
<div class="modal fade" id="Miercuri4" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Total WFH din IT & PMO </h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th><i>Nume</i></th>
                        <th><i>Prenume</i></th>
                        <th><i>Departament</i></th>
                        <th><i>Echipa</i></th>
                        <th><i>Email</i></th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:if test="${not empty wfhmiercuri4}">

                        <c:forEach items ="${wfhmiercuri4}" var="w">
                            <tr>
                                <td>${w.last_name}</td>
                                <td>${w.first_name}</td>
                                <td>${w.department}</td>
                                <td>${w.unit}</td>
                                <td>${w.email}</td>


                            </tr>
                        </c:forEach>
                    </c:if>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>




<!-- Modal 1 -->
<div class="modal fade" id="Joi" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Total WFH din IT & PMO </h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th><i>Nume</i></th>
                        <th><i>Prenume</i></th>
                        <th><i>Departament</i></th>
                        <th><i>Echipa</i></th>
                        <th><i>Email</i></th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:if test="${not empty wfhjoi}">

                        <c:forEach items ="${wfhjoi}" var="w">
                            <tr>
                                <td>${w.last_name}</td>
                                <td>${w.first_name}</td>
                                <td>${w.department}</td>
                                <td>${w.unit}</td>
                                <td>${w.email}</td>


                            </tr>
                        </c:forEach>
                    </c:if>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>


<!-- Modal 1 -->
<div class="modal fade" id="Joi2" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Total WFH din IT & PMO </h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th><i>Nume</i></th>
                        <th><i>Prenume</i></th>
                        <th><i>Departament</i></th>
                        <th><i>Echipa</i></th>
                        <th><i>Email</i></th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:if test="${not empty wfhjoi2}">

                        <c:forEach items ="${wfhjoi2}" var="w">
                            <tr>
                                <td>${w.last_name}</td>
                                <td>${w.first_name}</td>
                                <td>${w.department}</td>
                                <td>${w.unit}</td>
                                <td>${w.email}</td>


                            </tr>
                        </c:forEach>
                    </c:if>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>


<!-- Modal 1 -->
<div class="modal fade" id="Joi3" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Total WFH din IT & PMO </h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th><i>Nume</i></th>
                        <th><i>Prenume</i></th>
                        <th><i>Departament</i></th>
                        <th><i>Echipa</i></th>
                        <th><i>Email</i></th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:if test="${not empty wfhjoi3}">

                        <c:forEach items ="${wfhjoi3}" var="w">
                            <tr>
                                <td>${w.last_name}</td>
                                <td>${w.first_name}</td>
                                <td>${w.department}</td>
                                <td>${w.unit}</td>
                                <td>${w.email}</td>


                            </tr>
                        </c:forEach>
                    </c:if>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>


<!-- Modal 1 -->
<div class="modal fade" id="Joi4" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Total WFH din IT & PMO </h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th><i>Nume</i></th>
                        <th><i>Prenume</i></th>
                        <th><i>Departament</i></th>
                        <th><i>Echipa</i></th>
                        <th><i>Email</i></th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:if test="${not empty wfhjoi4}">

                        <c:forEach items ="${wfhjoi4}" var="w">
                            <tr>
                                <td>${w.last_name}</td>
                                <td>${w.first_name}</td>
                                <td>${w.department}</td>
                                <td>${w.unit}</td>
                                <td>${w.email}</td>


                            </tr>
                        </c:forEach>
                    </c:if>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>

<!-- Modal 1 -->
<div class="modal fade" id="Vineri" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Total WFH din IT & PMO </h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th><i>Nume</i></th>
                        <th><i>Prenume</i></th>
                        <th><i>Departament</i></th>
                        <th><i>Echipa</i></th>
                        <th><i>Email</i></th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:if test="${not empty wfhvineri}">

                        <c:forEach items ="${wfhvineri}" var="w">
                            <tr>
                                <td>${w.last_name}</td>
                                <td>${w.first_name}</td>
                                <td>${w.department}</td>
                                <td>${w.unit}</td>
                                <td>${w.email}</td>


                            </tr>
                        </c:forEach>
                    </c:if>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>

<!-- Modal 1 -->
<div class="modal fade" id="Vineri2" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Total WFH din IT & PMO </h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th><i>Nume</i></th>
                        <th><i>Prenume</i></th>
                        <th><i>Departament</i></th>
                        <th><i>Echipa</i></th>
                        <th><i>Email</i></th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:if test="${not empty wfhvineri2}">

                        <c:forEach items ="${wfhvineri2}" var="w">
                            <tr>
                                <td>${w.last_name}</td>
                                <td>${w.first_name}</td>
                                <td>${w.department}</td>
                                <td>${w.unit}</td>
                                <td>${w.email}</td>


                            </tr>
                        </c:forEach>
                    </c:if>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>

<!-- Modal 1 -->
<div class="modal fade" id="Vineri3" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Total WFH din IT & PMO </h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th><i>Nume</i></th>
                        <th><i>Prenume</i></th>
                        <th><i>Departament</i></th>
                        <th><i>Echipa</i></th>
                        <th><i>Email</i></th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:if test="${not empty wfhvineri3}">

                        <c:forEach items ="${wfhvineri3}" var="w">
                            <tr>
                                <td>${w.last_name}</td>
                                <td>${w.first_name}</td>
                                <td>${w.department}</td>
                                <td>${w.unit}</td>
                                <td>${w.email}</td>


                            </tr>
                        </c:forEach>
                    </c:if>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>

<!-- Modal 1 -->
<div class="modal fade" id="Vineri4" role="dialog">
    <div class="modal-dialog"style="padding-top: 10%;">

        <!-- Modal content-->
        <div class="modal-content modal-lg">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Total WFH din IT & PMO </h4>
            </div>
            <div class="modal-body">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th><i>Nume</i></th>
                        <th><i>Prenume</i></th>
                        <th><i>Departament</i></th>
                        <th><i>Echipa</i></th>
                        <th><i>Email</i></th>

                    </tr>
                    </thead>
                    <tbody>

                    <c:if test="${not empty wfhvineri4}">

                        <c:forEach items ="${wfhvineri4}" var="w">
                            <tr>
                                <td>${w.last_name}</td>
                                <td>${w.first_name}</td>
                                <td>${w.department}</td>
                                <td>${w.unit}</td>
                                <td>${w.email}</td>


                            </tr>
                        </c:forEach>
                    </c:if>

                    </tbody>
                </table>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>


<div class="container">

    <ul class="nav nav-pills bg">
        <li class="active"><a data-toggle="pill" href="#home">Week 1</a></li>
        <li><a data-toggle="pill" href="#menu1">Week 2</a></li>
        <li><a data-toggle="pill" href="#menu2">Week 3</a></li>
        <li><a data-toggle="pill" href="#menu3">Week 4</a></li>
    </ul>

    <div class="tab-content">
        <div id="home" class="tab-pane fade in active">
            <div class="panel panel-default">

                <div class = "row">
                    <div class="col-md-2 border marime2 ">
                        <div class ="total">Total WFH IT & PMO</div>
                    </div>
                    <div class="col-md-2 border marime2">
                        <div class = "row">
                            <div class = "col-md-12">
                                <div class  ="divtotal">Luni</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-12">
                                <button style="background: url(users.png) no-repeat;padding-left: 29px;background-color: rgba(141, 141, 141, 0.19);;margin-left: 20%;" type="button" class="btn"  data-toggle="modal" data-target="#Luni">${countwfhluni} Persoane</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 border marime2 ">
                        <div class = "row">
                            <div class = "col-md-12">
                                <div class  ="divtotal">Marti</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-12">
                                <button style="background: url(users.png) no-repeat;padding-left: 29px;background-color: rgba(141, 141, 141, 0.19);;margin-left: 20%;" type="button" class="btn"data-toggle="modal" data-target="#Marti">${countwfhmarti} Persoane</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 border marime2">
                        <div class = "row">
                            <div class = "col-md-12">
                                <div class  ="divtotal">Miercuri</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-12">
                                <button style="background: url(users.png) no-repeat;padding-left: 29px;background-color: rgba(141, 141, 141, 0.19);;margin-left: 20%;" type="button" class="btn"data-toggle="modal" data-target="#Miercuri">${countwfhmiercuri} Persoane</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 border marime2">
                        <div class = "row">
                            <div class = "col-md-12">
                                <div class  ="divtotal">Joi</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-12">
                                <button style="background: url(users.png) no-repeat;padding-left: 29px;background-color: rgba(141, 141, 141, 0.19);;margin-left: 20%;" type="button" class="btn"data-toggle="modal" data-target="#Joi">${countwfhjoi} Persoane</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 border marime2">
                        <div class = "row">
                            <div class = "col-md-12">
                                <div class  ="divtotal">Vineri</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-12">
                                <button style="background: url(users.png) no-repeat;padding-left: 29px;background-color: rgba(141, 141, 141, 0.19);;margin-left: 20%;" type="button" class="btn" data-toggle="modal" data-target="#Vineri">${countwfhvineri} Persoane</button>
                            </div>
                        </div>
                    </div>

                </div>

            </div>



        </div>
        <div id="menu1" class="tab-pane fade">


            <div class="panel panel-default">

                <div class = "row">
                    <div class="col-md-2 border marime2 ">
                        <div class ="total">Total WFH IT & PMO</div>
                    </div>
                    <div class="col-md-2 border marime2">
                        <div class = "row">
                            <div class = "col-md-12">
                                <div class  ="divtotal">Luni</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-12">
                                <button style="background: url(users.png) no-repeat;padding-left: 29px;background-color: rgba(141, 141, 141, 0.19);;margin-left: 20%;" type="button" class="btn"  data-toggle="modal" data-target="#Luni2">${countwfhluni2} Persoane</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 border marime2 ">
                        <div class = "row">
                            <div class = "col-md-12">
                                <div class  ="divtotal">Marti</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-12">
                                <button style="background: url(users.png) no-repeat;padding-left: 29px;background-color: rgba(141, 141, 141, 0.19);;margin-left: 20%;" type="button" class="btn"data-toggle="modal" data-target="#Marti2">${countwfhmarti2} Persoane</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 border marime2">
                        <div class = "row">
                            <div class = "col-md-12">
                                <div class  ="divtotal">Miercuri</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-12">
                                <button style="background: url(users.png) no-repeat;padding-left: 29px;background-color: rgba(141, 141, 141, 0.19);;margin-left: 20%;" type="button" class="btn"data-toggle="modal" data-target="#Miercuri2">${countwfhmiercuri2} Persoane</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 border marime2">
                        <div class = "row">
                            <div class = "col-md-12">
                                <div class  ="divtotal">Joi</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-12">
                                <button style="background: url(users.png) no-repeat;padding-left: 29px;background-color: rgba(141, 141, 141, 0.19);;margin-left: 20%;" type="button" class="btn"data-toggle="modal" data-target="#Joi2">${countwfhjoi2} Persoane</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 border marime2">
                        <div class = "row">
                            <div class = "col-md-12">
                                <div class  ="divtotal">Vineri</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-12">
                                <button style="background: url(users.png) no-repeat;padding-left: 29px;background-color: rgba(141, 141, 141, 0.19);;margin-left: 20%;" type="button" class="btn" data-toggle="modal" data-target="#Vineri2">${countwfhvineri2} Persoane</button>
                            </div>
                        </div>
                    </div>

                </div>



            </div>
        </div>
        <div id="menu2" class="tab-pane fade">


            <div class="panel panel-default">

                <div class = "row">
                    <div class="col-md-2 border marime2 ">
                        <div class ="total">Total WFH IT & PMO</div>
                    </div>
                    <div class="col-md-2 border marime2">
                        <div class = "row">
                            <div class = "col-md-12">
                                <div class  ="divtotal">Luni</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-12">
                                <button style="background: url(users.png) no-repeat;padding-left: 29px;background-color: rgba(141, 141, 141, 0.19);;margin-left: 20%;" type="button" class="btn"  data-toggle="modal" data-target="#Luni3">${countwfhluni3} Persoane</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 border marime2 ">
                        <div class = "row">
                            <div class = "col-md-12">
                                <div class  ="divtotal">Marti</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-12">
                                <button style="background: url(users.png) no-repeat;padding-left: 29px;background-color: rgba(141, 141, 141, 0.19);;margin-left: 20%;" type="button" class="btn"data-toggle="modal" data-target="#Marti3">${countwfhmarti3} Persoane</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 border marime2">
                        <div class = "row">
                            <div class = "col-md-12">
                                <div class  ="divtotal">Miercuri</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-12">
                                <button style="background: url(users.png) no-repeat;padding-left: 29px;background-color: rgba(141, 141, 141, 0.19);;margin-left: 20%;" type="button" class="btn"data-toggle="modal" data-target="#Miercuri3">${countwfhmiercuri3} Persoane</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 border marime2">
                        <div class = "row">
                            <div class = "col-md-12">
                                <div class  ="divtotal">Joi</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-12">
                                <button style="background: url(users.png) no-repeat;padding-left: 29px;background-color: rgba(141, 141, 141, 0.19);;margin-left: 20%;" type="button" class="btn"data-toggle="modal" data-target="#Joi3">${countwfhjoi3} Persoane</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 border marime2">
                        <div class = "row">
                            <div class = "col-md-12">
                                <div class  ="divtotal">Vineri</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-12">
                                <button style="background: url(users.png) no-repeat;padding-left: 29px;background-color: rgba(141, 141, 141, 0.19);;margin-left: 20%;" type="button" class="btn" data-toggle="modal" data-target="#Vineri3">${countwfhvineri3} Persoane</button>
                            </div>
                        </div>
                    </div>

                </div>


            </div>
        </div>
        <div id="menu3" class="tab-pane fade">


            <div class="panel panel-default">

                <div class = "row">
                    <div class="col-md-2 border marime2 ">
                        <div class ="total">Total WFH IT & PMO</div>
                    </div>
                    <div class="col-md-2 border marime2">
                        <div class = "row">
                            <div class = "col-md-12">
                                <div class  ="divtotal">Luni</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-12">
                                <button style="background: url(users.png) no-repeat;padding-left: 29px;background-color: rgba(141, 141, 141, 0.19);;margin-left: 20%;" type="button" class="btn"  data-toggle="modal" data-target="#Luni4">${countwfhluni4} Persoane</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 border marime2 ">
                        <div class = "row">
                            <div class = "col-md-12">
                                <div class  ="divtotal">Marti</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-12">
                                <button style="background: url(users.png) no-repeat;padding-left: 29px;background-color: rgba(141, 141, 141, 0.19);;margin-left: 20%;" type="button" class="btn"data-toggle="modal" data-target="#Marti4">${countwfhmarti4} Persoane</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 border marime2">
                        <div class = "row">
                            <div class = "col-md-12">
                                <div class  ="divtotal">Miercuri</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-12">
                                <button style="background: url(users.png) no-repeat;padding-left: 29px;background-color: rgba(141, 141, 141, 0.19);;margin-left: 20%;" type="button" class="btn"data-toggle="modal" data-target="#Miercuri4">${countwfhmiercuri4} Persoane</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 border marime2">
                        <div class = "row">
                            <div class = "col-md-12">
                                <div class  ="divtotal">Joi</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-12">
                                <button style="background: url(users.png) no-repeat;padding-left: 29px;background-color: rgba(141, 141, 141, 0.19);;margin-left: 20%;" type="button" class="btn"data-toggle="modal" data-target="#Joi4">${countwfhjoi4} Persoane</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-2 border marime2">
                        <div class = "row">
                            <div class = "col-md-12">
                                <div class  ="divtotal">Vineri</div>
                            </div>
                        </div>
                        <div class="row">
                            <div class = "col-md-12">
                                <button style="background: url(users.png) no-repeat;padding-left: 29px;background-color: rgba(141, 141, 141, 0.19);;margin-left: 20%;" type="button" class="btn" data-toggle="modal" data-target="#Vineri4">${countwfhvineri4} Persoane</button>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
</div>






<div class = "container">
    <div class = "bunvenit">
        ${unitate}

    </div>

</div>



<div class="container">

    <ul class="nav nav-pills bg">
        <li class="active"><a  href="#w1"data-toggle="pill">Week 1</a></li>
        <li><a href="#w2" data-toggle="pill">Week 2</a></li>
        <li><a href="#w3" data-toggle="pill">Week 3</a></li>
        <li><a href="#w4" data-toggle="pill">Week 4</a></li>
    </ul>

    <div class="tab-content">
        <div id="w1" class="tab-pane fade in active">







            <div class = "">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">

                            <div class="col-md-2">


                            </div>
                            <div class="col-md-2">
                                Luni &nbsp; <b>${Luni}</b>

                            </div>
                            <div class="col-md-2">
                                Marti &nbsp; <b>${Marti}</b>



                            </div>
                            <div class="col-md-2">
                                Miercuri &nbsp; <b>${Miercuri}</b>

                            </div>
                            <div class="col-md-2">
                                Joi &nbsp; <b>${Joi}</b>

                            </div>
                            <div class="col-md-2">

                                Vineri &nbsp; <b>${Vineri}</b>


                            </div>




                        </div>


                    </div>
                    <div class="">


                        <c:if test="${not empty list8}">

                            <c:forEach items ="${list8}" var="ceva">
                                <div class="row">

                                    <div class="col-md-2 border marime">

                                        <div class = "col-md-4 casuta">
                                            <img src="${ceva.poza}" class="img-circle" alt="Cinque Terre" width="40" height="40" style="margin-left: 8px;margin-top: 10px;">
                                        </div>
                                        <div class = "col-md-8 casuta">
                                                ${ceva.last_name} ${ceva.first_name}

                                        </div>



                                    </div>
                                    <div class="col-md-2 border marime">
                                        <c:set var="var1" value="${email}"/>
                                        <c:set var="var2" value="${ceva.email}"/>
                                        <c:set var="var3" value="${nr}"/>
                                        <c:set var="var4" value="${nr_luni}"/>
                                        <c:set var="max" value="${maxwfh_unit}"/>
                                        <c:set var="verificaredataluni" value="${verificaredataluni}"/>
                                        <c:set var="verifluni" value="${verifluni}"/>
                                        <c:choose>
                                            <c:when test="${var1!= var2}">
                                                <c:choose>
                                                    <c:when test="${not empty wfhzi}">

                                                        <c:forEach items ="${wfhzi}" var="wfh">
                                                            <c:set var="var5" value="${wfh.email}"/>
                                                            <c:if test="${var5 == var2}">
                                                                <button type="Submit" disabled class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez"></button>


                                                            </c:if>


                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <%--    <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>--%>

                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${var1 == var2 && var3 == 0 && var4 < max && verificaredataluni == 0}">

                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="w" value="#w1">
                                                            <input type="hidden" name="Luni" value="${Luni}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1 == var2 && (var4 != 0 && var3 !=0) && (verifluni ==1)  && (verificaredataluni == 0 )}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w1">
                                                            <input type="hidden" name="Luni" value="${Luni}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1 == var2 && (var4 != 0 && var3 !=0) && (verifluni ==1)  && (verificaredataluni == 1 )}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w1">
                                                            <input type="hidden" name="Luni" value="${Luni}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="Luni" value="${Luni}" />
                                                            <input type="hidden" name="it2pk_fk" value ="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>


                                                        <br />
                                                    </c:otherwise>

                                                </c:choose>



                                            </c:otherwise>
                                        </c:choose>






                                    </div>
                                    <div class="col-md-2 border marime">
                                        <c:set var="var1" value="${email}"/>
                                        <c:set var="var2" value="${ceva.email}"/>
                                        <c:set var="var3" value="${nr}"/>
                                        <c:set var="var4" value="${nr_marti}"/>
                                        <c:set var="max" value="${maxwfh_unit}"/>
                                        <c:set var="verificaredatamarti" value="${verificaredatamarti}"/>
                                        <c:set var="verifmarti" value="${verifmarti}"/>
                                        <c:choose>

                                            <c:when test="${var1 != var2}">
                                                <c:choose>
                                                    <c:when test="${not empty wfhzimarti}">

                                                        <c:forEach items ="${wfhzimarti}" var="wfh">
                                                            <c:set var="var5" value="${wfh.email}"/>


                                                            <c:if test="${var5 == var2}">
                                                                <button type="Submit" disabled class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez"></button>


                                                            </c:if>







                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <%--    <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>--%>

                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${var1 == var2 && var3 == 0 && var4 < max  && verificaredatamarti == 0 }">

                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="w" value="#w1">
                                                            <input type="hidden" name="Marti" value="${Marti}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1== var2 && (var4 != 0 && var3 !=0) && (verifmarti == 1) && (verificaredatamarti == 0)}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w1">
                                                            <input type="hidden" name="Marti" value="${Marti}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>

                                                    <c:when test="${var1== var2 && (var4 != 0 && var3 !=0) && (verifmarti == 1) && (verificaredatamarti == 1)}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w1">
                                                            <input type="hidden" name="Marti" value="${Marti}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="Marti" value="${Marti}" />
                                                            <input type="hidden" name="it2pk_fk" value ="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>


                                                        <br />
                                                    </c:otherwise>

                                                </c:choose>



                                            </c:otherwise>
                                        </c:choose>




                                    </div>
                                    <div class="col-md-2 border marime">
                                        <c:set var="var1" value="${email}"/>
                                        <c:set var="var2" value="${ceva.email}"/>
                                        <c:set var="var3" value="${nr}"/>
                                        <c:set var="var4" value="${nr_miercuri}"/>
                                        <c:set var="max" value="${maxwfh_unit}"/>
                                        <c:set var="verifmiercuri" value="${verifmiercuri}"/>
                                        <c:set var="verificaredatamiercuri" value="${verificaredatamiercuri}"/>
                                        <c:choose>
                                            <c:when test="${var1 != var2}">
                                                <c:choose>
                                                    <c:when test="${not empty wfhzimiercuri}">

                                                        <c:forEach items ="${wfhzimiercuri}" var="wfh">
                                                            <c:set var="var5" value="${wfh.email}"/>
                                                            <c:if test="${var5 == var2}">
                                                                <button type="Submit" disabled class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez"></button>


                                                            </c:if>

                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <%--    <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>--%>

                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${var1 == var2 && var3 == 0 && var4 < max && verificaredatamiercuri == 0}">

                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="w" value="#w1">
                                                            <input type="hidden" name="Miercuri" value="${Miercuri}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1 == var2 && (var4 != 0 && var3 !=0) && (verifmiercuri == 1) && (verificaredatamiercuri == 0)}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w1">
                                                            <input type="hidden" name="Miercuri" value="${Miercuri}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1 == var2 && (var4 != 0 && var3 !=0) && (verifmiercuri == 1) && (verificaredatamiercuri == 1)}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w1">
                                                            <input type="hidden" name="Miercuri" value="${Miercuri}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="Miercuri" value="${Miercuri}" />
                                                            <input type="hidden" name="it2pk_fk" value ="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>


                                                        <br />
                                                    </c:otherwise>

                                                </c:choose>



                                            </c:otherwise>
                                        </c:choose>





                                    </div>
                                    <div class="col-md-2 border marime">

                                        <c:set var="var1" value="${email}"/>
                                        <c:set var="var2" value="${ceva.email}"/>
                                        <c:set var="var3" value="${nr}"/>
                                        <c:set var="var4" value="${nr_joi}"/>
                                        <c:set var="verifjoi" value="${verifjoi}"/>
                                        <c:set var="max" value="${maxwfh_unit}"/>
                                        <c:set var="verificaredatajoi" value="${verificaredatajoi}"/>
                                        <c:choose>
                                            <c:when test="${var1 != var2}">
                                                <c:choose>
                                                    <c:when test="${not empty wfhzijoi}">

                                                        <c:forEach items ="${wfhzijoi}" var="wfh">
                                                            <c:set var="var5" value="${wfh.email}"/>
                                                            <c:if test="${var5 == var2}">
                                                                <button type="Submit" disabled class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez"></button>


                                                            </c:if>


                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <%--    <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>--%>

                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${var1 == var2 && var3 == 0 && var4 < max && verificaredatajoi == 0 }">

                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="w" value="#w1">
                                                            <input type="hidden" name="Joi" value="${Joi}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1== var2 && (var4 != 0 && var3 !=0)&& (verifjoi == 1) && (verificaredatajoi == 0 )}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w1">
                                                            <input type="hidden" name="Joi" value="${Joi}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>

                                                    <c:when test="${var1== var2 && (var4 != 0 && var3 !=0)&& (verifjoi == 1) && (verificaredatajoi == 1 )}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w1">
                                                            <input type="hidden" name="Joi" value="${Joi}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="Joi" value="${Joi}" />
                                                            <input type="hidden" name="it2pk_fk" value ="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>


                                                        <br />
                                                    </c:otherwise>

                                                </c:choose>



                                            </c:otherwise>
                                        </c:choose>


                                    </div>
                                    <div class="col-md-2 border marime">
                                        <c:set var="var1" value="${email}"/>
                                        <c:set var="var2" value="${ceva.email}"/>
                                        <c:set var="var3" value="${nr}"/>
                                        <c:set var="var4" value="${nr_vineri}"/>
                                        <c:set var="max" value="${maxwfh_unit}"/>
                                        <c:set var="verificaredatavineri" value="${verificaredatavineri}"/>
                                        <c:set var="verifvineri" value="${verifvineri}"/>
                                        <c:set var="count" value="${counvineri}"/>

                                        <c:choose>
                                            <c:when test="${var1 != var2}">
                                                <c:choose>
                                                    <c:when test="${not empty wfhzivineri}">

                                                        <c:forEach items ="${wfhzivineri}" var="wfh">
                                                            <c:set var="var5" value="${wfh.email}"/>
                                                            <c:if test="${var5 == var2}">
                                                                <button type="Submit" disabled class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez"></button>


                                                            </c:if>


                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <%--    <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>--%>

                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${var1 == var2 && var3 == 0 && var4 < max && verificaredatavineri == 0 }">

                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="w" value="#w1">
                                                            <input type="hidden" name="Vineri" value="${Vineri}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1 == var2 && (var4 != 0 && var3 !=0) && (verifvineri == 1) && (verificaredatavineri == 0)}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w1">
                                                            <input type="hidden" name="Vineri" value="${Vineri}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>

                                                    <c:when test="${var1 == var2 && (var4 != 0 && var3 !=0) && (verifvineri == 1) && (verificaredatavineri == 1)}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w1">
                                                            <input type="hidden" name="Vineri" value="${Vineri}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="Vineri" value="${Vineri}" />
                                                            <input type="hidden" name="it2pk_fk" value ="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>


                                                        <br />
                                                    </c:otherwise>

                                                </c:choose>



                                            </c:otherwise>
                                        </c:choose>



                                    </div>




                                </div>

                            </c:forEach>


                        </c:if>



                    </div>
                </div>







            </div>

        </div>
        <div id="w2" class="tab-pane fade">


            <div class = "">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">

                            <div class="col-md-2">


                            </div>
                            <div class="col-md-2">
                                Luni &nbsp; <b>${Luni2}</b>

                            </div>
                            <div class="col-md-2">
                                Marti &nbsp; <b>${Marti2}</b>



                            </div>
                            <div class="col-md-2">
                                Miercuri &nbsp; <b>${Miercuri2}</b>

                            </div>
                            <div class="col-md-2">
                                Joi &nbsp; <b>${Joi2}</b>

                            </div>
                            <div class="col-md-2">

                                Vineri &nbsp; <b>${Vineri2}</b>

                            </div>




                        </div>


                    </div>
                    <div class="">


                        <c:if test="${not empty list8}">

                            <c:forEach items ="${list8}" var="ceva">
                                <div class="row">

                                    <div class="col-md-2 border marime">

                                        <div class = "col-md-4 casuta">
                                            <img src="${ceva.poza}" class="img-circle" alt="Cinque Terre" width="40" height="40" style=" margin-left: 8px; margin-top: 10px;">
                                        </div>
                                        <div class = "col-md-8 casuta">
                                                ${ceva.last_name} ${ceva.first_name}
                                        </div>



                                    </div>
                                    <div class="col-md-2 border marime">
                                        <c:set var="var1" value="${email}"/>
                                        <c:set var="var2" value="${ceva.email}"/>
                                        <c:set var="var3" value="${nr_sapt2}"/>
                                        <c:set var="var4" value="${nr_luni2}"/>
                                        <c:set var="max" value="${maxwfh_unit}"/>
                                        <c:set var="verificaredataluni2" value="${verificaredataluni2}"/>
                                        <c:set var="verifluni2" value="${verifluni2}"/>
                                        <c:choose>
                                            <c:when test="${var1 != var2}">
                                                <c:choose>
                                                    <c:when test="${not empty wfhzi2}">

                                                        <c:forEach items ="${wfhzi2}" var="wfh">
                                                            <c:set var="var5" value="${wfh.email}"/>
                                                            <c:if test="${var5== var2}">
                                                                <button type="Submit" disabled class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez"></button>


                                                            </c:if>


                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <%--    <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>--%>

                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${var1 == var2 && var3 == 0 && var4 < max }">

                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="w" value="#w2">
                                                            <input type="hidden" name="Luni2" value="${Luni2}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1 == var2 && (var4 != 0 && var3 !=0) && (verifluni2 ==1)}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w2">
                                                            <input type="hidden" name="Luni2" value="${Luni2}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="Luni2" value="${Luni2}" />
                                                            <input type="hidden" name="it2pk_fk" value ="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>


                                                        <br />
                                                    </c:otherwise>

                                                </c:choose>



                                            </c:otherwise>
                                        </c:choose>






                                    </div>
                                    <div class="col-md-2 border marime">
                                        <c:set var="var1" value="${email}"/>
                                        <c:set var="var2" value="${ceva.email}"/>
                                        <c:set var="var3" value="${nr_sapt2}"/>
                                        <c:set var="max" value="${maxwfh_unit}"/>
                                        <c:set var="var4" value="${nr_marti2}"/>
                                        <c:set var="verificaredatamarti2" value="${verificaredatamarti2}"/>
                                        <c:set var="verifmarti2" value="${verifmarti2}"/>
                                        <c:choose>

                                            <c:when test="${var1 != var2}">
                                                <c:choose>
                                                    <c:when test="${not empty wfhzimarti2}">

                                                        <c:forEach items ="${wfhzimarti2}" var="wfh">
                                                            <c:set var="var5" value="${wfh.email}"/>


                                                            <c:if test="${var5 == var2}">
                                                                <button type="Submit" disabled class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez"></button>


                                                            </c:if>







                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <%--    <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>--%>

                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${var1 == var2 && var3 == 0 && var4 < max }">

                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="w" value="#w2">
                                                            <input type="hidden" name="Marti2" value="${Marti2}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1== var2 && (var4 != 0 && var3 !=0) && (verifmarti2 == 1)}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w2">
                                                            <input type="hidden" name="Marti2" value="${Marti2}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="Marti2" value="${Marti2}" />
                                                            <input type="hidden" name="it2pk_fk" value ="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>


                                                        <br />
                                                    </c:otherwise>

                                                </c:choose>



                                            </c:otherwise>
                                        </c:choose>




                                    </div>
                                    <div class="col-md-2 border marime">
                                        <c:set var="var1" value="${email}"/>
                                        <c:set var="var2" value="${ceva.email}"/>
                                        <c:set var="var3" value="${nr_sapt2}"/>
                                        <c:set var="max" value="${maxwfh_unit}"/>
                                        <c:set var="var4" value="${nr_miercuri2}"/>
                                        <c:set var="verifmiercuri2" value="${verifmiercuri2}"/>
                                        <c:set var="verificaredatamiercuri2" value="${verificaredatamiercuri2}"/>
                                        <c:choose>
                                            <c:when test="${var1 != var2}">
                                                <c:choose>
                                                    <c:when test="${not empty wfhzimiercuri2}">

                                                        <c:forEach items ="${wfhzimiercuri2}" var="wfh">
                                                            <c:set var="var5" value="${wfh.email}"/>
                                                            <c:if test="${var5 == var2}">
                                                                <button type="Submit" disabled class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez"></button>


                                                            </c:if>

                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <%--    <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>--%>

                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${var1 == var2 && var3 == 0 && var4 < max }">

                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="w" value="#w2">
                                                            <input type="hidden" name="Miercuri2" value="${Miercuri2}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1 == var2 && (var4 != 0 && var3 !=0) && (verifmiercuri2 == 1)}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w2">
                                                            <input type="hidden" name="Miercuri2" value="${Miercuri2}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="Miercuri2" value="${Miercuri2}" />
                                                            <input type="hidden" name="it2pk_fk" value ="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>


                                                        <br />
                                                    </c:otherwise>

                                                </c:choose>



                                            </c:otherwise>
                                        </c:choose>





                                    </div>
                                    <div class="col-md-2 border marime">

                                        <c:set var="var1" value="${email}"/>
                                        <c:set var="var2" value="${ceva.email}"/>
                                        <c:set var="var3" value="${nr_sapt2}"/>
                                        <c:set var="var4" value="${nr_joi2}"/>
                                        <c:set var="max" value="${maxwfh_unit}"/>
                                        <c:set var="verifjoi2" value="${verifjoi2}"/>
                                        <c:set var="verificaredatajoi2" value="${verificaredatajoi2}"/>
                                        <c:choose>
                                            <c:when test="${var1 != var2}">
                                                <c:choose>
                                                    <c:when test="${not empty wfhzijoi2}">

                                                        <c:forEach items ="${wfhzijoi2}" var="wfh">
                                                            <c:set var="var5" value="${wfh.email}"/>
                                                            <c:if test="${var5 == var2}">
                                                                <button type="Submit" disabled class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez"></button>


                                                            </c:if>


                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <%--    <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>--%>

                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${var1 == var2 && var3 == 0 && var4 < max }">

                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="w" value="#w2">
                                                            <input type="hidden" name="Joi2" value="${Joi2}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1== var2 && (var4 != 0 && var3 !=0)&& (verifjoi2 == 1)}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w2">
                                                            <input type="hidden" name="Joi2" value="${Joi2}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="Joi2" value="${Joi2}" />
                                                            <input type="hidden" name="it2pk_fk" value ="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>


                                                        <br />
                                                    </c:otherwise>

                                                </c:choose>



                                            </c:otherwise>
                                        </c:choose>


                                    </div>
                                    <div class="col-md-2 border marime">
                                        <c:set var="var1" value="${email}"/>
                                        <c:set var="var2" value="${ceva.email}"/>
                                        <c:set var="var3" value="${nr_sapt2}"/>
                                        <c:set var="var4" value="${nr_vineri2}"/>
                                        <c:set var="max" value="${maxwfh_unit}"/>
                                        <c:set var="count" value="${counvineri}"/>
                                        <c:set var="verifvineri2" value="${verifvineri2}"/>
                                        <c:set var="verificaredatavineri2" value="${verificaredatavineri2}"/>
                                        <c:choose>
                                            <c:when test="${var1 != var2}">
                                                <c:choose>
                                                    <c:when test="${not empty wfhzivineri2}">

                                                        <c:forEach items ="${wfhzivineri2}" var="wfh">
                                                            <c:set var="var5" value="${wfh.email}"/>
                                                            <c:if test="${var5 == var2}">
                                                                <button type="Submit" disabled class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez"></button>


                                                            </c:if>


                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <%--    <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>--%>

                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${var1 == var2 && var3 == 0 && var4 < max}">

                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="w" value="#w2">
                                                            <input type="hidden" name="Vineri2" value="${Vineri2}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1 == var2 && (var4 != 0 && var3 !=0) && (verifvineri2 == 1)}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w2">
                                                            <input type="hidden" name="Vineri2" value="${Vineri2}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="Vineri2" value="${Vineri2}" />
                                                            <input type="hidden" name="it2pk_fk" value ="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>


                                                        <br />
                                                    </c:otherwise>

                                                </c:choose>



                                            </c:otherwise>
                                        </c:choose>



                                    </div>




                                </div>

                            </c:forEach>


                        </c:if>



                    </div>
                </div>

            </div>





        </div>
        <div id="w3" class="tab-pane fade">


            <div class = "">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">

                            <div class="col-md-2">


                            </div>
                            <div class="col-md-2">
                                Luni &nbsp; <b>${Luni3}</b>

                            </div>
                            <div class="col-md-2">
                                Marti &nbsp; <b>${Marti3}</b>



                            </div>
                            <div class="col-md-2">
                                Miercuri &nbsp; <b>${Miercuri3}</b>

                            </div>
                            <div class="col-md-2">
                                Joi &nbsp; <b>${Joi3}</b>

                            </div>
                            <div class="col-md-2">

                                Vineri &nbsp; <b>${Vineri3}</b>

                            </div>




                        </div>


                    </div>
                    <div class="">


                        <c:if test="${not empty list8}">

                            <c:forEach items ="${list8}" var="ceva">
                                <div class="row">

                                    <div class="col-md-2 border marime">

                                        <div class = "col-md-4 casuta">
                                            <img src="${ceva.poza}" class="img-circle" alt="Cinque Terre" width="40" height="40" style=" margin-left: 8px; margin-top: 10px;">
                                        </div>
                                        <div class = "col-md-8 casuta">
                                                ${ceva.last_name} ${ceva.first_name}
                                        </div>



                                    </div>
                                    <div class="col-md-2 border marime">
                                        <c:set var="var1" value="${email}"/>
                                        <c:set var="var2" value="${ceva.email}"/>
                                        <c:set var="var3" value="${nr_sapt3}"/>
                                        <c:set var="var4" value="${nr_luni3}"/>
                                        <c:set var="max" value="${maxwfh_unit}"/>
                                        <c:set var="verificaredataluni3" value="${verificaredataluni3}"/>
                                        <c:set var="verifluni3" value="${verifluni3}"/>
                                        <c:choose>
                                            <c:when test="${var1 != var2}">
                                                <c:choose>
                                                    <c:when test="${not empty wfhzi3}">

                                                        <c:forEach items ="${wfhzi3}" var="wfh">
                                                            <c:set var="var5" value="${wfh.email}"/>
                                                            <c:if test="${var5 == var2}">
                                                                <button type="Submit" disabled class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez"></button>


                                                            </c:if>


                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <%--    <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>--%>

                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${var1 == var2 && var3 == 0 && var4 < max }">

                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="w" value="#w3">
                                                            <input type="hidden" name="Luni3" value="${Luni3}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1 == var2 && (var4 != 0 && var3 !=0) && (verifluni3 ==1)}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w3">
                                                            <input type="hidden" name="Luni3" value="${Luni3}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="Luni3" value="${Luni3}" />
                                                            <input type="hidden" name="it2pk_fk" value ="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>


                                                        <br />
                                                    </c:otherwise>

                                                </c:choose>



                                            </c:otherwise>
                                        </c:choose>






                                    </div>
                                    <div class="col-md-2 border marime">
                                        <c:set var="var1" value="${email}"/>
                                        <c:set var="var2" value="${ceva.email}"/>
                                        <c:set var="var3" value="${nr_sapt3}"/>
                                        <c:set var="var4" value="${nr_marti3}"/>
                                        <c:set var="max" value="${maxwfh_unit}"/>
                                        <c:set var="verificaredatamarti3" value="${verificaredatamarti3}"/>
                                        <c:set var="verifmarti3" value="${verifmarti3}"/>
                                        <c:choose>

                                            <c:when test="${var1 != var2}">
                                                <c:choose>
                                                    <c:when test="${not empty wfhzimarti3}">

                                                        <c:forEach items ="${wfhzimarti3}" var="wfh">
                                                            <c:set var="var5" value="${wfh.email}"/>


                                                            <c:if test="${var5 == var2}">
                                                                <button type="Submit" disabled class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez"></button>


                                                            </c:if>







                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <%--    <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>--%>

                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${var1 == var2 && var3 == 0 && var4 < max }">

                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="w" value="#w3">
                                                            <input type="hidden" name="Marti3" value="${Marti3}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1 == var2 && (var4 != 0 && var3 !=0) && (verifmarti3 == 1)}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w3">
                                                            <input type="hidden" name="Marti3" value="${Marti3}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="Marti3" value="${Marti3}" />
                                                            <input type="hidden" name="it2pk_fk" value ="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>


                                                        <br />
                                                    </c:otherwise>

                                                </c:choose>



                                            </c:otherwise>
                                        </c:choose>




                                    </div>
                                    <div class="col-md-2 border marime">
                                        <c:set var="var1" value="${email}"/>
                                        <c:set var="var2" value="${ceva.email}"/>
                                        <c:set var="var3" value="${nr_sapt3}"/>
                                        <c:set var="var4" value="${nr_miercuri3}"/>
                                        <c:set var="max" value="${maxwfh_unit}"/>
                                        <c:set var="verificaredatamiercuri3" value="${verificaredatamiercuri3}"/>
                                        <c:set var="verifmiercuri3" value="${verifmiercuri3}"/>
                                        <c:choose>
                                            <c:when test="${var1!= var2}">
                                                <c:choose>
                                                    <c:when test="${not empty wfhzimiercuri3}">

                                                        <c:forEach items ="${wfhzimiercuri3}" var="wfh">
                                                            <c:set var="var5" value="${wfh.email}"/>
                                                            <c:if test="${var5 == var2}">
                                                                <button type="Submit" disabled class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez"></button>


                                                            </c:if>

                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <%--    <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>--%>

                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${var1 == var2 && var3 == 0 && var4 < max }">

                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="w" value="#w3">
                                                            <input type="hidden" name="Miercuri3" value="${Miercuri3}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1 == var2 && (var4 != 0 && var3 !=0) && (verifmiercuri3 == 1)}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w3">
                                                            <input type="hidden" name="Miercuri3" value="${Miercuri3}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="Miercuri3" value="${Miercuri3}" />
                                                            <input type="hidden" name="it2pk_fk" value ="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>


                                                        <br />
                                                    </c:otherwise>

                                                </c:choose>



                                            </c:otherwise>
                                        </c:choose>





                                    </div>
                                    <div class="col-md-2 border marime">

                                        <c:set var="var1" value="${email}"/>
                                        <c:set var="var2" value="${ceva.email}"/>
                                        <c:set var="var3" value="${nr_sapt3}"/>
                                        <c:set var="max" value="${maxwfh_unit}"/>
                                        <c:set var="var4" value="${nr_joi3}"/>
                                        <c:set var="verifjoi" value="${verifjoi}"/>
                                        <c:set var="verificaredatajoi3" value="${verificaredatajoi3}"/>
                                        <c:choose>
                                            <c:when test="${var1 != var2}">
                                                <c:choose>
                                                    <c:when test="${not empty wfhzijoi3}">

                                                        <c:forEach items ="${wfhzijoi3}" var="wfh">
                                                            <c:set var="var5" value="${wfh.email}"/>
                                                            <c:if test="${var5 == var2}">
                                                                <button type="Submit" disabled class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez"></button>


                                                            </c:if>


                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <%--    <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>--%>

                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${var1 == var2 && var3 == 0 && var4 <max }">

                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="w" value="#w3">
                                                            <input type="hidden" name="Joi3" value="${Joi3}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1== var2 && (var4 != 0 && var3 !=0)&& (verifjoi3 == 1)}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w3">
                                                            <input type="hidden" name="Joi3" value="${Joi3}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="Joi3" value="${Joi3}" />
                                                            <input type="hidden" name="it2pk_fk" value ="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>


                                                        <br />
                                                    </c:otherwise>

                                                </c:choose>



                                            </c:otherwise>
                                        </c:choose>


                                    </div>
                                    <div class="col-md-2 border marime">
                                        <c:set var="var1" value="${email}"/>
                                        <c:set var="var2" value="${ceva.email}"/>
                                        <c:set var="var3" value="${nr_sapt3}"/>
                                        <c:set var="var4" value="${nr_vineri3}"/>
                                        <c:set var="max" value="${maxwfh_unit}"/>
                                        <c:set var="count" value="${counvineri}"/>
                                        <c:set var="verifvineri" value="${verifvineri}"/>
                                        <c:set var="verificaredatavineri4" value="${verificaredatavineri4}"/>
                                        <c:choose>
                                            <c:when test="${var1 != var2}">
                                                <c:choose>
                                                    <c:when test="${not empty wfhzivineri3}">

                                                        <c:forEach items ="${wfhzivineri3}" var="wfh">
                                                            <c:set var="var5" value="${wfh.email}"/>
                                                            <c:if test="${var5== var2}">
                                                                <button type="Submit" disabled class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez"></button>


                                                            </c:if>


                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <%--    <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>--%>

                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${var1 == var2 && var3 == 0 && var4 < max}">

                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="w" value="#w3">
                                                            <input type="hidden" name="Vineri3" value="${Vineri3}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1 == var2 && (var4 != 0 && var3 !=0) && (verifvineri3 == 1)}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w3">
                                                            <input type="hidden" name="Vineri3" value="${Vineri3}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="Vineri3" value="${Vineri3}" />
                                                            <input type="hidden" name="it2pk_fk" value ="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>


                                                        <br />
                                                    </c:otherwise>

                                                </c:choose>



                                            </c:otherwise>
                                        </c:choose>



                                    </div>




                                </div>

                            </c:forEach>


                        </c:if>



                    </div>
                </div>

            </div>

        </div>
        <div id="w4" class="tab-pane fade">


            <div class = "">

                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">

                            <div class="col-md-2">


                            </div>
                            <div class="col-md-2">
                                Luni &nbsp; <b>${Luni4}</b>

                            </div>
                            <div class="col-md-2">
                                Marti &nbsp; <b>${Marti4}</b>



                            </div>
                            <div class="col-md-2">
                                Miercuri &nbsp; <b>${Miercuri4}</b>

                            </div>
                            <div class="col-md-2">
                                Joi &nbsp; <b>${Joi4}</b>

                            </div>
                            <div class="col-md-2">

                                Vineri &nbsp; <b>${Vineri4}</b>

                            </div>




                        </div>


                    </div>
                    <div class="">


                        <c:if test="${not empty list8}">

                            <c:forEach items ="${list8}" var="ceva">
                                <div class="row">

                                    <div class="col-md-2 border marime">

                                        <div class = "col-md-4 casuta">
                                            <img src="${ceva.poza}" class="img-circle" alt="Cinque Terre" width="40" height="40" style=" margin-left: 8px;margin-top: 10px;">
                                        </div>
                                        <div class = "col-md-8 casuta">
                                                ${ceva.last_name} ${ceva.first_name}
                                        </div>



                                    </div>
                                    <div class="col-md-2 border marime">
                                        <c:set var="var1" value="${email}"/>
                                        <c:set var="var2" value="${ceva.email}"/>
                                        <c:set var="var3" value="${nr_sapt4}"/>
                                        <c:set var="var4" value="${nr_luni4}"/>
                                        <c:set var="max" value="${maxwfh_unit}"/>
                                        <c:set var="verificaredataluni4" value="${verificaredataluni4}"/>
                                        <c:set var="count" value="${counvineri}"/>
                                        <c:set var="verifluni4" value="${verifluni4}"/>
                                        <c:choose>
                                            <c:when test="${var1 != var2}">
                                                <c:choose>
                                                    <c:when test="${not empty wfhzi4}">

                                                        <c:forEach items ="${wfhzi4}" var="wfh">
                                                            <c:set var="var5" value="${wfh.email}"/>
                                                            <c:if test="${var5 == var2}">
                                                                <button type="Submit" disabled class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez"></button>


                                                            </c:if>


                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <%--    <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>--%>

                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${var1 == var2 && var3 == 0 && var4 < max }">

                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="w" value="#w4">
                                                            <input type="hidden" name="Luni4" value="${Luni4}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1 == var2 && (var4 != 0 && var3 !=0) && (verifluni4 ==1)}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w4">
                                                            <input type="hidden" name="Luni4" value="${Luni4}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="Luni4" value="${Luni4}" />
                                                            <input type="hidden" name="it2pk_fk" value ="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>


                                                        <br />
                                                    </c:otherwise>

                                                </c:choose>



                                            </c:otherwise>
                                        </c:choose>






                                    </div>
                                    <div class="col-md-2 border marime">
                                        <c:set var="var1" value="${email}"/>
                                        <c:set var="var2" value="${ceva.email}"/>
                                        <c:set var="var3" value="${nr_sapt4}"/>
                                        <c:set var="max" value="${maxwfh_unit}"/>
                                        <c:set var="var4" value="${nr_marti4}"/>
                                        <c:set var="verificaredatamarti4" value="${verificaredatamarti4}"/>
                                        <c:set var="verifmarti4" value="${verifmarti4}"/>
                                        <c:choose>

                                            <c:when test="${var1 != var2}">
                                                <c:choose>
                                                    <c:when test="${not empty wfhzimarti4}">

                                                        <c:forEach items ="${wfhzimarti4}" var="wfh">
                                                            <c:set var="var5" value="${wfh.email}"/>


                                                            <c:if test="${var5 == var2}">
                                                                <button type="Submit" disabled class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez"></button>


                                                            </c:if>







                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <%--    <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>--%>

                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${var1== var2 && var3 == 0 && var4 < max }">

                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="w" value="#w4">
                                                            <input type="hidden" name="Marti4" value="${Marti4}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1 == var2 && (var4 != 0 && var3 !=0) && (verifmarti4 == 1)}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w4">
                                                            <input type="hidden" name="Marti4" value="${Marti4}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="Marti4" value="${Marti4}" />
                                                            <input type="hidden" name="it2pk_fk" value ="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>


                                                        <br />
                                                    </c:otherwise>

                                                </c:choose>



                                            </c:otherwise>
                                        </c:choose>




                                    </div>
                                    <div class="col-md-2 border marime">
                                        <c:set var="var1" value="${email}"/>
                                        <c:set var="var2" value="${ceva.email}"/>
                                        <c:set var="var3" value="${nr_sapt4}"/>
                                        <c:set var="var4" value="${nr_miercuri4}"/>
                                        <c:set var="max" value="${maxwfh_unit}"/>
                                        <c:set var="verifmiercuri4" value="${verifmiercuri4}"/>
                                        <c:set var="verificaredatamiercuri4" value="${verificaredatamiercuri4}"/>
                                        <c:choose>
                                            <c:when test="${var1 != var2}">
                                                <c:choose>
                                                    <c:when test="${not empty wfhzimiercuri4}">

                                                        <c:forEach items ="${wfhzimiercuri4}" var="wfh">
                                                            <c:set var="var5" value="${wfh.email}"/>
                                                            <c:if test="${var5 == var2}">
                                                                <button type="Submit" disabled class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez"></button>


                                                            </c:if>

                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <%--    <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>--%>

                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${var1 == var2 && var3 == 0 && var4 < max }">

                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="w" value="#w4">
                                                            <input type="hidden" name="Miercuri4" value="${Miercuri4}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1 == var2 && (var4 != 0 && var3 !=0) && (verifmiercuri4 == 1)}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w4">
                                                            <input type="hidden" name="Miercuri4" value="${Miercuri4}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="Miercuri4" value="${Miercuri4}" />
                                                            <input type="hidden" name="it2pk_fk" value ="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>


                                                        <br />
                                                    </c:otherwise>

                                                </c:choose>



                                            </c:otherwise>
                                        </c:choose>





                                    </div>
                                    <div class="col-md-2 border marime">

                                        <c:set var="var1" value="${email}"/>
                                        <c:set var="var2" value="${ceva.email}"/>
                                        <c:set var="var3" value="${nr_sapt4}"/>
                                        <c:set var="var4" value="${nr_joi4}"/>
                                        <c:set var="max" value="${maxwfh_unit}"/>
                                        <c:set var="verificaredatajoi4" value="${verificaredatajoi4}"/>
                                        <c:set var="verifjoi4" value="${verifjoi4}"/>
                                        <c:choose>
                                            <c:when test="${var1 != var2}">
                                                <c:choose>
                                                    <c:when test="${not empty wfhzijoi4}">

                                                        <c:forEach items ="${wfhzijoi4}" var="wfh">
                                                            <c:set var="var5" value="${wfh.email}"/>
                                                            <c:if test="${var5 == var2}">
                                                                <button type="Submit" disabled class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez"></button>


                                                            </c:if>


                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <%--    <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>--%>

                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${var1 == var2 && var3 == 0 && var4 <max }">

                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="w" value="#w4">
                                                            <input type="hidden" name="Joi4" value="${Joi4}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1 == var2 && (var4 != 0 && var3 !=0)&& (verifjoi4 == 1)}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w4">
                                                            <input type="hidden" name="Joi4" value="${Joi4}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="Joi4" value="${Joi4}" />
                                                            <input type="hidden" name="it2pk_fk" value ="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>


                                                        <br />
                                                    </c:otherwise>

                                                </c:choose>



                                            </c:otherwise>
                                        </c:choose>


                                    </div>
                                    <div class="col-md-2 border marime">
                                        <c:set var="var1" value="${email}"/>
                                        <c:set var="var2" value="${ceva.email}"/>
                                        <c:set var="var3" value="${nr_sapt4}"/>
                                        <c:set var="var4" value="${nr_vineri4}"/>
                                        <c:set var="max" value="${maxwfh_unit}"/>
                                        <c:set var="verificaredatavineri4" value="${verificaredatavineri4}"/>
                                        <c:set var="count" value="${counvineri}"/>
                                        <c:set var="verifvineri4" value="${verifvineri4}"/>
                                        <c:choose>
                                            <c:when test="${var1 != var2}">
                                                <c:choose>
                                                    <c:when test="${not empty wfhzivineri4}">

                                                        <c:forEach items ="${wfhzivineri4}" var="wfh">
                                                            <c:set var="var5" value="${wfh.email}"/>
                                                            <c:if test="${var5 == var2}">
                                                                <button type="Submit" disabled class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez"></button>


                                                            </c:if>


                                                        </c:forEach>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <%--    <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>--%>

                                                    </c:otherwise>
                                                </c:choose>
                                            </c:when>
                                            <c:otherwise>
                                                <c:choose>
                                                    <c:when test="${var1 == var2 && var3 == 0 && var4 < max }">

                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="w" value="#w4">
                                                            <input type="hidden" name="Vineri4" value="${Vineri4}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:when test="${var1 == var2 && (var4 != 0 && var3 !=0) && (verifvineri4 == 1)}">

                                                        <form method="POST" action="doDeleteInregistrari">
                                                            <input type="hidden" name="w" value="#w4">
                                                            <input type="hidden" name="Vineri4" value="${Vineri4}" />
                                                            <input type="hidden" name="it2pk_fk" value="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit" class="btn  butonsetwfhsetat" data-toggle="modal" data-target="#myModalrez2"></button>
                                                        </form>



                                                        <br />
                                                    </c:when>
                                                    <c:otherwise>
                                                        <form method="POST" action="doEditInregistrari">
                                                            <input type="hidden" name="Vineri4" value="${Vineri4}" />
                                                            <input type="hidden" name="it2pk_fk" value ="${it2pk_fk}">
                                                            <input type="hidden" name="email" value="${email}">
                                                            <input type="hidden" name="code" value="${ceva.code}" />

                                                            <button type="Submit"  disabled  class="btn  butonnosetwfh" data-toggle="modal" data-target="#myModalrez"></button>
                                                        </form>


                                                        <br />
                                                    </c:otherwise>

                                                </c:choose>



                                            </c:otherwise>
                                        </c:choose>



                                    </div>




                                </div>

                            </c:forEach>


                        </c:if>



                    </div>
                </div>

            </div>

        </div>
    </div>
</div>


</body>
</html>
