<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search1.aspx.cs" Inherits="search1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style22
        {
            width: 100%;
        }
        .style25
    {
        width: 306px;
    }
        .style26
        {
            width: 306px;
            color: #000000;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td  rowspan="3" class="style26">
                ENTER PRODUCT NAME TO SEARCH:</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    style="height: 26px" Text="SEARCH" />
            </td>
        </tr>
    </table>
</asp:Content>

