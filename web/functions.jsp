<%--
  Created by IntelliJ IDEA.
  User: micha
  Date: 31.05.19
  Time: 18:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>functions</title>
    <link rel="stylesheet" href="functions.css"/>
</head>
<body>
<div id="function-container">
    <form action="function" method="post">
        <select name="strona">
            <option>domowa</option>
            <option>inna</option>
        </select>
        <div class="f-input">
            <div><label for="imie">Imie</label></div>
            <div><input type="checkbox" id="imie" name="imie" checked></div>
        </div>
        <div class="f-input">
            <div><label for="godzina">Imie</label></div>
            <div><input type="checkbox" id="godzina" name="godzina" checked></div>
        </div>
        <div class="f-input">
            <div><label for="imie">Imie</label></div>
            <div><input type="checkbox" id="imie" name="imie" checked></div>
        </div>

        <button type="submit">zatwierdź</button>
    </form>
</div>
</body>
</html>
