<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekDuzenle.aspx.cs" Inherits="YemekTarifleri.YemekDüzenle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: right;
            width: 150px;
        }
        .auto-style9 {
            width: 150px;
            height: 26px;
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style11 {
            text-align: right;
        }
        .auto-style12 {
            text-align: left;
        }
        .auto-style14 {
            font-size: large;
            background-color: #99FFCC;
        }
        .auto-style15 {
            font-size: large;
            background-color: #66CCFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <table class="auto-style5">
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10"></td>
        </tr>
        <tr>
            <td class="auto-style8"><strong>YEMEK AD:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>MALZEMELER:</strong></td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox2" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
         <tr>
             <td class="auto-style11"><strong>YEMEK TARİFİ:</strong></td>
             <td class="auto-style18">
                 <asp:TextBox ID="TextBox3" runat="server" Height="150px" TextMode="MultiLine" Width="250px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style11"><strong>KATEGORİ:</strong></td>
             <td class="auto-style18">
                 <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                 </asp:DropDownList>
             </td>
         </tr>
         <tr>
             <td class="auto-style11"><strong>Yemek Görüntü:</strong></td>
             <td class="auto-style12">
                 <asp:FileUpload ID="FileUpload1" runat="server" Width="255px" />
             </td>
         </tr>
         <tr>
             <td class="auto-style17">&nbsp;</td>
             <td class="auto-style21">
                 <asp:Button ID="Btn_Güncelle" runat="server" Font-Bold="True" Text="GÜNCELLE" Width="250px" CssClass="auto-style15" OnClick="Btn_Güncelle_Click" />
             </td>
         </tr>
         <tr>
             <td class="auto-style17">&nbsp;</td>
             <td class="auto-style21">
                 <asp:Button ID="Btn_GününYemegi" runat="server" Font-Bold="True" Text="Günün Yemeğini Seç" Width="250px" CssClass="auto-style14" OnClick="Btn_GününYemegi_Click" />
             </td>
         </tr>
     </table>
</asp:Content>
