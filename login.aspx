<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="stylesheet/main.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 211px;
            height: 23px;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td class="login2" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="login2" bgcolor="Gray">
                EMAIL ADDRESS:</td>
            <td bgcolor="Gray">
                <asp:TextBox ID="TextBox1" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" bgcolor="Gray">
                </td>
            <td bgcolor="Gray" class="auto-style2">
                </td>
        </tr>
        <tr>
            <td class="login2" bgcolor="Gray">
                PASSWORD</td>
            <td bgcolor="Gray">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="245px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="login2" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="LOGIN" />
            </td>
        </tr>
        <tr>
            <td class="login2" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

