<%@ Page Title="" Language="C#" MasterPageFile="~/Necros.Master" AutoEventWireup="true" CodeBehind="Necropsias.aspx.cs" Inherits="Necropsyology.Admin.Necropsias" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>--%>
    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
        <table class="TablaPrincipal">
            <tr>
                <td colspan="3">
                    <asp:Label ID="LblTitulo" runat="server" CssClass="TituloListado"></asp:Label>
                </td>
            </tr>
            <tr class="RenglonBoton">
                <td>
                    <asp:Button ID="BtnNewOrg" runat="server" class="BtnNewOrganiza" />
                </td>
                <td>
                    <asp:Button ID="BtnNewRepGral" runat="server" class="BtnNewGeneral" />
                </td>
                <td>
                    <asp:Button ID="BtnNewRepBov" runat="server" class="BtnNewBovino" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GrdNecros" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" Width="100%" Font-Size="X-Small" OnPageIndexChanging="GrdNecros_PageIndexChanging" CellPadding="3" OnSelectedIndexChanged="GrdNecros_SelectedIndexChanged" Font-Names="Calibri" BackColor="White" BorderColor="#66CCFF" BorderStyle="Solid" BorderWidth="1px">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:BoundField DataField="Folio" HeaderText="Folio" SortExpression="Folio">
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="5%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Fecha" SortExpression="Fecha">
                                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="5%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Organizacion" HeaderText="Organizacion" SortExpression="Organizacion">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="35%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Id_Animal" HeaderText="Animal" SortExpression="Id_Animal">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="10%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Diagnostico" HeaderText="Diagnostico" SortExpression="Diagnostico">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="30%" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Acciones">
                                <ItemTemplate>
                                    <div class="btn-group btn-group-sm">
                                        <asp:Button ID="BtnAccion" runat="server" class="btn btn-info dropdown-toggle" data-toggle="dropdown" Text="..." />
                                        <%-- <button class="btn btn-info dropdown-toggle" data-toggle="dropdown" >
                                            Opciones
                                        </button>--%>
                                        <div class="dropdown-menu btn-success">
                                            <asp:LinkButton ID="BtnEditGral" runat="server" CausesValidation="false" CommandName="select" CssClass="btn btn-success" Font-Size="X-Small" OnClick="BtnEditGral_Click" Width="100%"><i class="fa fa-edit"></i> Editar reporte general</asp:LinkButton>
                                            <br />
                                            <asp:LinkButton ID="BtnEdtBovino" runat="server" CausesValidation="false" CommandName="select" CssClass="btn btn-success" Font-Size="X-Small" OnClick="BtnEditBov_Click" Width="100%"><i class="fa fa-edit"></i> Editar reporte bovino</asp:LinkButton>
                                        </div>
                                    </div>
                                    <asp:Label ID="LblFolio" runat="server" Text='<%# Bind("Folio") %>' Visible="False"></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle CssClass="text-center" />
                                <ItemStyle CssClass="text-center" Width="10%" />
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                </td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>
