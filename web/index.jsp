<%@ page import="module.Items" %>
<%@ page import="java.util.List" %>
<%@ page import="db.DBManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap demo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
              crossorigin="anonymous">
    </head>
    <title>Title</title>
</head>
<body>
<%@include file="navbar.jsp" %>
<div class="container mx-5 px-5">
    <br>
    <div class="d-flex row text-center">
        <h2>Welcome to the Shop</h2>
        <p>Some text...</p>
    </div>
    <div class="row d-flex justify-content-center">
        <%
            List<Items> items = DBManager.getAllItems();
            for (Items item : items) {
        %>
        <div class="card mx-2" style="width: 18rem;">
            <div class="card-body">
                <h4 class="card-title"><%=item.getName()%></h4>
                <hr>
                <h5 class="card-title"><%=item.getPrice()%></h5>
                <p class="card-text"><%=item.getDescription()%></p>
                <a href="/details?id=<%=item.getId()%>" class="btn btn-primary">More...</a>
            </div>
        </div>
        <%}%>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
