<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="YemekTarifleri.Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            background-color: #CCCCCC;
        }

        .auto-style9 {
            width: 257px;
            text-align: left;
            height: 26px;
        }

        .auto-style11 {
            text-align: right;
            height: 26px;
        }

        .auto-style15 {
            width: 59px;
        }

        .auto-style16 {
            width: 200px;
        }

        .auto-style17 {
            width: 200px;
            height: 26px;
        }

        .auto-style18 {
            height: 26px;
        }
        .auto-style19 {
            width: 200px;
            height: 29px;
            text-align: right;
        }
        .auto-style20 {
            height: 29px;
        }
        .auto-style21 {
            height: 26px;
            text-align: left;
        }
        .auto-style22 {
            width: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8">
        <table class="auto-style5">
            <tr>
                <td class="auto-style22">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Font-Bold="True" Height="30px" OnClick="Button1_Click" Text="+" Width="40px" />
                </td>
                <td class="auto-style22">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style4" Font-Bold="True" Height="30px" OnClick="Button2_Click" Text="-" Width="40px" />
                </td>
                <td>KATEGORİ LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style7">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <a href="Kategoriler.aspx?Kategoriid=<%#Eval("Kategoriid")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icon/delete.png" Width="30px" />
                        </a></td>
                        <td class="auto-style11">
                          <a href="KategoriDuzenle.aspx?Kategoriid=<%#Eval("Kategoriid")%>"><asp:Image 
                              ID="Image3" runat="server" Height="30px" ImageUrl="~/icon/update2.jpg" Width="30px" />
                        </a></td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" style="background-color: #CCCCCC; margin-top:15px;">
        <table class="auto-style5">
            <tr>
                <td class="auto-style22">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style4" Font-Bold="True" Height="30px" Text="+" Width="40px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style22">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style4" Font-Bold="True" Height="30px" Text="-" Width="40px" OnClick="Button4_Click" />
                </td>
                <td>KATEGORİ EKLEME</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style5">
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">KATEGORİ AD:</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">KATEGORİ İKON:</td>
                <td class="auto-style18">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style21">
                    <asp:Button ID="Btn_Ekle" runat="server" Font-Bold="True" Text="EKLE" Width="100px" OnClick="Btn_Ekle_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
