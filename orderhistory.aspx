<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="orderhistory.aspx.cs" Inherits="orderhistory" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    DataKeyNames="orderid" DataSourceID="SqlDataSource1" CellPadding="4" 
        ForeColor="#333333" GridLines="None">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="orderid" HeaderText="orderid" InsertVisible="False" 
            ReadOnly="True" SortExpression="orderid" />
        <asp:BoundField DataField="paymode" HeaderText="paymode" 
            SortExpression="paymode" ReadOnly="True" />
        <asp:BoundField DataField="cardno" HeaderText="cardno" 
            SortExpression="cardno" />
        <asp:BoundField DataField="expirydate" HeaderText="expirydate" 
            SortExpression="expirydate" />
        <asp:BoundField DataField="holdername" HeaderText="holdername" 
            SortExpression="holdername" />
        <asp:BoundField DataField="add1" HeaderText="add1" 
            SortExpression="add1" />
        <asp:BoundField DataField="tc" HeaderText="Price" 
            SortExpression="tc" ReadOnly="True" />
        <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" ReadOnly="True" />
        <asp:BoundField DataField="sessionid" HeaderText="sessionid" SortExpression="sessionid" ReadOnly="True" />
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
    SelectCommand="SELECT * FROM [payment] WHERE ([email] = @email)" DeleteCommand="DELETE FROM [payment] WHERE [orderid] = @orderid" InsertCommand="INSERT INTO [payment] ([paymode], [cardno], [expirydate], [holdername], [add1], [tc], [name], [email], [sessionid]) VALUES (@paymode, @cardno, @expirydate, @holdername, @add1, @tc, @name, @email, @sessionid)" UpdateCommand="UPDATE [payment] SET [paymode] = @paymode, [cardno] = @cardno, [expirydate] = @expirydate, [holdername] = @holdername, [add1] = @add1, [tc] = @tc, [name] = @name, [email] = @email, [sessionid] = @sessionid WHERE [orderid] = @orderid">
    <DeleteParameters>
        <asp:Parameter Name="orderid" Type="Decimal" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="paymode" Type="String" />
        <asp:Parameter Name="cardno" Type="String" />
        <asp:Parameter Name="expirydate" Type="String" />
        <asp:Parameter Name="holdername" Type="String" />
        <asp:Parameter Name="add1" Type="String" />
        <asp:Parameter Name="tc" Type="String" />
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="sessionid" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:SessionParameter Name="email" SessionField="uname" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="paymode" Type="String" />
        <asp:Parameter Name="cardno" Type="String" />
        <asp:Parameter Name="expirydate" Type="String" />
        <asp:Parameter Name="holdername" Type="String" />
        <asp:Parameter Name="add1" Type="String" />
        <asp:Parameter Name="tc" Type="String" />
        <asp:Parameter Name="name" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="sessionid" Type="String" />
        <asp:Parameter Name="orderid" Type="Decimal" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />
    <br />
</asp:Content>

