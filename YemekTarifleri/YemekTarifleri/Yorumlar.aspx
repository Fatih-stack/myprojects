<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yorumlar.aspx.cs" Inherits="YemekTarifleri.Yorumlar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 251px;
        }

        .auto-style11 {
            width: 78px;
        }

        .auto-style12 {
            width: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC;">
        <table class="auto-style5">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Font-Bold="True" Height="30px" Text="+" Width="40px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style4" Font-Bold="True" Height="30px" Text="-" Width="40px" OnClick="Button2_Click" />
                </td>
                <td>&nbsp;ONAYLANAN YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style7">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icon/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style11">
                            <asp:Image ID="Image3" runat="server" Height="30px" ImageUrl="~/icon/update2.jpg" Width="30px" />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="background-color: #CCCCCC; margin-top: 15px;">
        <table class="auto-style5">
            <tr>
                <td class="auto-style12">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style4" Font-Bold="True" Height="30px" Text="+" Width="40px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style12">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style4" Font-Bold="True" Height="30px" Text="-" Width="40px" OnClick="Button4_Click" />
                </td>
                <td>ONAYSIZ YORUM LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style7">
        <asp:DataList ID="DataList2" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icon/delete.png" Width="30px" />
                        </td>
                        <td class="auto-style11">
                            <a href="YorumDetay.aspx?Yorumid=<%#Eval("Yorumid")%>"><asp:Image ID="Image3" 
                                runat="server" Height="30px" ImageUrl="~/icon/update2.jpg" Width="30px" />
                            </a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
