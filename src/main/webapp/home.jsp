<%@ page import="java.util.ArrayList" %>
<%@ page import="model.Product" %>
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap 4 Website Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .fakeimg {
            height: 200px;
            background: #aaa;
        }
    </style>
</head>
<body>

<div class="jumbotron text-center" style="margin-bottom:0">
    <h1>My First Bootstrap 4 Page</h1>
    <p>Resize this responsive page to see the effect!</p>
</div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Link</a>
            </li>
        </ul>
    </div>
</nav>

<div class="container" style="margin-top:30px">
    <div class="row">
        <div class="col-sm-12">
            <h2>model.Product</h2>
            <button type="button" class="btn btn-success">Create Product</button>
            <table class="table table-striped">
                <thead>
                <tr>
                    <th>id</th>
                    <th>name</th>
                    <th>img</th>
                    <th>edit</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
<%--                <%--%>
<%--                    String str = "";--%>
<%--                    ArrayList<Product> list = (ArrayList<Product>) request.getAttribute("products");--%>
<%--                    for (Product p: list) {--%>
<%--                        str += "<tr>\n" +--%>
<%--                                "                    <td>" + p.getId() + "</td>\n" +--%>
<%--                                "                    <td>" + p.getName() + "</td>\n" +--%>
<%--                                "                    <td> <img src='" + p.getImg() + "' width=\"300\" height=\"250\"> </td>\n" +--%>
<%--                                "                </tr>";--%>
<%--                    }--%>
<%--                %>--%>
<%--                <%=str%>--%>


                <a:forEach var="p" items="${products}">
                    <tr>
                        <td>p.id</td>
                        <td>p.name</td>
                        <td><img src="${p.img}" height="250" width="300"></td>
                        <td><a href="/login?action=edit" class="btn btn-warning">Edit</a>
                        <td><a type="button" class="btn btn-danger">Delete</a>
                        </td>
                    </tr>
                </a:forEach>
                </tbody>
            </table>
            <h1>show userName</h1>
            <%= request.getParameter("username")%>
        </div>
    </div>
</div>

<div class="jumbotron text-center" style="margin-bottom:0">
    <p>Footer</p>
</div>

</body>
</html>
