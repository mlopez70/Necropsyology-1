<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebReporteMVZ.ascx.cs" Inherits="Necropsyology.Admin.Ctrls.ReporteNecros.WebReporteMVZ" %>

<table class="TablaMVZ">
    <tr>
        <td colspan="3" class="RenglonSeparador"></td>
    </tr>
    <tr class="TituloSeccionMVZ">
        <td colspan="3">
            <asp:Label ID="LblTitMVZ" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td rowspan="2" >
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/avatars/user-03.jpg" CssClass="LogoMVZ" />
        </td>
        <td>
            <asp:Label ID="LblEtiNomMVZ" runat="server" CssClass="LeftEtiqueta"></asp:Label>
            <br />
            <asp:Label ID="LblValNomMVZ" runat="server" CssClass="LeftValor"></asp:Label>
        </td>
        <td>
            <asp:Label ID="LblEtiEmailMVZ" runat="server" CssClass="CenterEtiqueta"></asp:Label>
            <br />
            <asp:Label ID="LblValEmailMVZ" runat="server" CssClass="CenterValor"></asp:Label>
            </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="LblEtiTelMVZ" runat="server" CssClass="CenterEtiqueta"></asp:Label>
            <br />
            <asp:Label ID="LblValTelMVZ" runat="server" CssClass="CenterValor"></asp:Label>
        </td>
        <td>
            <asp:Label ID="LblEtiCedMVZ" runat="server" CssClass="CenterEtiqueta"></asp:Label>
            <br />
            <asp:Label ID="LblValCedMVZ" runat="server" CssClass="CenterValor"></asp:Label>
            </td>
    </tr>
</table>



