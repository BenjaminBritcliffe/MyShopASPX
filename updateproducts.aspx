<%@ Page Language="C#" MasterPageFile="~/adminpage.master" AutoEventWireup="true" CodeFile="updateproducts.aspx.cs" Inherits="updateproducts" Title="Untitled Page" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style11
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style11">
    <tr>
        <td align="center">
            CHOOSE PRODUCTS TO UPDATE:</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center">
            SELECT MAIN CATEGORY:
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource1" DataTextField="mcatname" DataValueField="mcatid">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [maincat]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td align="center">
            SELECT SUB CATEGORY:&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                DataSourceID="SqlDataSource2" DataTextField="scatname" DataValueField="scatid">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [subcat] WHERE ([mcatid] = @mcatid)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="mcatid" 
                        PropertyName="SelectedValue" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="productid" DataSourceID="SqlDataSource3" CellPadding="4" 
                ForeColor="#333333" GridLines="None">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="productid" HeaderText="Price (GBP)" 
                        InsertVisible="False" ReadOnly="True" SortExpression="productid" />
                    <asp:BoundField DataField="productname" HeaderText="productname" 
                        SortExpression="productname" />
                    <asp:ImageField DataImageUrlField="productpic" 
                        DataImageUrlFormatString="images/{0}">
                        <ControlStyle Height="200px" Width="150px" />
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="productid" 
                        DataNavigateUrlFormatString="productsupdate.aspx?pid={0}" 
                        HeaderText="CLICK TO UPDATE" Text="UPDATE" />
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [products] WHERE (([scatid] = @scatid) AND ([mcatid] = @mcatid))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList2" Name="scatid" 
                        PropertyName="SelectedValue" Type="Decimal" />
                    <asp:ControlParameter ControlID="DropDownList1" Name="mcatid" 
                        PropertyName="SelectedValue" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

