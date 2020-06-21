<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="İletisim.aspx.cs" Inherits="YemekTarifleri.İletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        width: 100%;
    }
    .auto-style7 {
        width: 180px;
        text-align: right;
    }
    .auto-style8 {
        width: 180px;
    }
    .auto-style9 {
        font-size: x-large;
        color: #FFFF66;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder">
    <table class="auto-style5">
    <tr>
        <td class="auto-style9"><strong><em>MESAJ PANELİ</em></strong></td>
    </tr>
</table>
<table class="auto-style5">
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
<table class="auto-style5">
    <tr>
        <td class="auto-style7"><strong>Ad Soyad:</strong></td>
        <td>
            <asp:TextBox ID="TxtGonderen" runat="server" Width="230px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
</table>
<table class="auto-style5">
    <tr>
        <td class="auto-style7"><strong>Mail Adresi:</strong></td>
        <td>
            <asp:TextBox ID="TxtMail" runat="server" Width="230px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
</table>
<table class="auto-style5">
    <tr>
        <td class="auto-style7"><strong>Konu:</strong></td>
        <td>
            <asp:TextBox ID="TxtBaslik" runat="server" Width="230px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
</table>
<table class="auto-style5">
    <tr>
        <td class="auto-style7"><strong>Mesaj:</strong></td>
        <td>
            <asp:TextBox ID="TxtMesaj" runat="server" Width="230px" CssClass="tb5" Height="150px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
</table>
<table class="auto-style5">
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Gönder" Width="205px" CssClass="fb8" Height="30px" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
</asp:Content>

