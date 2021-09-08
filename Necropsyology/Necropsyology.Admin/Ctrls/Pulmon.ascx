<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Pulmon.ascx.cs" Inherits="Necropsyology.Admin.Ctrls.Pulmon" %>

<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
        <table style="width: 50%; text-align: center; vertical-align: middle; border: 1px solid blue">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Daño Pulmonar"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="ImgPul" runat="server" Height="250px" ImageUrl="~/images/Pulmon/Pulmones.png" />
                </td>
            </tr>
            <tr>
                <td>
                    <table style="text-align: center; vertical-align: middle; width: 100%">
                        <tr>
                            <td style="text-align: right; vertical-align: middle; width: 50%">
                                <asp:CheckBoxList ID="ChkPul"
                                    runat="server"
                                    Width="100%"
                                    OnSelectedIndexChanged="ChkPul_SelectedIndexChanged"
                                    AutoPostBack="true"
                                    RepeatDirection="Vertical">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                </asp:CheckBoxList>
                            </td>
                            <td style="text-align: center; vertical-align: middle; width: 50%">
                                <table style="text-align: left; vertical-align: middle; width: 100%">
                                    <tr>
                                        <td style="width: 70px">
                                            <asp:Label ID="Label2" runat="server" Text="Seccion 1"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox1" runat="server" Width="100px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text="Seccion 2"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox2" runat="server" Width="100px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Text="Seccion 3"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox3" runat="server" Width="100px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text="Seccion 4"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox4" runat="server" Width="100px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label6" runat="server" Text="Seccion 5"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox5" runat="server" Width="100px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label7" runat="server" Text="Seccion 6"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox6" runat="server" Width="100px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label8" runat="server" Text="Seccion 7"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox7" runat="server" Width="100px"></asp:TextBox></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label9" runat="server" Text="Seccion 8"></asp:Label></td>
                                        <td>
                                            <asp:TextBox ID="TextBox8" runat="server" Width="100px"></asp:TextBox></td>
                                    </tr>
                                </table>
                            </td>

                        </tr>
                    </table>
                </td>

            </tr>
        </table>
    </ContentTemplate>
</asp:UpdatePanel>

