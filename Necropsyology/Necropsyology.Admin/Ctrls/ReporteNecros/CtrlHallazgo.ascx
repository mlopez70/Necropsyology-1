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
         
        </table>
    </ContentTemplate>
</asp:UpdatePanel>