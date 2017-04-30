<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="stylesheet/main.css" rel="stylesheet" /> <!-- Stylesheet-->
    <style type="text/css">
        .auto-style1 {
            width: 247px;
            height: 23px;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="pass1">
        <tr>
            <td class="pass2" bgcolor="#CCCCCC">
                CHANGE PASSWORD:</td> <!--Heading-->
            <td bgcolor="#CCCCCC">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="pass2" bgcolor="#CCCCCC">
                CURRENT PASSWORD</td>
            <td bgcolor="#CCCCCC">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox> <!--Confirm the user-->
            </td>
        </tr>
        <tr>
            <td class="pass2" bgcolor="#CCCCCC">
                NEW PASSWORD</td> <!-- New Password-->
            <td bgcolor="#CCCCCC">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="pass2" bgcolor="#CCCCCC">
                CONFIRM PASSWORD</td> <!-- Confirm-->
            <td bgcolor="#CCCCCC">
                <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                    ErrorMessage="These Do Not Match!"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="pass2" bgcolor="#CCCCCC">
                &nbsp;</td>
            <td bgcolor="#CCCCCC">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="CHANGE PASSWORD" /> <!-- Click to change-->
            </td>
        </tr>
        <tr>
            <td class="pass2" bgcolor="#CCCCCC">
                &nbsp;</td>
            <td bgcolor="#CCCCCC">
                <asp:Label ID="Label2" runat="server"></asp:Label> <!--Status-->
            </td>
        </tr>
    </table>
</asp:Content>

