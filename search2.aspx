<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="search2.aspx.cs" Inherits="search2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style22
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style22">
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="productid" DataSourceID="SqlDataSource1" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" Height="292px" Width="646px">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="productname" HeaderText="productname" 
                            SortExpression="productname" />
                        <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
                        <asp:ImageField DataImageUrlField="productpic" 
                            DataImageUrlFormatString="images/{0}" HeaderText="IMAGE">
                            <ControlStyle Height="200px" Width="150px" />
                        </asp:ImageField>
                        <asp:HyperLinkField DataNavigateUrlFields="productid" 
                            DataNavigateUrlFormatString="search3.aspx?pid={0}" Text="MORE INFO" 
                            HeaderText="CLICK TO GET MORE INFO" />
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:Label ID="Label2" runat="server" ForeColor="White"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT * FROM [products] WHERE ([productname] LIKE '%' + @productname + '%')" 
                    onselected="SqlDataSource1_Selected">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="productname" QueryStringField="q" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

