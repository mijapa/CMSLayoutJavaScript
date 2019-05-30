<%--
  Created by IntelliJ IDEA.
  User: micha
  Date: 30.05.19
  Time: 14:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Page</title>
    <link rel="stylesheet" href="page.css"/>
    <script src="page.js"></script>
</head>
<body>
<div id="app-container">
    <div class="app-head">NAGŁÓWEK</div>
    <div class="app-middle">
        <div class="app-navigation">
            <ul>
                <li class="app-link"><a href="#">link</a></li>
                <li class="app-link"><a href="#">link</a></li>
                <li class="app-link"><a href="#">link</a></li>
            </ul>
        </div>
        <div class="app-main">
            <div class="app-main-content">główna zawartość</div>
        </div>
        <div class="app-aside">
            <div class="app-news-title">news</div>
            <div class="app-news-box">
                <div class="app-news-content">
                    Cześć: ${profile.first_name}<br>
                    Dzisiaj jest: ${date}<br>
                    Godzina:
                    Przedmiot: TI
                    <div id="urodziny">Urodziny masz za:</div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
