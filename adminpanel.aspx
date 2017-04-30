<%@ Page Language="C#" MasterPageFile="~/adminpage.master" AutoEventWireup="true" CodeFile="adminpanel.aspx.cs" Inherits="adminpanel" Title="Admin Panel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="stylesheet/admin.css" rel="stylesheet" /> <!--- Add stylesheet-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="adminpan1">
        <!-- Benjamin Britcliffe. -->
        <tr>
            <td>
                <h2>
                    <b>ADMIN PANEL:</b></h2> <!-- Heading-->
                <!-- Links for the toolbars-->
                <p>
                    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/home.aspx" runat="server">BACK TO HOMEPAGE</asp:HyperLink> <!--Link to main home-->
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton24" runat="server" visible="false" onclick="LinkButton24_Click">MAINCAT</asp:LinkButton> <!--Main Category link not shown, used to work alongside the main admin panel-->
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton25" runat="server" visible="false" onclick="LinkButton25_Click">SUBCAT</asp:LinkButton> <!--Main Category link not shown, used to work alongside the main admin panel-->
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="LinkButton26" runat="server" visible="false" onclick="LinkButton26_Click">PRODUCTS</asp:LinkButton> <!--Main Category link not shown, used to work alongside the main admin panel-->
            </td>
        </tr>
    </table>
</asp:Content>

