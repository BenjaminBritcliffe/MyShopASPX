<%@ Page Language="C#" MasterPageFile="~/adminpage.master" AutoEventWireup="true" CodeFile="maincat.aspx.cs" Inherits="maincat" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="stylesheet/main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="mc1">
    <tr>
        <td class="mc2" align="center" bgcolor="Gray" colspan="2">
            MAIN CATEGORY PAGE:</td>
    </tr>
    <tr>
        <td class="mc2" bgcolor="Gray">
            CATEGORY NAME</td>
        <td bgcolor="Gray">
            <asp:TextBox ID="TextBox1" runat="server" Width="346px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="mc2" bgcolor="Gray">
            CATEGORY PICTURE</td>
        <td bgcolor="Gray">
            <asp:FileUpload ID="FileUpload1" runat="server" Width="363px" />
        </td>
    </tr>
    <tr>
        <td class="mc2" bgcolor="Gray">
            &nbsp;</td>
        <td bgcolor="Gray">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="ADD MAIN CATEGORY" />
        </td>
    </tr>
    <tr>
        <td class="mc2" bgcolor="Gray">
            &nbsp;</td>
        <td bgcolor="Gray">
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

