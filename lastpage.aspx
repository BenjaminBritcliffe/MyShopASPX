<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="lastpage.aspx.cs" Inherits="lastpage" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="stylesheet/main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 928px">
        <tr>
            <td width="900" bgcolor="Gray">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="approved1" bgcolor="Gray">
                &nbsp;ORDER APPROVED!</td>
        </tr>
        <tr>
            <td class="approved1"bgcolor="Gray">
                YOUR ORDER NO IS:<asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td bgcolor="Gray">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="Gray">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

