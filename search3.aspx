<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search3.aspx.cs" Inherits="search3" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style22
        {
            width: 100%;
        }
        .style23
        {
    }
        .style24
        {
            height: 22px;
        }
    .style25
    {
        width: 298px;
    }
        .style26
        {
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td class="style25">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style25" rowspan="8">
                <asp:Image ID="Image2" runat="server" Height="396px" Width="369px" />
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" style="font-weight: 700"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style24">
            </td>
        </tr>
        <tr>
            <td>
                <b>FEATURES:</b></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Font-Bold="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <b>PRICE:&nbsp;&nbsp;&nbsp;</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                £
                <asp:Label ID="Label4" runat="server" Font-Bold="True"></asp:Label>
            &nbsp;.00 GBP</td>
        </tr>
        <tr>
            <td>
                <span class="style26">QUANTITY:</span>
                <asp:TextBox ID="TextBox1" runat="server">1</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="ADD TO SHOPPING CART" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23" colspan="2">
                </td>
        </tr>
        <tr>
            <td class="style23" colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23" colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

