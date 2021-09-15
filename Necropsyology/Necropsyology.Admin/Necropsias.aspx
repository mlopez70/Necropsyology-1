<%@ Page Title="" Language="C#" MasterPageFile="~/Necros.Master" AutoEventWireup="true" CodeBehind="Necropsias.aspx.cs" Inherits="Necropsyology.Admin.Necropsias" meta:resourcekey="PageResource1" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>--%>
    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" meta:resourcekey="Panel1Resource1">
        <table class="TablaPrincipal">
            <tr>
                <td colspan="3">
                    <asp:Label ID="LblTitulo" runat="server" CssClass="TituloListado" meta:resourcekey="LblTituloResource1"></asp:Label>
                </td>
            </tr>
            <tr class="RenglonBoton">
                <td>
                    <asp:Button ID="BtnNewOrg" runat="server" class="BtnNewOrganiza" meta:resourcekey="BtnNewOrgResource1" />
                </td>
                <td>
                    <asp:Button ID="BtnNewRepGral" runat="server" class="BtnNewGeneral" meta:resourcekey="BtnNewRepGralResource1" />
                </td>
                <td>
                    <asp:Button ID="BtnNewRepBov" runat="server" class="BtnNewBovino" meta:resourcekey="BtnNewRepBovResource1" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GrdNecros" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" Width="100%" Font-Size="Small" OnPageIndexChanging="GrdNecros_PageIndexChanging" CellPadding="3" OnSelectedIndexChanged="GrdNecros_SelectedIndexChanged" Font-Names="Calibri" BackColor="White" BorderColor="#66CCFF" BorderStyle="None" BorderWidth="1px" CellSpacing="10" GridLines="None" meta:resourcekey="GrdNecrosResource1">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:TemplateField HeaderText="Acciones" meta:resourcekey="TemplateFieldResource1">
                                <ItemTemplate>
                                    <div class="btn-group btn-group-sm">
                                        <asp:Button ID="BtnAccion" runat="server" class="btn btn-info dropdown-toggle" data-toggle="dropdown" Text="..." meta:resourcekey="BtnAccionResource1" />
                                        <div class="dropdown-menu btn-success">
                                            <asp:LinkButton ID="BtnEditGral" runat="server" CausesValidation="False" CommandName="select" CssClass="btn btn-success" Font-Size="X-Small" OnClick="BtnEditGral_Click" Width="100%" meta:resourcekey="BtnEditGralResource1"><i class="fa fa-edit"></i> Editar reporte general</asp:LinkButton>
                                            <br />
                                            <asp:LinkButton ID="BtnEdtBovino" runat="server" CausesValidation="False" CommandName="select" CssClass="btn btn-success" Font-Size="X-Small" OnClick="BtnEditBov_Click" Width="100%" meta:resourcekey="BtnEdtBovinoResource1"><i class="fa fa-edit"></i> Editar reporte bovino</asp:LinkButton>
                                        </div>
                                    </div>
                                    <asp:Label ID="LblFolio" runat="server" Text='<%# Bind("Folio") %>' Visible="False" meta:resourcekey="LblFolioResource1"></asp:Label>
                                </ItemTemplate>
                                <HeaderStyle CssClass="text-center" />
                                <ItemStyle CssClass="text-center" Width="5%" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="Folio" HeaderText="Folio" meta:resourcekey="BoundFieldResource1" SortExpression="Folio">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="10%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Fecha" meta:resourcekey="BoundFieldResource2" SortExpression="Fecha">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="10%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Organizacion" HeaderText="Organizacion" meta:resourcekey="BoundFieldResource3" SortExpression="Organizacion">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="30%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Id_Animal" HeaderText="Animal" meta:resourcekey="BoundFieldResource4" SortExpression="Id_Animal">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="10%" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Diagnostico1" HeaderText="Diagnostico" meta:resourcekey="BoundFieldResource5" SortExpression="Diagnostico">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="40%" />
                            </asp:BoundField>
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
