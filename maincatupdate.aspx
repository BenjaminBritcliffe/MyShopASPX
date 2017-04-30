<%@ Page Language="C#" MasterPageFile="~/adminpage.master" AutoEventWireup="true" CodeFile="maincatupdate.aspx.cs" Inherits="maincatupdate" Title="Untitled Page" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="stylesheet/main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="mcup2" bgcolor="Gray">
                UPDATE MAIN CATEGORY DETAILS:</td>
            <td bgcolor="Gray" class="style9">
                </td>
        </tr>
        <tr>
            <td class="mcup1" bgcolor="Gray">
                MAIN CATEGORY NAME</td>
            <td bgcolor="Gray">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="mcup1" bgcolor="Gray">
                MAIN CATEGORY PIC</td>
            <td bgcolor="Gray">
                <asp:Image ID="Image1" runat="server" Height="200px" Width="221px" />
            </td>
        </tr>
        <tr>
            <td class="mcup1" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="mcup1" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="UPDATE" />
                <asp:Button ID="Button2" runat="server" Text="BACK" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="mcup1" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="mcup1" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

