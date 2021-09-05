<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="Necropsyology.Admin.Ctrls.ReporteNecros.Header" %>

<table class="HeaderTitulo">
    <tr>
        <td colspan="2">
            <asp:Label ID="LblTitulo" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="LblEtiFolio" runat="server" Text="" CssClass="HeaderEtiqueta"></asp:Label>
            <asp:Label ID="LblValFolio" runat="server" Text="" CssClass="HeaderValor"></asp:Label>
        </td>
        <td>
            <asp:Label ID="LblEtiFecha" runat="server" Text="" CssClass="HeaderEtiqueta"></asp:Label>
             <asp:Label ID="LblValFecha" runat="server" Text="" CssClass="HeaderValor"></asp:Label>
        </td>
    </tr>
</table>

