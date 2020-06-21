<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="YemekTarifleri.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 180px;
        }
        .auto-style9 {
            width: 180px;
            text-align: right;
            height: 27px;
        }
        .auto-style10 {
            height: 27px;
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
            <td class="auto-style9"><strong>KATEGORİ AD:</strong></td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>ADET:</strong></td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox2" runat="server" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>RESİM:</strong></td>
            <td class="auto-style10">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="267px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">
                <asp:Button ID="Button1" runat="server" Font-Bold="True" OnClick="Button1_Click" Text="Güncelle" Width="170px" />
            </td>
        </tr>
    </table>
</asp:Content>
