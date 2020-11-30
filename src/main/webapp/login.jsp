<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ddarchitects Blogs</title>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page isELIgnored="false" %>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="assets/css/login.css" />
</head>
<body class="text-center">
    
        <form class="form-signin" action="${pageContext.request.contextPath}/login" method="post">
            <img class="mb-4" src="http://newsite.ddarchitects.in/images/logo/logo-homepage_transparent.svg" alt="" width="300" height="72">
            <h1 class="h3 mb-3 font-weight-normal">Please sign in</h1>
            <label for="inputusername" class="sr-only">username</label>
            <input type="text" id="inputusername" class="form-control" placeholder="Username" name="username" required autofocus>
            <label for="inputPassword" class="sr-only">Password</label>
            <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password" required>
            <br><p style="color: red">${message}</p><br>
            <button class="btn btn-lg btn-primary btn-block" type="submit" id="signinbtn">Sign in</button>
            <p class="mt-5 mb-3 text-muted">Blogs Management Panel</p>
          </form>
    
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
        <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.0/dist/jquery.validate.min.js"></script>
        <script type="text/javascript">
            $(document).ready(function() {
                $("#loginForm").validate({
                    rules: {
                        username: {
                            required: true
                        },
                        password: {
                            required: true
                        }
                    },
                    messages: {
                        username: {
                            required: "Please enter username"
                        },
                        password: {
                            required: "Please enter password"
                        }
                    }
                });
            });
        </script>
</body>
</html>
