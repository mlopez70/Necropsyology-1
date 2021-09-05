<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CtrlPaciente.ascx.cs" Inherits="Necropsyology.Admin.Ctrls.ReporteNecros.CtrlPaciente" %>
   <table class="TablaPaciente">
            <tr>
                <td colspan="2" class="RenglonSeparador"></td>
            </tr>
            <tr class="TituloSeccionPaciente">
                <td colspan="2">
                    <asp:Label ID="LblTitDatGral" runat="server" Text="Informacion del Paciente"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="Columna50">
                    <asp:Label ID="LblEtiOrg" runat="server" CssClass="LeftEtiqueta"></asp:Label>
                </td>
                <td class="Columna50">
                    
                </td>
            </tr>
            <tr>
                <td class="Columna50">
                    <asp:Label ID="LblEtiNomOrg" runat="server" CssClass="LeftEtiqueta"  Text="Informacion del Paciente"></asp:Label>
                </td>
                <td class="Columna50">
                    <asp:Label ID="LblValNomOrg" runat="server" CssClass="LeftValor"  Text="Informacion del Paciente"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="Columna50">
                    <asp:Label ID="LblEtiDomOrg" runat="server" CssClass="LeftEtiqueta"  Text="Informacion del Paciente"></asp:Label>
                </td>
                <td class="Columna50">
                    <asp:Label ID="LblValDomOrg" runat="server" CssClass="LeftValor"  Text="Informacion del Paciente"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="Columna50">
                    <asp:Label ID="LblEtiPropOrg" runat="server" CssClass="LeftEtiqueta"  Text="Informacion del Paciente"></asp:Label>
                </td>
                <td class="Columna50">
                    <asp:Label ID="LblValPropOrg" runat="server" CssClass="LeftValor"  Text="Informacion del Paciente"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="Columna50">
                    <asp:Label ID="LblEtiTelOrg" runat="server" CssClass="LeftEtiqueta"  Text="Informacion del Paciente"></asp:Label>
                </td>
                <td class="Columna50">
                    <asp:Label ID="LblValTelOrg" runat="server" CssClass="LeftValor"  Text="Informacion del Paciente"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="Columna50">
                    <asp:Label ID="LblEtiMailOrg" runat="server" CssClass="LeftEtiqueta"  Text="Informacion del Paciente"></asp:Label>
                </td>
                <td class="Columna50">
                    <asp:Label ID="LblValMailOrg" runat="server" CssClass="LeftValor" Style="text-transform: lowercase"  Text="Informacion del Paciente"></asp:Label>
                </td>
            </tr>
        </table>