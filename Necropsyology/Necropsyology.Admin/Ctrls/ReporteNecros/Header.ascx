<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="Necropsyology.Admin.Ctrls.ReporteNecros.Header" %>

<table class="table table-bordered TablaPrincipal">
    <tr>
        <td colspan="2" class="HeaderTitulo">
            <h1>
                <asp:Label ID="LblTitulo" runat="server" Text="INFORME/REPORTE GENERAL DE NECROPSIA"></asp:Label>
            </h1>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="LblFolio" runat="server" Text="" CssClass="HeaderEtiqueta" ></asp:Label>
        </td>       
        <td>
            <asp:Label ID="LblFecha" runat="server" Text="" CssClass="HeaderEtiqueta"></asp:Label>
        </td>
    </tr>
</table>

