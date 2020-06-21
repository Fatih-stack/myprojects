<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="YemekTarifleri.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 150px;
        }
        .auto-style9 {
            width: 150px;
            text-align: right;
        }
        .auto-style10 {
            width: 150px;
            height: 26px;
            text-align: right;
        }
        .auto-style11 {
            height: 26px;
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
            <td class="auto-style9"><strong>Ad Soyad:</strong></td>
            <td>
                <asp:TextBox ID="TextAd" runat="server" Width="225px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="TextMail" runat="server" Width="225px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style10"><strong>İçerik:</strong></td>
            <td class="auto-style11">
                <asp:TextBox ID="TextIcerik" runat="server" Height="100px" TextMode="MultiLine" Width="225px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Yemek:</strong></td>
            <td>
                <asp:TextBox ID="TextYemek" runat="server" Width="225px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">&nbsp;</td>
            <td>
                <asp:Button ID="Button_Onayla" runat="server" Font-Bold="True" OnClick="Button_Onayla_Click" Text="Onayla" Width="150px" />
            </td>
        </tr>
    </table>
</asp:Content>
