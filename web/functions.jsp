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
    <div class="confirmation">
        <% if (request.getAttribute("realized") != null) {
        %>
        <div class="callout callout-info">
            <h4>OK!</h4>

            <p>Zmiany zostały zatwierdzone</p>
        </div>
        <%}%>
    </div>
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">Quick Example</h3>
        </div>
        <!-- /.box-header -->
        <!-- form start -->
        <form role="form" action="function" method="post">
            <div class="box-body">
                <div class="form-group">
                    <label>Choose site</label>
                    <select name="site" class="form-control select2 select2-hidden-accessible" style="width: 100%;"
                            tabindex="-1"
                            aria-hidden="true">
                        <option selected="selected">Home page</option>
                        <option>Other</option>
                        <option>Another</option>
                    </select>
                </div>

                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="registration" value="true"> ad.2 Rejestracja Użytkowników
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="birthday" value="true"> ad.3a Ilość dni do urodzin
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="subject" value="true"> ad.3b Nazwa przedmiotu
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="date" value="true"> ad.3c Godzina lub data
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" name="task" value="true"> ad.4 Dodawanie zadań
                    </label>
                </div>
            </div>
            <!-- /.box-body -->

            <div class="box-footer">
                <button type="submit" class="btn btn-primary">Zatwierdź</button>
            </div>
        </form>
    </div>
</div>

<%--script--%>
<script src="functions.js"></script>
</body>
</html>
