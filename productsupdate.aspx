<%@ Page Language="C#" MasterPageFile="~/adminpage.master" AutoEventWireup="true" CodeFile="productsupdate.aspx.cs" Inherits="productsupdate" Title="Admin Panel" ValidateRequest="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="stylesheet/main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="produp1">
    <tr>
        <td align="center" bgcolor="Gray">
            MAIN CATEGORY:
            <asp:DropDownList ID="DropDownList1" runat="server" 
                DataSourceID="SqlDataSource1" DataTextField="mcatname" 
                DataValueField="mcatid" ondatabound="DropDownList1_DataBound" Height="16px" Width="174px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [mcatid], [mcatname] FROM [maincat]">
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td align="center" bgcolor="Gray">
            SUB CATEGORY:&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" 
                DataSourceID="SqlDataSource2" DataTextField="scatname" 
                DataValueField="scatid" ondatabound="DropDownList2_DataBound" Height="16px" Width="174px">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [scatid], [scatname] FROM [subcat]">
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td bgcolor="Gray">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" bgcolor="Gray">
            PRODUCT NAME:&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="18px" Width="228px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center" bgcolor="Gray">
            PRODUCT PRICE:&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" Height="16px" Width="226px">£</asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center" bgcolor="Gray">
            DESCRIPTION:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Height="298px" TextMode="MultiLine" 
                Width="407px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td align="center" bgcolor="Gray">
            PRODUCT IMAGE:
            <asp:Image ID="Image2" runat="server" Height="216px" Width="233px" />
        </td>
    </tr>
    <tr>
        <td align="center" bgcolor="Gray">
            UPDATE IMAGE BELOW?:</td>
    </tr>
    <tr>
        <td align="center" bgcolor="Gray">
            <asp:FileUpload ID="FileUpload1" runat="server" />
        </td>
    </tr>
    <tr>
        <td align="center" class="produp2" bgcolor="Gray">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="UPDATE" 
                style="height: 26px" />
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="BACK" />
        </td>
    </tr>
    <tr>
        <td align="center" bgcolor="Gray">
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

