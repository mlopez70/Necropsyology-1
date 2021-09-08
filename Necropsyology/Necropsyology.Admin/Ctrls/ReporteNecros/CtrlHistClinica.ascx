<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlHistClinica.ascx.cs" Inherits="Necropsyology.Admin.Ctrls.ReporteNecros.CtrlHistClinica" %>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <table class="TablaHistoria">
            <tr>
                <td class="RenglonSeparador"></td>
            </tr>
            <tr class="TituloSeccionHistoria">
                <td colspan="2">
                    <asp:Label ID="LblTitHistoria" runat="server"></asp:Label>
                </td>
            </tr>
            <tr class="RenglonSeparador">
                <td></td>
            </tr>
            <tr>
                <td class="Columna45">
                    <asp:Label ID="LblEtiSignos" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
                <td class="Columna45">
                    <asp:Label ID="LblEtiTratamiento" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="Columna45">
                    <asp:Panel ID="PnlSignos" runat="server"></asp:Panel>
                </td>
                <td class="Columna45">
                    <asp:Panel ID="PnlTratamiento" runat="server"></asp:Panel>
                </td>
            </tr>
             <tr>
                <td class="Columna45">
                    <asp:Label ID="LblEtiDiagnostico" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
                <td class="Columna45">
                    <asp:Label ID="LblEtiHistoria" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="Columna45">
                    <asp:Panel ID="PnlDiagnostico" runat="server"></asp:Panel>
                </td>
                <td class="Columna45">
                    <asp:Panel ID="PnlHistoria" runat="server"></asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="Columna45">
                    <asp:Label ID="LblEtiDiasEnfer" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="Columna45">
                    <asp:Panel ID="PnlDiasEnfer" runat="server"></asp:Panel>
                </td>
            </tr>
            <tr class="RenglonSeparador">
                <td></td>
            </tr>
        </table>
    </ContentTemplate>
</asp:UpdatePanel>