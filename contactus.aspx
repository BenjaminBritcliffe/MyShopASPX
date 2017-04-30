<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<link href="stylesheet/main.css" rel="stylesheet" /> <!--CSS-->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style22" style="width: 923px">
        <tr>
            <td class="style24" colspan="2" bgcolor="Gray">
                <h2>
                CONTACT US:</h2> <!--Heading-->
                
            </td>
        </tr>
        <tr>
            <td class="contact1" bgcolor="Gray">
                NAME</td> <!-- Name-->
            <td bgcolor="Gray">
                <asp:TextBox ID="TextBox1" runat="server" Width="248px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="contact1" bgcolor="Gray">
                EMAIL ADDRESS</td> <!--Address-->
            <td bgcolor="Gray">
                <asp:TextBox ID="TextBox2" runat="server" Width="249px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="contact1" bgcolor="Gray">
                PHONE NUMBER</td> <!-- Contact Info-->
            <td bgcolor="Gray">
                <asp:TextBox ID="TextBox3" runat="server" Width="247px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="contact1" bgcolor="Gray">
                COMMENT</td>
            <td bgcolor="Gray">
                <asp:TextBox ID="TextBox4" runat="server" Height="33px" Width="245px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="contact1" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SEND" /> <!--Send-->
            </td>
        </tr>
        <tr>
            <td class="contact1" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                <asp:Label ID="Label1" runat="server"></asp:Label> <!-- Status-->
            </td>
        </tr>
    </table>
</asp:Content>

