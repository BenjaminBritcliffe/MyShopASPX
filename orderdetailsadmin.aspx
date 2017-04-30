<%@ Page Language="C#" MasterPageFile="~/adminpage.master" AutoEventWireup="true" CodeFile="orderdetailsadmin.aspx.cs" Inherits="orderdetailsadmin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="cartid" DataSourceID="SqlDataSource1" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <Columns>
        <asp:BoundField DataField="cartid" HeaderText="cartid" InsertVisible="False" 
            ReadOnly="True" SortExpression="cartid" />
        <asp:BoundField DataField="productname" HeaderText="productname" 
            SortExpression="productname" />
        <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
        <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
        <asp:BoundField DataField="totalcost" HeaderText="totalcost" 
            SortExpression="totalcost" />
        <asp:ImageField DataImageUrlField="image" DataImageUrlFormatString="images/{0}">
            <ControlStyle Height="200px" Width="150px" />
        </asp:ImageField>
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

