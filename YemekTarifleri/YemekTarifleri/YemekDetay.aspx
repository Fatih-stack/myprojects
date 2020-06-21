<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifleri.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: 30px;
            color: #FFFFFF;
        }
        .auto-style7 {
            font-size: medium;
        }
        .auto-style8 {
            width: 100%;
        }
        .auto-style6 {
            font-size: small;
        }
        .auto-style10 {
            width: 160px;
        }
        .auto-style11 {
            background-color: #eea4a4;
        }
        .auto-style12 {
            width: 160px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder">
    <strong>
    <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text="Label"></asp:Label>
    <br />
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <strong>
            <table class="auto-style8">
                <tr>
                    <td><strong>
                        <asp:Label Text='<%# Eval("YorumAdSoyad") %>' runat="server" id="AdSoyadLabel" CssClass="auto-style4"/>
                        </strong></td>
                </tr>
            </table>
            <table class="auto-style8" style="border-color: #FFFFFF; border-bottom-style: inset; border-bottom-width: thin">
                <tr>
                    <td><strong>
                        <asp:Label Text='<%# Eval("Yorumicerik") %>' runat="server" id="icerikLabel" CssClass="auto-style7"/>
                        &nbsp;-
                        <asp:Label Text='<%# Eval("YorumTarih") %>' runat="server" id="TarihLabel" CssClass="auto-style6"/>
                        </strong></td>
                </tr>
            </table>
            </strong>
        </ItemTemplate>
    </asp:DataList>
        <br />
        <div class="auto-style11">YORUM YAPMA PANELİ</div>
        <asp:Panel ID="Panel1" runat="server">
            <table class="auto-style8">
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            </strong>
            </strong>
            <table class="auto-style8">
                <tr>
                    <td class="auto-style12">Ad Soyad : </td>
                    <strong>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="200px" Height="20px"></asp:TextBox>
                    </td>
                    </strong>
                </tr>
            </table>
    </strong>
            <table class="auto-style8">
                <tr>
                    <td class="auto-style12">Mail :</td>
                    <strong>
                    <td><strong>
                        <asp:TextBox ID="TextBox2" runat="server" Width="200px" Height="20px"></asp:TextBox>
                        </strong></td>
                    </strong>
                </tr>
            </table>
            <table class="auto-style8">
                <tr>
                    <td class="auto-style12">Yorumunuz :</td>
                    <td><strong>
                        <asp:TextBox ID="TextBox3" runat="server" Width="200px" Height="100px" TextMode="MultiLine"></asp:TextBox>
                        </strong></td>
                </tr>
            </table>
            <table class="auto-style8">
                <tr>
                    <td class="auto-style10">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Yorum Yap" Width="121px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
            <table class="auto-style8">
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
    </asp:Panel>
    </asp:Content>

