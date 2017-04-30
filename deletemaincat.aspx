<%@ Page Language="C#" MasterPageFile="~/adminpage.master" AutoEventWireup="true" CodeFile="deletemaincat.aspx.cs" Inherits="deletemaincat" Title="Admin Panel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" DataKeyNames="mcatid" DataSourceID="SqlDataSource1" 
    PageSize="7" Width="358px" CellPadding="4" ForeColor="#333333" 
    GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>
        <asp:BoundField DataField="mcatname" HeaderText="mcatname" 
            SortExpression="mcatname" />
        <asp:ImageField DataImageUrlField="mcatpic" 
            DataImageUrlFormatString="images/{0}" HeaderText="PIC">
            <ControlStyle Height="200px" Width="300px" />
        </asp:ImageField>
        <asp:CommandField ShowDeleteButton="True" HeaderText="CLICK TO DELETE" />
    </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
    <!-- Apply select,update and delete-->
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConflictDetection="CompareAllValues" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [maincat] WHERE [mcatid] = @original_mcatid" 
    InsertCommand="INSERT INTO [maincat] ([mcatname], [mcatpic]) VALUES (@mcatname, @mcatpic)" 
    OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT * FROM [maincat]" 
    UpdateCommand="UPDATE [maincat] SET [mcatname] = @mcatname, [mcatpic] = @mcatpic WHERE [mcatid] = @original_mcatid AND (([mcatname] = @original_mcatname) OR ([mcatname] IS NULL AND @original_mcatname IS NULL)) AND (([mcatpic] = @original_mcatpic) OR ([mcatpic] IS NULL AND @original_mcatpic IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_mcatid" Type="Decimal" />
        <asp:Parameter Name="original_mcatname" Type="String" />
        <asp:Parameter Name="original_mcatpic" Type="String" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="mcatname" Type="String" />
        <asp:Parameter Name="mcatpic" Type="String" />
        <asp:Parameter Name="original_mcatid" Type="Decimal" />
        <asp:Parameter Name="original_mcatname" Type="String" />
        <asp:Parameter Name="original_mcatpic" Type="String" />
    </UpdateParameters>
    <InsertParameters>
        <asp:Parameter Name="mcatname" Type="String" />
        <asp:Parameter Name="mcatpic" Type="String" />
    </InsertParameters>
</asp:SqlDataSource>
</asp:Content>

