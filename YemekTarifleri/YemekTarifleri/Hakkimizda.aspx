<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="YemekTarifleri.Hakkımızda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style5 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder">
    <br />
<div class="auto-style5">
    <asp:DataList ID="DataList1" runat="server" CssClass="auto-style6">
        <ItemTemplate>
            <asp:Label ID="MetinLabel" runat="server" Text='<%# Eval("Metin") %>' />
        </ItemTemplate>
    </asp:DataList>
    </div>
    <br />
    <asp:Image ID="Image1" runat="server" Height="300px" Width="450px" ImageUrl="~/resimler/blog.png" />
</asp:Content>

