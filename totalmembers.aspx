<%@ Page Language="C#" MasterPageFile="~/adminpage.master" AutoEventWireup="true" CodeFile="totalmembers.aspx.cs" Inherits="totalmembers" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style15
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style15">
    <tr>
        <td align="center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="username" DataSourceID="SqlDataSource1" 
                ForeColor="#333333" GridLines="None">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" 
                        SortExpression="username" />
                    <asp:BoundField DataField="mob" HeaderText="mob" SortExpression="mob" />
                    <asp:BoundField DataField="co" HeaderText="co" SortExpression="co" />
                    <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                    <asp:BoundField DataField="usertype" HeaderText="usertype" SortExpression="usertype" />
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
            <br />
            * User Types*<br />
            * Admin = Admin (Admin Panel Access)<br />
            * Normal = Normal<br />
            *Banned = Banned User (No Access)<br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [name], [username], [mob], [co], [dob], [usertype] FROM [signuptable]" DeleteCommand="DELETE FROM [signuptable] WHERE [username] = @username" InsertCommand="INSERT INTO [signuptable] ([name], [username], [mob], [co], [dob], [usertype]) VALUES (@name, @username, @mob, @co, @dob, @usertype)" UpdateCommand="UPDATE [signuptable] SET [name] = @name, [mob] = @mob, [co] = @co, [dob] = @dob, [usertype] = @usertype WHERE [username] = @username">
                <DeleteParameters>
                    <asp:Parameter Name="username" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="mob" Type="Decimal" />
                    <asp:Parameter Name="co" Type="String" />
                    <asp:Parameter Name="dob" Type="String" />
                    <asp:Parameter Name="usertype" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="mob" Type="Decimal" />
                    <asp:Parameter Name="co" Type="String" />
                    <asp:Parameter Name="dob" Type="String" />
                    <asp:Parameter Name="usertype" Type="String" />
                    <asp:Parameter Name="username" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

