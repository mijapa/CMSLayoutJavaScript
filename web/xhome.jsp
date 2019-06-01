<%@ page import="java.time.LocalDate" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="java.time.temporal.ChronoUnit" %><%--
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
    <link rel="stylesheet" href="xhome.css"/>
    <script src="xhome.js"></script>
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
                    Godzina: <%= (LocalDateTime.now().getHour())%>:<%= (LocalDateTime.now().getMinute())%><br>
                    Firma: TI
                    <div id="urodziny">Urodziny masz za:</div>
                    <% LocalDate dataUrodzin = LocalDate.parse("2020-01-17");
                    %>
                    <%= ChronoUnit.DAYS.between(LocalDate.now(), dataUrodzin)
                    %>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
