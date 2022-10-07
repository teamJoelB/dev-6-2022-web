<%-- 
    Document   : index
    Created on : 6 oct. 2022, 10:12:45
    Author     : joelg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dev-6-Web-Primo</title>
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
        <!-- Google Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
        <!-- Bootstrap core CSS -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
        <!-- Material Design Bootstrap -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/css/mdb.min.css" rel="stylesheet">

        <!-- JQuery -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- Bootstrap tooltips -->
        <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
        <!-- Bootstrap core JavaScript -->
        <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <!-- MDB core JavaScript -->
        <script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.1/js/mdb.min.js"></script>
    </head>
    <body>
        <div class="mt-5">
            <div style="margin: auto; width: 40%">
                <form method="POST" action="login">
                    <div class="card p-3 z-depth-3">
                        <div class="md-form">
                            <label>Login</label>
                            <input name="login" type="text" class="form-control">
                        </div>
                        <div class="md-form">
                            <label>Password</label>
                            <input name="password" type="password" class="form-control">
                        </div>
                        <button type="submit" class="btn btn-primary btn-sm btn-block">connexion</button>
                        <button type="button" onclick="location.href='inscription'" class="btn btn-link btn-sm btn-block">Inscription ?</button>
                        <br>
                        <p class="text-danger">${msg}</p>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
