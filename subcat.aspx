<%@ Page Language="C#" MasterPageFile="~/adminpage.master" AutoEventWireup="true" CodeFile="subcat.aspx.cs" Inherits="subcat" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="stylesheet/main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="subc1">
    <tr>
        <td class="subc2" bgcolor="Gray">
            SUB CATEGORY PAGE:</td>
        <td bgcolor="Gray">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="subc2" bgcolor="Gray">
            &nbsp;</td>
        <td bgcolor="Gray">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="subc2" bgcolor="Gray">
            SUB CATEGORY NAME</td>
        <td bgcolor="Gray">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="subc2" bgcolor="Gray">
            &nbsp;</td>
        <td bgcolor="Gray">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="subc2" bgcolor="Gray">
            MAIN CATEGORY ID</td>
        <td bgcolor="Gray">
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="mcatname" DataValueField="mcatid">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [mcatid], [mcatname] FROM [maincat]">
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="subc2" bgcolor="Gray">
            &nbsp;</td>
        <td bgcolor="Gray">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="subc2" bgcolor="Gray">
            SUB CATEGORY PIC</td>
        <td bgcolor="Gray">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td class="subc2" bgcolor="Gray">
            &nbsp;</td>
        <td bgcolor="Gray">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="ADD SUB CATEGORY" />
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

