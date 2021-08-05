<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PruebaImagen.aspx.cs" Inherits="Necropsyology.Admin.PruebaImagen" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <asp:Panel ID="PnlFotos" runat="server">
                <table style="width: 100%">
                    <tr>
                        <td>
                            <asp:FileUpload ID="FupImg" runat="server" AllowMultiple="True" />
                        </td>
                        <td>
                            <asp:Button ID="BtnCarga" runat="server" Text="Procesa" CssClass="btn btn-success" OnClick="BtnCarga_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:UpdatePanel ID="UpdFotos" runat="server" UpdateMode="Conditional">
                                <ContentTemplate>
                                    <table style="width: 100%">
                                        <tr>
                                            <td style="width: 50%;border:1px solid red">
                                                <asp:Panel ID="PnlDis" runat="server">
                                                    <table>
                                                        <tr>
                                                            <td><asp:ImageButton ID="ImgBtn_1" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtn_2" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtn_3" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                        </tr>
                                                         <tr>
                                                            <td><asp:ImageButton ID="ImgBtn_4" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtn_5" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtn_6" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                        </tr>
                                                         <tr>
                                                            <td><asp:ImageButton ID="ImgBtn_7" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtn_8" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtn_9" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                        </tr>
                                                         <tr>
                                                            <td><asp:ImageButton ID="ImgBtn_10" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtn_11" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtn_12" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                        </tr>
                                                         <tr>
                                                            <td><asp:ImageButton ID="ImgBtn_13" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtn_14" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtn_15" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                        </tr>
                                                         <tr>
                                                            <td><asp:ImageButton ID="ImgBtn_16" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtn_17" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtn_18" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                        </tr>
                                                         <tr>
                                                            <td><asp:ImageButton ID="ImgBtn_19" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtn_20" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtn_21" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                        </tr>
                                                         <tr>
                                                            <td><asp:ImageButton ID="ImgBtn_22" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtn_23" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtn_24" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                        </tr>
                                                         <tr>
                                                            <td><asp:ImageButton ID="ImgBtn_25" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtn_26" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtn_27" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                        </tr>
                                                         <tr>
                                                            <td><asp:ImageButton ID="ImgBtn_28" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtn_29" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtn_30" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                        </tr>
                                                    </table>
                                                </asp:Panel>
                                            </td>
                                            <td style="width: 50%;border:1px solid blue">
                                                <asp:Panel ID="PnlSel" runat="server">
                                                     <table>
                                                        <tr>
                                                            <td><asp:ImageButton ID="ImgBtnSel_1" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtnSel_2" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtnSel_3" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                        </tr>
                                                         <tr>
                                                            <td><asp:ImageButton ID="ImgBtnSel_4" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtnSel_5" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtnSel_6" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                        </tr>
                                                         <tr>
                                                            <td><asp:ImageButton ID="ImgBtnSel_7" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtnSel_8" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtnSel_9" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                        </tr>
                                                         <tr>
                                                            <td><asp:ImageButton ID="ImgBtnSel_10" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtnSel_11" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtnSel_12" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                        </tr>
                                                         <tr>
                                                            <td><asp:ImageButton ID="ImgBtnSel_13" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtnSel_14" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtnSel_15" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                        </tr>
                                                         <tr>
                                                            <td><asp:ImageButton ID="ImgBtnSel_16" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtnSel_17" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtnSel_18" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                        </tr>
                                                         <tr>
                                                            <td><asp:ImageButton ID="ImgBtnSel_19" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtnSel_20" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtnSel_21" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                        </tr>
                                                         <tr>
                                                            <td><asp:ImageButton ID="ImgBtnSel_22" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtnSel_23" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtnSel_24" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                        </tr>
                                                         <tr>
                                                            <td><asp:ImageButton ID="ImgBtnSel_25" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtnSel_26" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtnSel_27" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                        </tr>
                                                         <tr>
                                                            <td><asp:ImageButton ID="ImgBtnSel_28" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtnSel_29" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
                                                            <td><asp:ImageButton ID="ImgBtnSel_30" runat="server" OnClick="ImgBtn_Click" Visible="false" /></td>
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
    </form>
</body>
</html>
