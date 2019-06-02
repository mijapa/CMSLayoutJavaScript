<%--
  Created by IntelliJ IDEA.
  User: micha
  Date: 02.06.19
  Time: 08:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create</title>
</head>
<body>
<div id="function-container">
    <div class="confirmation">
        <% if (request.getAttribute("created") != null) {
        %>
        <div class="callout callout-info">
            <h4>OK!</h4>

            <p>Strona została utworzona</p>
        </div>
        <%}%>
    </div>
    <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title">Choose site elements</h3>
        </div>
        <!-- /.box-header -->
        <!-- form start -->
        <form role="form" action="create" method="get">
            <div class="box-body">
                <div class="form-group">
                    <label>Enter name</label>
                    <input name="name" class="form-control" type="text" placeholder="Default input">
                </div>

                <div class="form-group">
                    <label>Choose layout</label>
                    <select name="layout" class="form-control select2 select2-hidden-accessible" style="width: 100%;"
                            tabindex="-1"
                            aria-hidden="true">
                        <option selected="selected">Default</option>
                        <option>Other</option>
                        <option>Another</option>
                    </select>
                </div>

                <div class="form-group">
                    <label>Choose color</label>
                    <input name="color" type="color" class="form-control my-colorpicker1 colorpicker-element">
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
