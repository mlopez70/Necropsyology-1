<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PruebaImagen.aspx.cs" Inherits="Necropsyology.Admin.PruebaImagen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="PnlFotos" runat="server">
                <table>
                    <tr>
                        <td>
                            <asp:FileUpload ID="FupImg" runat="server" AllowMultiple="True" />
                        </td>
                        <td>
                            <asp:Button ID="BtnCarga" runat="server" Text="Procesa" CssClass="btn btn-success" OnClick="BtnCarga_Click"/>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
