<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Encrytacion.aspx.cs" Inherits="Necropsyology.Admin.Encrytacion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;text-align:center;vertical-align:middle">
                <tr>
                    <td style="width:20%">
                        <asp:Label ID="Label1" runat="server" Text="Cadena"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtValor" runat="server" Width="80%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width:20%">
                        <asp:Label ID="Label2" runat="server" Text="ContraParte"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtControl" runat="server" Width="80%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width:20%">
                        <asp:Label ID="Label3" runat="server" Text="Llave"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtLlave" runat="server" Width="80%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" >
                        <table style="width:50%;text-align:center;vertical-align:middle; margin:20px auto">
                            <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="Encrypta" OnClick="Button1_Click" />
                                </td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" Text="Desencrypta" OnClick="Button2_Click" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Resultado"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TxtResult" runat="server" Width="80%"></asp:TextBox>
                        </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
