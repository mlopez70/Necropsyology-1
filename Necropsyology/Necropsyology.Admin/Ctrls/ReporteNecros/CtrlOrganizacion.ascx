<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlOrganizacion.ascx.cs" Inherits="Necropsyology.Admin.Ctrls.CtrlOrganizacion" %>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <table class="TablaDatGral">
            <tr>
                <td colspan="2" class="RenglonSeparador"></td>
            </tr>
            <tr class="TituloSeccionDatGral">
                <td colspan="2">
                    <asp:Label ID="LblTitDatGral" runat="server" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="Columna25">
                    <asp:Label ID="LblEtiOrg" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
                <td class="Columna75">
                    <asp:DropDownList ID="DDLOrg" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DDLOrg_SelectedIndexChanged" CssClass="EstiloCombo"></asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="Columna25">
                    <asp:Label ID="LblEtiNomOrg" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
                <td class="Columna75">
                    <asp:Label ID="LblValNomOrg" runat="server" CssClass="LeftValor"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="Columna25">
                    <asp:Label ID="LblEtiDomOrg" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
                <td class="Columna75">
                    <asp:Label ID="LblValDomOrg" runat="server" CssClass="LeftValor"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="Columna25">
                    <asp:Label ID="LblEtiPropOrg" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
                <td class="Columna75">
                    <asp:Label ID="LblValPropOrg" runat="server" CssClass="LeftValor"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="Columna25">
                    <asp:Label ID="LblEtiTelOrg" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
                <td class="Columna75">
                    <asp:Label ID="LblValTelOrg" runat="server" CssClass="LeftValor"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="Columna25">
                    <asp:Label ID="LblEtiMailOrg" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
                <td class="Columna75">
                    <asp:Label ID="LblValMailOrg" runat="server" CssClass="LeftValor" Style="text-transform: lowercase"></asp:Label>
                </td>
            </tr>
            <tr class="RenglonSeparador">
            <td></td>
        </tr>
        </table>
    </ContentTemplate>
    <Triggers>
        <asp:AsyncPostBackTrigger ControlID="DDLOrg" EventName="SelectedIndexChanged" />
    </Triggers>
</asp:UpdatePanel>
