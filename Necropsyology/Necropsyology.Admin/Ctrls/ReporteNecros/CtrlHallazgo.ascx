<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlHallazgo.ascx.cs" Inherits="Necropsyology.Admin.Ctrls.ReporteNecros.CtrlHallazgo" %>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <table class="TablaHallazgo">
            <tr>
                <td class="RenglonSeparador"></td>
            </tr>
            <tr class="TituloSeccionHallazgo">
                <td colspan="2">
                    <asp:Label ID="LblTitHallazgo" runat="server"></asp:Label>
                </td>
            </tr>
            <tr class="RenglonSeparador">
                <td></td>
            </tr>
            <tr class="SubTituloSeccionHallazgo">
                <td colspan="2">
                    <asp:Label ID="LblSubTitEsqueleto" runat="server"></asp:Label>
                </td>
            </tr>
             <tr>
                <td class="Columna45">
                    <asp:Label ID="LblEtiColorEsq" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
                <td class="Columna45">
                    <asp:Label ID="LblEtiEdema" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="Columna45">
                    <asp:Panel ID="PnlColorEsq" runat="server"></asp:Panel>
                </td>
                <td class="Columna45">
                    <asp:Panel ID="PnlEdema" runat="server"></asp:Panel>
                </td>
            </tr>
            <tr class="RenglonSeparador">
                <td></td>
            </tr>
        </table>
    </ContentTemplate>
</asp:UpdatePanel>