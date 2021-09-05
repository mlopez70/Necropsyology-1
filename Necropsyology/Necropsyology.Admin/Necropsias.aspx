<%@ Page Title="" Language="C#" MasterPageFile="~/Necros.Master" AutoEventWireup="true" CodeBehind="Necropsias.aspx.cs" Inherits="Necropsyology.Admin.Necropsias" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>--%>
    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center" >
        <table class="TablaPrincipal">
            <tr>
                <td colspan="3">
                    <asp:Label ID="LblTitulo" runat="server" CssClass="TituloListado"></asp:Label>
                </td>
            </tr>
            <tr class="RenglonBoton">
                <td >
                    <asp:Button ID="BtnNewOrg" runat="server" CssClass="btn btn-facebook BotonBorderRedondo" />                   
                </td>
                <td>
                   <asp:Button ID="BtnNewRepGral" runat="server" CssClass="btn btn-warning BotonBorderRedondo" />  
                </td>
                <td>
                   <asp:Button ID="BtnNewRepBov" runat="server" CssClass="btn btn-success BotonBorderRedondo" />
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:GridView ID="GrdNecros" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" Width="100%" Font-Size="Medium" OnPageIndexChanging="GrdNecros_PageIndexChanging" PageSize="17" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GrdNecros_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="LightCyan" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="Folio" HeaderText="Folio">
                                <HeaderStyle HorizontalAlign="Center" Width="200px" />
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Organiza" HeaderText="Organizacion">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Id_Animal" HeaderText="Animal ID">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Fecha">
                                <HeaderStyle HorizontalAlign="Center" Width="100px" />
                                <ItemStyle HorizontalAlign="Left" />
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="Acciones">
                                <ItemTemplate>
                                    <div class="btn-group btn-group-sm">
                                        <asp:Button ID="BtnAccion" runat="server" class="btn btn-info dropdown-toggle" data-toggle="dropdown" Text="..."/>
                                       <%-- <button class="btn btn-info dropdown-toggle" data-toggle="dropdown" >
                                            Opciones
                                        </button>--%>
                                        <div class="dropdown-menu btn-success">
                                            <asp:LinkButton CausesValidation="false" ID="BtnEditGral" runat="server" OnClick="BtnEditGral_Click" CommandName="select" CssClass="btn btn-success" Font-Size="X-Small" Width="100%"><i class="fa fa-edit"></i> Editar reporte general</asp:LinkButton>
                                            <br />
                                            <asp:LinkButton CausesValidation="false" ID="BtnEdtBovino" runat="server" OnClick="BtnEditBov_Click" CommandName="select" CssClass="btn btn-success" Font-Size="X-Small" Width="100%"><i class="fa fa-edit"></i> Editar reporte bovino</asp:LinkButton>

                                        </div>
                                    </div>
                                    <asp:Label ID="LblFolio" runat="server" Text='<%# Bind("Folio") %>' Visible="False"></asp:Label>
                                </ItemTemplate>
                                <ItemStyle CssClass="text-center" />
                                <HeaderStyle CssClass="text-center" />
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
            </tr>
        </table>

    </asp:Panel>
</asp:Content>
