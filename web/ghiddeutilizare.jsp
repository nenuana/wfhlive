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
            <li class="butonfaq"><a href="/FAQ.jsp">FAQ</a></li>
            <li class="butonfaq"><a href="">Ghid utilizare</a></li>

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
        <h1>Instructiuni de acces de la distanta la resursele informatice din infrastructura de retea a bancii prin
            intermediul aplicatiei CITRIX NETSCALER plug-in for Windows</h1>


        <div class="mare">
            <div class="qanda">

                <p class="answer">Acest material detaliaza conditiile si modalitatea de conectare peste internet  la resursele interne (fisiere, aplicatii) aplicatia Citrix NetScaler Plug-in for Windows instalata pe calculatorul utilizatorului. Aceasta modalitate de conectare permite utilizarea aplicatiilor instalate pe calculatorul utilizatorului pentru accesul la resurse, fara a folosi aplicatii virtualizate publicate prin intermediul unui portal WEB: aplicatia Citrix NetScaler Plug-in stabileste un tunel criptat SSL cu concentratorul SSL VPN Citrix NetScaler Gateway si redirecteaza prin tunel traficul generat de aplicatiile instalate local. Modalitatea de conectare folosind NetScaler Gateway Plug-in nu functioneaza utilizand o conexiune de retea din interiorul infrastructurii bancii, ci numai pentru conexiuni din exterior.</p>



                <p class="answer">Concentratorul Citrix NetScaler Gateway expune portaluri specifice mai multor modalitati de functionare care utilizeaza aplicatii diferite. In cadrul proiectului Work from Home, portalul de acces este:</p>
                <p class="question">
                    https://rah-wfh.raiffeisen.ro
                </p>
                <p class ="answer">
                    iar aplicatia utilizata pentru stabilirea tunelului este Citrix NetScaler Gateway Plug-in, instalata pe calculatorul utilizatorului in locatia:
                </p>
                <p class="question">
                    C: Program Files  Citrix  Secure Access Client
                </p>
                <p class="answer">
                    Aplicatia instalata corect ruleaza automat la logon si poate fi identificata in bara de stare:
                </p>
                <p class="answer">
                    <img src="002_wfh_nsgw_plugin_status_bar.png">
                </p>

                <p class="answer">
                    Daca nu este lansata automat in executie, aplicatia NetScaler Gateway Plug-in poate fi lansata din meniul de start, cautand sirul de caractere NetScaler:
                </p>
                <p class="answer">
                    <img src="002_wfh_nsgw_start_menu.png">
                </p>
                <p class="answer">
                    Este posibil ca pe calculatorul utilizatorului sa fie instalata si aplicatia Citrix Receiver (lansata automat in executie la logon si identificabila dupa pictograma din bara de stare: <img src="poza7.PNG"> ). Aplicatia Citrix Receiver NU poate fi folosita pentru conectarea la portalul rah-wfh.raiffeisen.ro.
                </p>

                <p class = "answer">
                    Conectarea aplicatiei  Citrix NetScaler Plug-in la concentratorul VPN depinde de starea parametrilor configurati pentru proxy in sistemul de operare.  Verificati, cautand in meniul de start cuvantul cheie proxy, daca parametrii proxy sunt identici cu cei din imaginea de mai jos:

                </p>
                <p class="answer">
                    <img src="poza1.PNG">
                </p>
                <p class="answer">
                    <img src="poza2.PNG">
                </p>

                <p class="answer">
                    Parametrul Automatically detect proxy settings DESELECTAT previne inlocuirea automata de catre furnizorii de servicii internet a configuratiei proxy, ceea ce determina imposibilitatea conectarii la concentratorul SSL VPN Citrix NetScaler.
                </p>

                <p class="answer">
                    Parametrul  Use automatic configuration script SELECTAT si avand campul text completat cu URL-ul
                </p>

                <p class="question">
                    http://ppubu.rbro.rbg.cc/proxyHQ.pac
                </p>
                <p class="answer">
                    este esential pentru utilizarea simultana, dupa conectarea la concentratorul SSL VPN, a resurselor interne (de ex. aplicatia CRM) si a resurselor cloud (e-mail, calendar, drive) - fisierul proxyHQ.pac directioneaza traficul generat de browser in functie de destinatie iar o configuratie incorecta are ca simptom imposibilitatea accesarii resurselor cloud (e-mail).
                </p>

                <p class="answer">
                    Conectivitatea aplicatiei Citrix NetScaler Gateway Plug-in la concentratorul SSL VPN si a aplicatiilor la resursele interne depinde de starea de conectivitate a aplicatiei McAfee Client Proxy, care detecteaza localizarea calculatorului in interiorul sau in exteriorul infrastructurii de retea a bancii. Verificati, cautand in meniul de start cuvantul cheie proxy si selectand shortcut-ul About McAfee Client Proxy , conectivitatea aplicatiei McAfee Client Proxy la infrastructura de retea a bancii:
                </p>
                <p class="answer">
                    <img src="001_wfh_proxy.png">
                </p>

                <p class="answer">
                    Daca caseta de dialog afiseaza parametrii de mai jos, aplicatia McAfee Client Proxy nu a detectat modificarea conexiunii de retea, nu poate contacta serverul de control si nu poate determina localizarea calculatorului - conectarea de la distanta prin intermediul aplicatiei Citrix NetScaler Gateway Plug-in nu este posibila in aceasta stare tranzitorie a aplicatiei McAfee Client Proxy:
                </p>
                <p class="answer">
                    <img src="121_mcp_no_connectivity.png">
                </p>

                <p class="answer">
                    Aplicatia McAfee Client Proxy detecteaza in mod normal intr-un interval de pana la 3 minute localizarea calculatorului - daca caseta de dialog de mai sus afiseaza in mod constant textul Connection Status No Connectivity pentru un interval mai mare de timp, se decupleaza si se restabileste conexiunea de retea (cablata, wireless sau 3G/4G). Daca simptomul persista, se reporneste calculatorul.
                </p>
                <p class="answer">
                    Daca fereastra de stare a aplicatiei McAfee Client Proxy afiseaza mesajul  Connection Status Out of corporate network si Active proxy 87.237.108.101, conectarea de la distanta prin intermediul aplicatiei Citrix NetScaler Gateway Plug-in este posibila:
                </p>
                <p class="answer">
                    <img src="0_wfh_mcp.png">
                </p>
                <hr>
            </div>


        </div>
        <div class = "mare">
            <div class="qanda">
                <p class="question">
                    Prima conectare
                </p>
                <p class="answer">
                    Aplicatia Citrix NetScaler Plug-in necesita parametrizare doar la prima conectare. Ulterior, aplicatia va initia reconectarea automata pe toata durata sesiunii de lucru a utilizatorului.
                </p>
                <p class="answer">
                    Stabiliti conexiunea de retea (cablata, wireless LAN sau 3G/4G) si verificati parametrii proxy de sistem si ai aplicatiei McAfee Client Proxy.
                </p>

                <p class="answer">
                    Accesati meniul contextual (click-dreapta) corespunzator pictogramei aplicatiei Citrix NetScaler Plug-in din bara de stare si selectati optiunea Open, care conduce la afisarea interfetei aplicatiei:
                </p>
                <p class="answer">
                    <img src="003_wfh_1stconnection.png">
                </p>


                <p class="answer">
                    Introduceti in caseta text marcata de valoarea predefinita Enter URL textul
                </p>

                <p class= "question">
                    https://rah-wfh.raiffeisen.ro
                </p>

                <p class="answer">
                    si apasati butonul Connect.
                </p>

                <p class = "answer">
                    Afisarea aproape imediata a mesajului de eroare Couldn't connect to gateway server se datoreaza urmatoarelor cauze:
                </p>

                <p class = "answer">
                    1. lipsa conectivitate retea
                </p>
                <p class = "answer">
                    2. parametrul Automatically detect setting selectat in cadrul configuratiei proxy a sistemului de operare - in functie de ISP poate fi necesara completarea manuala a valorilor parametrilor
                </p>
                <p class = "answer">
                    3. aplicatia McAfee Client Proxy nu a detectat inca comutarea conexiunii de retea  - detectia localizarii poate dura pana la 3 minute
                </p>

                <p class="answer">
                    <img src="poza3.PNG">
                </p>

                <p class="answer">
                    Aplicatia descarca criteriile de verificare a calculatorului si ruleaza componenta de verificare - aparitia unei erori cu mesajul Acces denied, Your device does not meet the requirements for logging on se datoreaza lipsei actualizarilor pachetelor de semnaturi ale solutiei McAfee Endpoint Security - actualizati semnaturile (nu necesita conectarea calculatorului in infrastructura de retea a bancii) si reluati conectarea:
                </p>

                <p class="answer">
                    <img src="poza4.PNG">
                </p>

                <p class="answer">
                    Dupa efectuarea verificarii calculatorului va fi afisata fereastra de logon - utilizati credentialele de domeniu:
                </p>

                <p class="answer">
                    <img src="3_wfh_logon.png">
                </p>

                <p class="answer">
                    Aparitia mesajului de eroare Incorrect user name or password poate semnifica, pe langa introducerea gresita a numelui de utilizator si a parolei, faptul ca utilizatorul nu este inclus in grupurile de domeniu care au drept de acces remote - verificati prin intermediul rbrhelpdesk@raiffeisen.ro apartenenta la grupuri a numelui de utilizator.
                </p>

                <p class="answer">
                    Autentificarea cu succes permite descarcarea parametrilor de conectare:
                </p>
                <p class="answer">
                    <img src="wfh_download_config.png">
                </p>
                <p class="answer">
                    si stabilirea conexiunii aplicatiei NetScaler Gateway Plug-in cu concentratorul SSL VPN:
                </p>
                <p class="answer">
                    <img src="4_wfh_connected.png">
                </p>
                <p class="answer">
                    Stabilirea conexiunii tunelate SSL VPN este marcata si de schimbarea culorii pictogramei NetScaler Gateway Plug-in din bara de stare, din gris in albastru:
                </p>
                <p class="answer">
                    <img src="connected.png">
                </p>
                <p class="answer">
                    Pentru diagnosticarea si remedierea posibilelor erori survenite pe parcursul conectarii, colectati inregistrarile jurnal de aplicatie accesand butonul de meniu al aplicatiei (trei linii orizontale), selectand optiunea Logging si apasand butonul Collect logs:
                </p>
                <p class="answer">
                    <img src="poza5.PNG">
                </p>

                <p class="answer">
                    Arhiva continand inregistrarile jurnal va fi salvata pe Desktop-ul utilizatorului curent. Atasati arhiva la deschiderea unui Service Call catre rbrhelpdesk@raiffeisen.ro.
                </p>
                <p class="answer">
                    <img src="poza6.PNG">
                </p>

                <p class="answer">
                    Conexiunea (tunelul) SSL VPN este stabilita - accesul prin tunel la aplicatiile interne cu interfata WEB si la resursele cloud (e-mail) depinde de mentinerea configuratiei proxy a sistemului de operare si de detectia locatiei efectuata de aplicatia McAfee Client Proxy (durata de comutare de pana la 3 minute). Pentru aplicatia McAfee Client Proxy, detectia locatiei prin tunel  este semnalizata de afisarea urmatorilor parametri:
                </p>
                <p class="answer">
                    <img src="223_wfh_mcp_inside.png">
                </p>

                <p class="answer">
                    Accesati aplicatiile si resursele de tip fisier partajate aprobate pentru acces remote folosind aplicatiile instalate pe calculatorul local. Monitorizati faptul ca aplicatia NetScaler Gateway Plug-in intercepteaza traficul catre resursele interne accesand din meniul (trei linii orizontale) aplicatiei NetScaler Gateway Plug-in optiunea Tunneled Applications si urmarind conexiunile initiate catre resursele interne:
                </p>
                <p class="answer">
                    <img src="5_wfh_tunneled.png">
                </p>


            </div>
        </div>
        <div class="mare">


            <div class="qanda">
                <p class = "question">
                    Conectarile ulterioare
                </p>
                <p class="answer">
                    Ulterior parametrizarii initiale, aplicatia NetScaler Gateway Plug-in se va reconecta automat, solicitand doar introducerea credentialelor. In cazul comutarii conexiunii de retea verificati intotdeauna parametrizarea proxy (sistem de operare si aplicatie McAfee Client Proxy).
                </p>

            </div>

        </div>
    </div>


</div>


</body>
</html>
