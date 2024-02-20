<%@ page import="module.Items" %>
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
<%
    Items item = (Items) request.getAttribute("goodsDetails");
%>
<div class="container-fluid mt-4">
    <form action="/updateItem" method="post">
        <div class="modal-body">
            <div class="mb-3 mx-5 px-5">
                <label for="goodsName" class="form-label">Goods name</label>
                <input name="id" type="hidden" value="<%=item.getId()%>">
                <input value="<%=item.getName()%>" name="name" type="text" class="form-control" id="goodsName">
            </div>
            <div class="mb-3 mx-5 px-5">
                <label for="goodsDescription" class="form-label">Goods description</label>
                <input value="<%=item.getDescription()%>" name="description" type="text" class="form-control" id="goodsDescription">
            </div>
            <div class="mb-3 mx-5 px-5">
                <label for="goodsPrice" class="form-label">Goods price</label>
                <input value="<%=item.getPrice()%>" name="price" type="number" class="form-control" id="goodsPrice">
            </div>
        </div>
        <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal1">
                Delete
            </button>
            <button type="submit" class="btn btn-success">Update</button>
        </div>
        <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="/deleteItem" method="post">
                        <div class="modal-header">
                            <input name="idd" type="hidden" value="<%=item.getId()%>">
                            <h5 class="modal-title" id="exampleModalLabel">Delete item <%=item.getId()%></h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-success" data-bs-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-danger">Delete</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>
