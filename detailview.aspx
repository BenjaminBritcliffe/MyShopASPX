<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="detailview.aspx.cs" Inherits="detailview" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        DETAIL VIEW</p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="username" DataSourceID="SqlDataSource1" Height="50px" 
            Width="125px">
            <Fields>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
                <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" 
                    SortExpression="username" />
                <asp:BoundField DataField="mob" HeaderText="mob" SortExpression="mob" />
                <asp:BoundField DataField="co" HeaderText="co" SortExpression="co" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:CommandField ShowDeleteButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            
            SelectCommand="SELECT [name], [age], [username], [mob], [gen], [dob], [co] FROM [signuptable] WHERE ([username] = @username)" 
            ConflictDetection="CompareAllValues" 
            DeleteCommand="DELETE FROM [signuptable] WHERE [username] = @original_username AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL)) AND (([mob] = @original_mob) OR ([mob] IS NULL AND @original_mob IS NULL)) AND (([gen] = @original_gen) OR ([gen] IS NULL AND @original_gen IS NULL)) AND (([dob] = @original_dob) OR ([dob] IS NULL AND @original_dob IS NULL)) AND (([co] = @original_co) OR ([co] IS NULL AND @original_co IS NULL))" 
            InsertCommand="INSERT INTO [signuptable] ([name], [age], [username], [mob], [gen], [dob], [co]) VALUES (@name, @age, @username, @mob, @gen, @dob, @co)" 
            OldValuesParameterFormatString="original_{0}" 
            UpdateCommand="UPDATE [signuptable] SET [name] = @name, [age] = @age, [mob] = @mob, [gen] = @gen, [dob] = @dob, [co] = @co WHERE [username] = @original_username AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([age] = @original_age) OR ([age] IS NULL AND @original_age IS NULL)) AND (([mob] = @original_mob) OR ([mob] IS NULL AND @original_mob IS NULL)) AND (([gen] = @original_gen) OR ([gen] IS NULL AND @original_gen IS NULL)) AND (([dob] = @original_dob) OR ([dob] IS NULL AND @original_dob IS NULL)) AND (([co] = @original_co) OR ([co] IS NULL AND @original_co IS NULL))">
            <SelectParameters>
                <asp:QueryStringParameter Name="username" QueryStringField="un" Type="String" />
            </SelectParameters>
            <DeleteParameters>
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_age" Type="Decimal" />
                <asp:Parameter Name="original_mob" Type="Decimal" />
                <asp:Parameter Name="original_gen" Type="String" />
                <asp:Parameter Name="original_dob" Type="String" />
                <asp:Parameter Name="original_co" Type="String" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="age" Type="Decimal" />
                <asp:Parameter Name="mob" Type="Decimal" />
                <asp:Parameter Name="gen" Type="String" />
                <asp:Parameter Name="dob" Type="String" />
                <asp:Parameter Name="co" Type="String" />
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_name" Type="String" />
                <asp:Parameter Name="original_age" Type="Decimal" />
                <asp:Parameter Name="original_mob" Type="Decimal" />
                <asp:Parameter Name="original_gen" Type="String" />
                <asp:Parameter Name="original_dob" Type="String" />
                <asp:Parameter Name="original_co" Type="String" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="age" Type="Decimal" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="mob" Type="Decimal" />
                <asp:Parameter Name="gen" Type="String" />
                <asp:Parameter Name="dob" Type="String" />
                <asp:Parameter Name="co" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

