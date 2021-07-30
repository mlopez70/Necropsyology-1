<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Necropsyology.Admin.Login" %>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!--author:starttemplate-->
<!--reference site : starttemplate.com-->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="keywords" content="unique login form,leamug login form,boostrap login form,responsive login form,free css html login form,download login form">
    <meta name="author" content="leamug">
    <title>Necropsyology [Login]</title>


    <!-- Bootstrap core Library -->
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css" />
    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script" rel="stylesheet">
    <!-- Font Awesome-->
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/Login.css" rel="stylesheet" />
     <link rel="icon" type="image/png" href="../images/Logotipo/favicon.png" />

    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</head>
<body>
    <form runat="server">
        <!-- Page Content -->
        <div class="container">
            <div class="row">
                <div class="col-md-offset-5 col-md-4 text-center">
                    <h1 class='text-dark'>Control de Acceso</h1>
                    <div class="form-login">
                        <br/>
               
                    <h4>Acceso Seguro</h4>
                        <br/>
               
                    <input type="text" id="userName" class="form-control input-sm chat-input" placeholder="Usuario" />
                        <br/>
                    <br/>

                    <asp:TextBox ID="TxtPass" TextMode="Password" class="form-control input-sm chat-input" placeholder="Contraseña" runat="server"></asp:TextBox>
                        <br/><br/>
               
                    <div class="wrapper">
                        <span class="group-btn">
                            <a href="#" class="btn btn-danger btn-md">Ingreso <i class="fa fa-sign-in"></i></a>
                        </span>
                    </div>
                    </div>
                </div>
            </div>
            <br/>
            <br/>
            <br/>
            <!--footer-->
            <div class="footer text-dark text-center">
                <p>
                    © 2020
                    <img src="images/LOGO_NECROPSYOLOGY.png" width="250px" />
                    All rights reserved
                </p>
            </div>
            <!--//footer-->
        </div>
    </form>
</body>
</html>

