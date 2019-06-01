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
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">Quick Example</h3>
        </div>
        <!-- /.box-header -->
        <!-- form start -->
        <form role="form">
            <div class="box-body">
                <div class="form-group">
                    <label>Choose site</label>
                    <select class="form-control select2 select2-hidden-accessible" style="width: 100%;" tabindex="-1"
                            aria-hidden="true">
                        <option selected="selected">Home page</option>
                        <option>Other</option>
                        <option>Another</option>
                    </select>
                </div>

                <div class="checkbox">
                    <label>
                        <input type="checkbox"> ad.2 Rejestracja Użytkowników
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox"> ad.3a Ilość dni do urodzin
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox"> ad.3b Nazwa przedmiotu
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox"> ad.3c Godzina lub data
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox"> ad.4 Dodawanie zadań
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
</body>
</html>
