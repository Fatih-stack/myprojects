<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifOnerDetay.aspx.cs" Inherits="YemekTarifleri.TarifOnerDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style8 {
        width: 160px;
    }
    .auto-style9 {
        width: 160px;
        text-align: right;
    }
    .auto-style10 {
        font-weight: bold;
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
        <td class="auto-style9"><strong>Tarif Ad:</strong></td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server" Width="220px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Tarif Malzemeler:</strong></td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Width="220px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Yapılış:</strong></td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server" Height="125px" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Tarif Resim:</strong></td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="230px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Tarif Öneren:</strong></td>
        <td>
            <asp:TextBox ID="TextBox5" runat="server" Width="220px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Öneren Mail:</strong></td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" Width="220px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style9"><strong>Kategori:</strong></td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Width="220px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="35px" OnClick="Button1_Click" Text="Onayla" Width="200px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
