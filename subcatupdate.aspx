<%@ Page Language="C#" MasterPageFile="~/adminpage.master" AutoEventWireup="true" CodeFile="subcatupdate.aspx.cs" Inherits="subcatupdate" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 62px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style3" bgcolor="Gray">
                SUB CATEGORY NAME:</td>
            <td bgcolor="Gray" class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" bgcolor="Gray">
                MAIN CATEGORY:</td>
                                    <td bgcolor="Gray">
                                        <asp:DropDownList ID="DropDownList1" runat="server" 
                                            DataSourceID="SqlDataSource1" DataTextField="mcatname" DataValueField="mcatid" 
                                            ondatabound="DropDownList1_DataBound">
                                        </asp:DropDownList>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            SelectCommand="SELECT [mcatid], [mcatname] FROM [maincat]">
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3" bgcolor="Gray">
                                        &nbsp;</td>
                                    <td bgcolor="Gray">
                                        <asp:Image ID="Image1" runat="server" Height="214px" Width="213px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style3" bgcolor="Gray">
                                        &nbsp;</td>
                                    <td bgcolor="Gray">
                                        UPDATE IMAGE BELOW IF REQUIRED!!!!!</td>
        </tr>
        <tr>
            <td class="style3" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style3" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="UPDATE" />
                <asp:Button ID="Button2" runat="server" Text="BACK" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="style3" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

