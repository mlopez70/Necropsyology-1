<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebReporteMVZ.ascx.cs" Inherits="Necropsyology.Admin.Ctrls.ReporteNecros.WebReporteMVZ" %>
<div class="card_Edit card-default card-outline">
    <table  class="table table-bordered TablaMVZ">
        <tr>
            <td colspan="3" class="TituloMVZ">
                <asp:Label ID="Label1" runat="server" Text="Datos del MVZ" ></asp:Label>
            </td>
        </tr>
        <tr>
            <td rowspan="2" class="Imagenes">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/avatars/user-03.jpg" />
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
           
            <td>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></td>
        </tr>
    </table>
<%--    <div class="card-header" style="background-color: #274583;">
        <div class="text-center col-12">
            <h3 style="color: white;">DATOS DEL MVZ</h3>
        </div>
    </div>
    <div class="card-body p-0">
        <table class="table table-bordered">

            <tbody>
                <tr>
                    <td rowspan="2" class="text-center" style="border: #274583 1px solid;">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/catcirugia1.png" Style="position: relative; width: 150px; height: auto; margin: 0 auto;" />
                    </td>
                    <td class="label-color" style="border: #274583 1px solid;">Nombre
                         <asp:TextBox ID="txtClient" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="label-color" style="border: #274583 1px solid;">E-mail
                        <asp:TextBox ID="txtEmail" Text="" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                </tr>
                <tr>

                    <td class="label-color" style="border: #274583 1px solid;">Teléfono
                            <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>

                    <td class="label-color" style="border: #274583 1px solid;"># Cédula profesional
                           <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control"></asp:TextBox>

                    </td>
                </tr>

            </tbody>
        </table>
    </div>--%>
</div>
