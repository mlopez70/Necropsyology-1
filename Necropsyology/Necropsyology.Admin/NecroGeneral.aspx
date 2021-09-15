<%@ Page Title="" Language="C#" MasterPageFile="~/Necros.Master" AutoEventWireup="true" CodeBehind="NecroGeneral.aspx.cs" Inherits="Necropsyology.Admin.NecroGeneral" %>

<%@ Register Src="~/Ctrls/ReporteNecros/Header.ascx" TagPrefix="uc1" TagName="Header" %>
<%@ Register Src="~/Ctrls/ReporteNecros/WebReporteMVZ.ascx" TagPrefix="uc1" TagName="WebReporteMVZ" %>
<%@ Register Src="~/Ctrls/ReporteNecros/CtrlOrganizacion.ascx" TagPrefix="uc1" TagName="CtrlOrganizacion" %>
<%@ Register Src="~/Ctrls/ReporteNecros/CtrlPaciente.ascx" TagPrefix="uc1" TagName="CtrlPaciente" %>
<%@ Register Src="~/Ctrls/ReporteNecros/CtrlHistClinica.ascx" TagPrefix="uc1" TagName="CtrlHistClinica" %>
<%@ Register Src="~/Ctrls/ReporteNecros/CtrlHallazgo.ascx" TagPrefix="uc1" TagName="CtrlHallazgo" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- ReporteGEneral--%>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table class="TablaContenedora">
                <tr>
                    <td colspan="3">
                        <uc1:Header runat="server" ID="Header" />
                    </td>

                </tr>
                <tr class="RenglonSeparador">
                    <td></td>
                </tr>
                <tr>
                    <td class="Columna45">
                        <uc1:WebReporteMVZ runat="server" ID="WebReporteMVZ" />
                    </td>
                    <td class="ColumnaSeparador"></td>
                    <td class="Columna45">
                        <uc1:CtrlOrganizacion runat="server" ID="CtrlOrganizacion" />
                    </td>
                </tr>              
                <tr>
                    <td colspan="3">
                        <div class="DivPaciente">
                            <uc1:CtrlPaciente runat="server" ID="CtrlPaciente" />
                        </div>
                    </td>
                </tr>               
                <tr>
                    <td colspan="3">
                        <div class="DivHistoria">
                            <uc1:CtrlHistClinica runat="server" ID="CtrlHistClinica" />
                        </div>
                    </td>
                </tr>
                 <tr>
                    <td colspan="3">
                        <div class="DivHallazgo">
                            <uc1:CtrlHallazgo runat="server" ID="CtrlHallazgo" />
                        </div>
                    </td>
                </tr>
                <tr class="RenglonSeparador">
                    <td></td>
                </tr>
                <tr>
                    <td colspan="3">
                        <table class="TablaBotoneria">
                            <tr>
                                <td>
                                    <asp:Button ID="BtnLogin" runat="server" class="BtnGuardar" Text="Prueba de click" OnClick="BtnLogin_Click" /></td>
                                <td>
                                    <asp:Button ID="Button1" runat="server" class="BtnAceptar" Text="Prueba de click" OnClick="BtnLogin_Click" /></td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" class="BtnAceptar" Text="Prueba de click" OnClick="BtnLogin_Click" /></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>



 
</asp:Content>
