<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewproducts.aspx.cs" Inherits="viewproducts" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style22
    {
        width: 100%;
    }
    .style23
    {
        width: 286px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
    <tr>
        <td align="center">
            <asp:DataList ID="DataList1" runat="server" DataKeyField="productid" 
                DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td align="center">
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="311px" 
                                    ImageUrl='<%# Eval("productpic", "images/{0}") %>' 
                                    PostBackUrl='<%# Eval("productid", "search3.aspx?pid={0}") %>' 
                                    style="margin-top: 0px" Width="290px" />
                            </td>
                        </tr>
                        <tr>
                            <td align="center">
                                <asp:LinkButton ID="LinkButton24" runat="server" Font-Underline="False" 
                                    PostBackUrl='<%# Eval("productid", "search3.aspx?pid={0}") %>' 
                                    Text='<%# Eval("productname") %>'></asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [products] WHERE ([scatid] = @scatid)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="scatid" QueryStringField="pid" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

