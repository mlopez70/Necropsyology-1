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
    <link href="https://fonts.googleapis.com/css?family=Padauk" rel="stylesheet">
    <!-- Font Awesome-->
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/Login.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="icon" type="image/png" href="../images/Logotipo/favicon.png" />



    <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <!-- Page Content -->
        <div class="container">
            <div class="row">
                <div class="col-md-offset-5 col-md-4 text-center">

                    <asp:ValidationSummary
                        ID="ValSum"
                        DisplayMode="BulletList"
                        runat="server"
                        BorderColor="Red" BackColor="Transparent" ForeColor="Red" Font-Size="12" />

                    <h1 class='text-dark'>
                        <asp:Label ID="LblCtrlAcceso" runat="server" Text=""></asp:Label>
                    </h1>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="form-login">
                                <br />
                                <h4>
                                    <asp:Label ID="LblAccSeguro" runat="server" Text=""></asp:Label></h4>
                                <br />
                                <asp:TextBox ID="TxtUsuario" runat="server" class="form-control input-sm chat-input"></asp:TextBox>
                                <asp:RequiredFieldValidator
                                    ID="RFVUser"
                                    ControlToValidate="TxtUsuario"
                                    ErrorMessage="Card Type. "
                                    Display="Static"
                                    InitialValue="" Width="100%" runat="server">
                            *
                                </asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator
                                    ID="REXUser"
                                    CssClass="btn-danger"
                                    runat="server"
                                    ErrorMessage="*"
                                    ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"
                                    ControlToValidate="TxtUsuario"></asp:RegularExpressionValidator>
                                <br />
                                <br />
                                <asp:TextBox ID="TxtPass" TextMode="Password" class="form-control input-sm chat-input" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator
                                    ID="RFVPass"
                                    ControlToValidate="TxtPass"
                                    ErrorMessage="Card Type. "
                                    Display="Static"
                                    InitialValue="" Width="100%" runat="server">*
                                </asp:RequiredFieldValidator>

                                <br />
                                <br />
                                <div class="wrapper">
                                    <span class="group-btn">
                                        <asp:Button ID="BtnLogin" runat="server" class="btn btn-success btn-lg" OnClick="BtnLogin_Click" />
                                    </span>
                                     <span class="group-btn">
                                        <asp:Button ID="BtnRegistro" class="btn btn-warning btn-lg" runat="server" CausesValidation="False" Text="Registro" OnClick="BtnRegistro_Click" />
                                    </span>
                                    <span class="group-btn">
                                        <asp:Button ID="BtnCancelar" class="btn btn-danger btn-lg" runat="server" CausesValidation="False" OnClick="BtnCancelar_Click" />
                                    </span>
                                </div>
                            </div>
                            <asp:UpdateProgress ID="UpdWaitImage" runat="server" DynamicLayout="true" AssociatedUpdatePanelID="UpdatePanel1">
                                <ProgressTemplate>
                                    <asp:Image ID="imgProgress" ImageUrl="~/images/icons/loading-icon.jpg" runat="server" Height="100px" Width="100px" BackColor="Transparent" />
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                        </ContentTemplate>

                    </asp:UpdatePanel>
                </div>
            </div>
            <br />
            <br />
            <br />
            <!--footer-->
            <div class="footer text-dark text-center">
                <div class="col-md-offset-5 col-md-4 text-center">
                    <p>
                        <img src="images/Logotipo/NecroLargo.png" width="100%" />
                    </p>
                    <p>
                        © 2020 <asp:Label ID="LblCRight" runat="server" Text="Etiqueta"></asp:Label>
                    </p>
                </div>
                
            </div>
            <!--//footer-->
        </div>


        <!-- Bootstrap Modal Dialog -->
        <div class="modal fade" id="myModal" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <asp:UpdatePanel ID="upModal" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="modal-content">
                            <div class="modal-header" style="background-color: green">
                                <h4 class="modal-title" style="flood-color: white">NecropsyOlogy </h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body" style="text-align: center; vertical-align: middle; height: 100%; width: 100%;">
                                <asp:Label ID="lblModalBody" runat="server" Text="" CssClass="text-success"></asp:Label>
                            </div>
                            <div class="modal-footer">
                                <button class="btn btn-info" data-dismiss="modal" aria-hidden="true" class="btn btn-warning">Cerrar</button>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>


        <!-- Bootstrap Modal Dialog Mensaje-->
        <div class="modal fade" id="MyMensaje" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <asp:UpdatePanel ID="upModal1" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                    <ContentTemplate>
                        <div class="modal-content">
                            <div class="modal-header" style="background-color: blue">
                                <h4 class="modal-title" style="color: white">NecropsyOlogy </h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body" style="text-align: center; vertical-align: middle; height: 100%; width: 100%;">
                                <asp:Label ID="LblAviso" runat="server" Text="" CssClass="btn btn-success"></asp:Label>
                            </div>
                            <div class="modal-footer">
                                <asp:Button ID="BtnAceptar" runat="server" Text="Aceptar" class="btn btn-success" data-dismiss="modal" aria-hidden="true" />
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
        </div>


        <!-- Bootstrap Modal Dialog -->
        <div class="modal fade" id="myError" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="container">
                <div class="row">
                    <div class="col-md-offset-5 col-md-4 text-center">
                        <div class="modal-dialog">
                            <asp:UpdatePanel ID="UPError" runat="server" ChildrenAsTriggers="false" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <div class="modal-content">
                                        <div class="modal-header" style="background-color: red">
                                            <h1 class="modal-title" style="flood-color: black; color: white">NecropsyOlogy </h1>
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                        </div>
                                        <div class="modal-body" style="text-align: center; vertical-align: middle; height: 100%; width: 100%; font-size-adjust:inherit">
                                             <h3 class="modal-title" > 
                                                 <asp:Label ID="LblEror" runat="server" Text="" CssClass="text-info" />
                                             </h3>                                           
                                        </div>
                                        <div class="modal-footer">
                                            <button class="btn btn-info" data-dismiss="modal" aria-hidden="true" class="btn btn-warning">Cerrar</button>
                                        </div>
                                    </div>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </form>
</body>
</html>

