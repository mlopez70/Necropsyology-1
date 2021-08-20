<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PruebaImagen.aspx.cs" Inherits="Necropsyology.Admin.PruebaImagen" %>

<%@ Register Src="~/Ctrls/Pulmon.ascx" TagPrefix="uc1" TagName="Pulmon" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager> 
        <uc1:Pulmon runat="server" ID="Pulmon" />
        
    </form>
</body>
</html>
