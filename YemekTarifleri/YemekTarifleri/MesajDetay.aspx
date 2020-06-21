<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetay.aspx.cs" Inherits="YemekTarifleri.MesajDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        width: 170px;
    }
    .auto-style9 {
        width: 170px;
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <table class="auto-style5">
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style9">Mesaj Gönderen:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="225px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Başlık:</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="225px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Mail Adresi:</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Width="225px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9">Mesaj İçerik:</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
