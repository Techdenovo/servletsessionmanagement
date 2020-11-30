<%@ page import="com.techdenovo.app.servletsessionmanagement.model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<%--    <link rel="stylesheet" href="assets/css/login.css" />--%>
</head>
<body style="background-color:#fff8db">
<%
    if (session.getAttribute("user")==null){
        response.sendRedirect("login.jsp");
    }
%>
<%--<%--%>
<%--    String message = null;--%>
<%--    String sessionID =  null;--%>

<%--    Cookie[] cookies = request.getCookies();--%>
<%--    if(cookies!=null){--%>
<%--        for (Cookie cookie: cookies){--%>
<%--//            if (cookie.getName().equals("message")) message = cookie.getValue();--%>
<%--            if (cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();--%>
<%--        }--%>
<%--    }--%>
<%--%>--%>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark border-bottom box-shadow">
    <a class="navbar-brand" href="#">ddarchitects Blogs</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="<%=request.getContextPath() %>/">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="<%=request.getContextPath() %>/dashboard">Dashboard</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownUser" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    User
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="<%=request.getContextPath() %>/users">List User</a>
                    <a class="dropdown-item" href="add-user.jsp">Add User</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownBlog" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Blog
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="<%=request.getContextPath() %>/blogs">List Blog</a>
                    <a class="dropdown-item" href="<%=request.getContextPath() %>/blogaddform">Add Blog</a>
                </div>
            </li>

        </ul>
        <p class="h6 mr-2" style="color: #fff8db">Welcome ${user.firstName} ${user.lastName}</p>
        <ul class="navbar-nav justify-content-end">
            <a class="btn btn-sm btn-danger btn-block" href="${pageContext.request.contextPath}/logout" >Sign out</a>
        </ul>
    </div>

</nav>
<div class="container mt-4 ">
    <div class="row">

            <div class="col-md-3 "></div>
            <div class="col-md-3 ">
                <div class="card-deck mb-3 text-center">
                    <div class="card mb-4 box-shadow">
                        <div class="card-header">
                            <h4 class="my-0 font-weight-normal">Total Users</h4>
                        </div>
                        <div class="card-body">
                            <h1 class="card-title pricing-card-title">0${usersCount} <small class="text-muted"></small></h1>
                            <ul class="list-unstyled mt-3 mb-4">
                                <li>10 users Active</li>
                                <li>10 users inActive</li>
                            </ul>
                            <button type="button" class="btn   btn-outline-primary">List Users</button>
                            <button type="button" class="btn   btn-outline-primary">Add User</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3">
                <div class="card-deck mb-3 text-center">
                    <div class="card mb-4 box-shadow">
                        <div class="card-header">
                            <h4 class="my-0 font-weight-normal">Total Blogs</h4>
                        </div>
                        <div class="card-body">
                            <h1 class="card-title pricing-card-title">0${blogsCount} <small class="text-muted"></small></h1>
                            <ul class="list-unstyled mt-3 mb-4">
                                <li>10 Blogs Pubished</li>
                                <li>10 users not published</li>
                            </ul>
                            <button type="button" class="btn   btn-outline-primary">List Blogs</button>
                            <button type="button" class="btn   btn-outline-primary">Add Blog</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3"></div>

        </div>

    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>
