<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkımızdaAdmin.aspx.cs" Inherits="YemekTarifleri.HakkımızdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        width: 55px;
    }
    .auto-style9 {
        height: 292px;
        text-align: center;
        margin-left: 40px;
    }
    .auto-style10 {
        margin-top: 0px;
    }
    .auto-style11 {
        width: 100%;
        height: 279px;
    }
    .auto-style12 {
        font-weight: bold;
        font-size: large;
        background-color: #FFFFCC;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:Panel ID="Panel1" runat="server" style="background-color: #CCCCCC;">
        <table class="auto-style5">
            <tr>
                <td class="auto-style8">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Font-Bold="True" Height="30px" OnClick="Button1_Click" Text="+" Width="40px" />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style4" Font-Bold="True" Height="30px" OnClick="Button2_Click" Text="-" Width="40px" />
                </td>
                <td>&nbsp;HAKKIMIZDA</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="auto-style11">
            <tr>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style10" Height="250px" TextMode="MultiLine" Width="435px"></asp:TextBox>
                    <strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style12" Text="Güncelle" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>
</asp:Panel>
</asp:Content>
