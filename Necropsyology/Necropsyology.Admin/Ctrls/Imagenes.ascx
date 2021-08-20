<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Imagenes.ascx.cs" Inherits="Necropsyology.Admin.Ctrls.Imagenes" %>
<link href="../css/GaleriaImagen.css" rel="stylesheet" />
<div class="container">
    <div class="row">
        <div class="col-md-offset-5 col-md-4 text-center">
            <asp:Panel ID="PnlFotos" runat="server">
                <table style="width: 100%" class="CentrarInTable">
                    <tr>
                        <td colspan="2" class="CentrarTitulo">
                            <h3>
                                <asp:Label ID="Label1" runat="server" Text="Fotografias"></asp:Label></h3>
                            <h4>
                                <asp:Label ID="Label2" runat="server" Text="Solo podra seleccionar 10 fotos maximo"></asp:Label></h4>
                            <h5>
                                <asp:Label ID="Label3" runat="server" Text="Deberá dar click sobre la foto a Seleccionar / Deseleccionar para realizar la actividad"></asp:Label></h5>
                        </td>
                    </tr>
                    <tr>
                        <td class="CentrarTitulo" style="width: 50%">
                            <asp:FileUpload ID="FupImg" runat="server" AllowMultiple="True" />
                        </td>
                        <td class="CentrarTitulo" style="width: 50%">
                            <asp:Button ID="BtnCarga" runat="server" Text="Procesa" CssClass="btn btn-success" OnClick="BtnCarga_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:UpdatePanel ID="UpdFotos" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <table style="width: 100%">
                                        <tr>
                                            <td style="width: 50%;">
                                                <asp:Panel ID="PnlDis" runat="server" BorderStyle="None">
                                                    <table style="width: 100%">
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_1" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_2" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_3" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_4" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_5" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_6" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_7" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_8" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_9" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_10" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_11" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_12" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_13" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_14" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_15" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_16" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_17" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_18" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_19" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_20" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_21" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_22" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_23" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_24" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_25" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_26" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_27" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_28" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_29" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtn_30" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                            <td style="width: 50%;">
                                                <asp:Panel ID="PnlSel" runat="server" BorderStyle="None">
                                                    <asp:Label ID="LblError" runat="server" Text="Label" Visible="False" Font-Bold="True" ForeColor="Red" Font-Size="Medium"></asp:Label>
                                                    <table style="width: 100%">
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_1" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_2" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_3" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_4" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_5" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_6" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_7" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_8" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_9" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_10" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_11" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_12" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_13" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_14" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_15" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_16" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_17" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_18" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_19" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_20" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_21" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_22" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_23" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_24" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_25" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_26" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_27" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_28" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_29" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                            <td>
                                                                <asp:ImageButton ID="ImgBtnSel_30" runat="server" OnClick="ImgBtn_Click" Visible="false" CssClass="ImagenRelativa" /></td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                        </tr>
                                    </table>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                </table>
            </asp:Panel>
        </div>
    </div>
</div>


