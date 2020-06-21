<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="YemekTarifleri.KategoriDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"><style type="text/css">

        .auto-style5 {
            width: 100%;
        }
        .auto-style7 {
            background-color: #66FFFF;
        }
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style8 {
        width: 100%;
        color: #00FF00;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:DataList ID="DataList1" runat="server">
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <ItemTemplate>
        <table class="auto-style5">
            <tr>
                <td class="auto-style7"><a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid")%>">
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </a></td>
            </tr>
        </table>
        <table class="auto-style5">
            <tr>
                <td><strong>Malzemeler:</strong>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style5">
            <tr>
                <td><strong>Yemek Tarifi: </strong>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style5">
            <tr>
                <td>Eklenme Tarihi:
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style8" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;- <em>Puan:</em>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekPuan") %>' CssClass="auto-style8"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="auto-style5">
            <tr>
                <td style="border-bottom-style: groove; border-bottom-width: thick; border-bottom-color: #333333">&nbsp;</td>
            </tr>
        </table>
    </ItemTemplate>
    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
</asp:DataList>
</asp:Content>
