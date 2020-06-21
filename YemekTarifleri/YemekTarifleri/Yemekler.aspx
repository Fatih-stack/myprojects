<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yemekler.aspx.cs" Inherits="YemekTarifleri.Yemekler" %>

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
            width: 170px;
        }

        .auto-style17 {
            width: 170px;
            height: 26px;
        }

        .auto-style18 {
            height: 26px;
        }
        .auto-style20 {
            height: 29px;
        }
        .auto-style21 {
            height: 26px;
            text-align: center;
        }
        .auto-style23 {
            width: 170px;
            height: 29px;
            text-align: right;
        }
        .auto-style24 {
            width: 170px;
            height: 26px;
            text-align: right;
        }
        .auto-style25 {
            width: 60px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style8">
        <table class="auto-style5">
            <tr>
                <td class="auto-style25">
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style4" Font-Bold="True" Height="30px" Text="+" Width="40px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style25">
                    <asp:Button ID="Button2" runat="server" CssClass="auto-style4" Font-Bold="True" Height="30px"  Text="-" Width="40px" OnClick="Button2_Click" />
                </td>
                <td>YEMEK LİSTESİ</td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server" CssClass="auto-style7">
        <asp:DataList ID="DataList1" runat="server" Width="445px">
            <ItemTemplate>
                <table class="auto-style5">
                    <tr>
                        <td class="auto-style9">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </td>
                        <td class="auto-style11">
                            <a href="Yemekler.aspx?Yemekid=<%#Eval("Yemekid")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="30px" ImageUrl="~/icon/delete.png" Width="30px" />
                        </a></td>
                        <td class="auto-style11">
                          <a href="YemekDuzenle.aspx?Yemekid=<%#Eval("Yemekid")%>"><asp:Image 
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
                <td class="auto-style25">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style4" Font-Bold="True" Height="30px" Text="+" Width="40px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style25">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style4" Font-Bold="True" Height="30px" Text="-" Width="40px" OnClick="Button4_Click" />
                </td>
                <td>YEMEK EKLEME</td>
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
                <td class="auto-style23">YEMEK AD:</td>
                <td class="auto-style20">
                    <asp:TextBox ID="TextBox1" runat="server" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style23">MALZEMELER:</td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBox2" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">YEMEK TARİFİ:</td>
                <td class="auto-style18">
                    <asp:TextBox ID="TextBox3" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style24">KATEGORİ:</td>
                <td class="auto-style18">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style21">
                    <asp:Button ID="Btn_Ekle0" runat="server" Font-Bold="True" OnClick="Btn_Ekle0_Click" Text="EKLE" Width="100px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style17">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

