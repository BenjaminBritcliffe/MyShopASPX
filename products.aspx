<%@ Page Language="C#" MasterPageFile="~/adminpage.master" AutoEventWireup="true" CodeFile="products.aspx.cs" Inherits="products" Title="Admin Panel" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="stylesheet/main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="prod1">
        <tr>
            <td class="prod2" bgcolor="Gray">
                INSERT PRODUCTS</td>
            <td bgcolor="Gray">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="prod2" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="prod2" bgcolor="Gray">
                PRODUCT NAME</td>
            <td bgcolor="Gray">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="prod2" bgcolor="Gray">
                MAIN CATEGORY</td>
            <td bgcolor="Gray">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="mcatname" DataValueField="mcatid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [mcatid], [mcatname] FROM [maincat]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="prod2" bgcolor="Gray">
                SUB CATEGORY</td>
            <td bgcolor="Gray">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="scatname" DataValueField="scatid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [scatid], [scatname] FROM [subcat] WHERE ([mcatid] = @mcatid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="mcatid" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="prod2" bgcolor="Gray">
                DESCRIPTION</td>
            <td bgcolor="Gray">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="158px" 
                    Width="584px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="prod2" bgcolor="Gray">
                PRICE</td>
            <td bgcolor="Gray">
                <asp:Label ID="Label3" runat="server" Text="£"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Height="16px" Width="144px"></asp:TextBox>
                GBP</td>
        </tr>
        <tr>
            <td class="prod2" bgcolor="Gray">
                PRODUCT PIC</td>
            <td bgcolor="Gray">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="prod2" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="ADD PRODUCT" />
            </td>
        </tr>
        <tr>
            <td class="prod2" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

