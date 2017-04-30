<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="orderhistory2.aspx.cs" Inherits="orderhistory2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="cartid" DataSourceID="SqlDataSource1" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <Columns>
        <asp:ImageField DataImageUrlField="image" DataImageUrlFormatString="images/{0}" 
            HeaderText="Product Image">
            <ControlStyle Height="200px" Width="125px" />
        </asp:ImageField>
        <asp:BoundField DataField="productname" HeaderText="Product Name" 
            SortExpression="productname" />
        <asp:BoundField DataField="rate" HeaderText="Rate" 
            SortExpression="rate" />
        <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty" />
        <asp:BoundField DataField="totalcost" HeaderText="Total Cost" 
            SortExpression="totalcost" />
    </Columns>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#999999" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT * FROM [cart] WHERE ([sessionid] = @sessionid)">
    <SelectParameters>
        <asp:QueryStringParameter Name="sessionid" QueryStringField="sid" 
            Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>

