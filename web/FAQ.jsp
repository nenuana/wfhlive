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


        .qanda {
            border-left: 4px solid #1E88E5;
            padding-left: 12px;
            color: black;
            background-color: white;
            padding-bottom: 5px;
            padding-top: 20px;
            padding-right: 20px;
        }

        .top {
            margin-top: 3px;
        }

        .question {
            font-weight: bold;
            font-family: raiff_bold;
        }

        h1 {
            font-size: 30px;
            color: black;
            font-weight: bold;
        }

        .mare {
            box-shadow: 2px 2px 2px 2px #D4D4D4;
            background-color: white;
            transition: box-shadow 0.2s ease;
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
            <li class="butonfaq"><a href="">FAQ</a></li>
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

<div class="container">

    <div class="container-fluid">
        <h1>FAQ</h1>
        <div class="mare">
            <div class="qanda">
                <p class="question">
                    Q: Ce este WFH - Work From Home?
                </p>
                <p class="answer">A: WFH este un serviciu care permite angajatilor sa acceseze de la distanta aplicatiile si sistemele bancii, facilitand astfel lucrul de acasa. Angajatii noi, pot beneficia de WFH, dupa finalizarea perioadei de proba, iar colegii din internship, dupa finalizarea programului.</p>
                <hr>
                <p class="question">
                    Q: In ce conditii pot lucra de acasa?
                </p>
                <p class="answer">A: Fiecare line manager decide pentru echipa sa, daca toti membrii echipei sunt eligibili pentru WFH si numarul minim de colegi care trebuie sa fie on site in fiecare zi.</p>
                <hr>
                <p class="question">
                    Q: Cum setez WFH?
                </p>
                <p class="answer">A: Pentru a inregistra solicitarea de WFH trebuie doar sa accesezi aplicatia WFH, cu minim 5 zile inainte de ziua pentru care faci inregistrarea</p>
                <p class="answer">A: Aceasta poate fi anulata oricand, pana in ziua anterioara WFH !</p>
                <p class="answer">A: Aplicatia iti va arata zilele eligibile pentru WFH, in functie de solicitarile colegilor tai inregistrate pana in acel moment.</p>
                <p class="answer">A: WFH nu se reporteaza de la o saptamana la alta!</p>
                <p class="answer">A: Poti alege maxim o zi de vineri in fiecare luna calendaristica pentru WFH :) </p>
                <p class="answer">A: Dupa setarea WFH, calendarul tau Google va fi actualizat cu un all day event care sa evidentieze faptul ca lucrezi de acasa! (disponibil in curand :) )</p>
                <hr>
                <p class="question">Q: De ce am nevoie pentru a lucra de acasa?
                </p>
                <p class="answer">A: Inregistarea solicitarii de WFH in aplicatie, pentru ca toti colegii tai sa poata sti cine lucreaza de acasa in ziua respectiva.
                    Conexiune stabila la internet si semnal la telefonul mobil.
                    Acces la aplicatiile bancii pe care le folosesti in mod uzual.</p>

                <hr>
                <p class="question">Q: Cum pot afla daca un coleg lucreaza de acasa intr-o anumita zi?
                </p>
                <p class="answer">A: Poti face acest lucru folosind functia de search din aplicatia WFH!</p>
            </div>

        </div>
    </div>


</div>


</body>
</html>
