<%--
  Created by IntelliJ IDEA.
  User: micha
  Date: 31.05.19
  Time: 17:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Functions</title>
    <link rel="stylesheet" href="pages.css"/>
</head>
<body>
<div class="confirmation">
    <% if (request.getAttribute("created") != null) {
    %>
    <div class="callout callout-info">
        <h4>OK!</h4>

        <p>Strona została utworzona</p>
    </div>
    <%}%>
</div>
<div class="box">
    <div class="box-header with-border">
        <h3 class="box-title">PAGES</h3>
    </div>
    <div class="box-body">
        <table class="table table-bordered">
            <tr>
                <th>#</th>
                <th>Bame</th>
                <th>Functions</th>
                <th>Go to</th>
            </tr>
            <tr>
                <td>1.</td>
                <td>domowa</td>
                <td>

                    <div class="badge bg-red"><a href="#">usuń</a></div>
                    <div data-id="functions" class="button badge bg-light-blue"><a href="#">functions</a></div>
                </td>
                <td><a href="xhome.jsp">-></a></td>
            </tr>
        </table>
    </div>
    <div class="box-footer clearfix">
        <ul class="pagination pagination-sm no-margin pull-right">
            <li><a href="#">«</a></li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">»</a></li>
        </ul>

    </div>
</div>
</body>
</html>
