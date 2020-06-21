<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" 
    AutoEventWireup="True" CodeBehind="Anasayfa.aspx.cs" Inherits="YemekTarifleri.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            width: 100%;
        }
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style7 {
            background-color: #66FFFF;
        }
        .auto-style8 {
        width: 100%;
        color: #00FF00;
    }
        .auto-style9 {
        color: #CC9900;
    }
        </style>
</asp:Content>



<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder">
    <asp:DataList ID="DataList1" runat="server" CellPadding="3" DataSourceID="SqlDataSource2" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellSpacing="2" GridLines="Both" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <ItemTemplate>
            <table class="auto-style5">
                <tr>
                    <td class="auto-style7">

                        <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid")%>">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style6" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </a>

                    </td>
                </tr>
            </table>
            <table class="auto-style5">
                <tr>
                    <td><strong>Malzemeler:</strong>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("YemekMalzeme") %>' CssClass="auto-style9"></asp:Label>
                    </td>
                </tr>
            </table>
            <table class="auto-style5">
                <tr>
                    <td><strong>Yemek Tarifi: </strong>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekTarif") %>' CssClass="auto-style9"></asp:Label>
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Dbo_yemektarifiConnectionString %>" SelectCommand="SELECT * FROM [Tbl_Yemekler]"></asp:SqlDataSource>
</asp:Content>




