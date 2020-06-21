<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifleri.TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        width: 123px;
    }
    .auto-style9 {
        width: 123px;
        height: 26px;
        text-align: right;
    }
    .auto-style10 {
        height: 26px;
    }
    .auto-style11 {
        width: 123px;
        text-align: right;
    }
    .auto-style12 {
        margin-left: 40px;
    }
    .auto-style13 {
        margin-left: 42px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder">
    <table class="auto-style1">
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Tarif Ad:</strong></td>
        <td>
            <asp:TextBox ID="txtTarifAd" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Malzemeler:</strong></td>
        <td>
            <asp:TextBox ID="txtMalzemeler" runat="server" Height="100px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Yapılış:</strong></td>
        <td>
            <asp:TextBox ID="txtYapilis" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Resim:</strong></td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="250px" CssClass="tb5" />
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Tarif Öneren:</strong></td>
        <td class="auto-style10">
            <asp:TextBox ID="txtTarifOneren" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style11"><strong>Mail Adresi:</strong></td>
        <td>
            <asp:TextBox ID="txtMailAdres" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style12">
            <asp:Button ID="BtnTarifOner" runat="server" BackColor="#FFFFCC" CssClass="auto-style13" Height="40px" Text="Tarif Öner" Width="150px" OnClick="BtnTarifOner_Click" />
        </td>
    </tr>
</table>
</asp:Content>

