<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlPaciente.ascx.cs" Inherits="Necropsyology.Admin.Ctrls.ReporteNecros.CtrlPaciente" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
        <table class="TablaPaciente">
            <tr>
                <td colspan="2" class="RenglonSeparador"></td>
            </tr>
            <tr class="TituloSeccionPaciente">
                <td colspan="3">
                    <asp:Label ID="LblTitPaciente" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="Columna333">
                    <asp:Label ID="LblEtiIdAnimal" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
                <td class="Columna333">
                    <asp:Label ID="LblEtiEspecie" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
                <td class="Columna333">
                    <asp:Label ID="LblEtiSexo" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="Columna333">
                    <asp:Label ID="LblValEtiIdAnimal" runat="server" CssClass="LeftValor"></asp:Label>
                </td>
                <td class="Columna333">
                    <asp:DropDownList ID="DDLEspecie" runat="server" OnSelectedIndexChanged="DDLEspecie_SelectedIndexChanged" CssClass="EstiloCombo"></asp:DropDownList>
                </td>
                <td class="Columna333">
                    <asp:DropDownList ID="DDLSexo" runat="server" CssClass="EstiloCombo">
                        <asp:ListItem Value="0">Hembra</asp:ListItem>
                        <asp:ListItem Value="1">Macho</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="Columna333">
                    <asp:Label ID="LblEtiEdad" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
                <td class="Columna333">
                    <asp:Label ID="LblEtiPeso" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
                <td class="Columna333">
                    <asp:Label ID="LblEtiColor" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="Columna333">
                    <asp:Panel ID="PnlEdad" runat="server"></asp:Panel>
                </td>
                <td class="Columna333">
                    <asp:Panel ID="PnlPeso" runat="server"></asp:Panel>
                </td>
                <td class="Columna333">
                    <asp:Panel ID="PnlColor" runat="server"></asp:Panel>
                </td>
            </tr>

            <tr>
                <td class="Columna333">
                    <asp:Label ID="LblEtiLugMue" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
                <td class="Columna333">
                    <asp:Label ID="LblEtiEut" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
                <td class="Columna333">
                    <asp:Label ID="LblEtiFecMue" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="Columna333">
                    <asp:Panel ID="PnlLugMue" runat="server"></asp:Panel>
                </td>
                <td class="Columna333">
                    <asp:Panel ID="PnlEut" runat="server"></asp:Panel>
                </td>
                <td class="Columna333">                   
                    <asp:Panel ID="PnlFecMue" runat="server"></asp:Panel>
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="LblEtiCond" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>                
            </tr>
            <tr>
                <td colspan="3">                   
                    <asp:Panel ID="PnlCondicion" runat="server"></asp:Panel>
                </td>
            </tr>
            <tr class="RenglonSeparador">
            <td></td>
        </tr>
        </table>        
    </ContentTemplate>
</asp:UpdatePanel>

