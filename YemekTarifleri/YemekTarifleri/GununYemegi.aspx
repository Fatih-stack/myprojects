<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifleri.GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <div class="auto-style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="GununYemegi" runat="server" Font-Bold="True" style="text-align: center; font-size: x-large" Text='<%# Eval("YemekAd") %>'></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                <br />
                Malzemeler : </strong>
                <asp:Label ID="YemekMalzemeLabel" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                <br />
                <strong>
                <br />
                Tarifi : </strong>
                <asp:Label ID="YemekTarifLabel" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                &nbsp;&nbsp;
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" AssociatedControlID="Image1" Text='<%# Eval("YemekResim") %>'></asp:Label>
                <asp:Image ID="Image1" runat="server" Height="230px" ImageUrl='<%# Eval("YemekResim") %>' Width="425px" />
                <br />
                <strong>Puan : </strong>
                <asp:Label ID="Puan" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                &nbsp;&nbsp; <strong>&nbsp; Eklenme Tarih : </strong>
                <asp:Label ID="Tarih" runat="server" Text='<%# Eval("YemekTarih") %>' />
                <br />
                <br />
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>

