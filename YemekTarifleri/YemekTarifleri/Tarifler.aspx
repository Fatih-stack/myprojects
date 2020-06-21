<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Tarifler.aspx.cs" Inherits="YemekTarifleri.Tarifler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: right;
        }
        .auto-style9 {
            text-align: left;
        }
        .auto-style11 {
            width: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC;">
        <table class="auto-style5">
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Font-Bold="True" Height="30px" Text="+" Width="40px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style4" Font-Bold="True" Height="30px" Text="-" Width="40px" OnClick="Button2_Click" />
                </td>
                <td>&nbsp;ONAYSIZ TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style7">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <a href="TarifOnerDetay.aspx?Tarifid=<%#Eval("Tarifid")%>"><asp:Image ID="Image3" 
                               runat="server" Height="30px" ImageUrl="~/icon/read.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="background-color: #CCCCCC; margin-top:20px;">
        <table class="auto-style5">
            <tr>
                <td class="auto-style11">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style4" Font-Bold="True" Height="30px" Text="+" Width="40px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style11">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style4" Font-Bold="True" Height="30px" Text="-" Width="40px" OnClick="Button4_Click" />
                </td>
                <td>&nbsp;ONAYLI TARİF LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server" CssClass="auto-style7">
        <asp:DataList ID="DataList2" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("TarifAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style8">
                            <a href="TarifOnerDetay.aspx?TarifAd=<%#Eval("TarifAd")%>"><asp:Image ID="Image3" 
                               runat="server" Height="30px" ImageUrl="~/icon/read.png" Width="30px" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
</asp:Content>
