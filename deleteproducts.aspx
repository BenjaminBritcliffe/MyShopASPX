<%@ Page Language="C#" MasterPageFile="~/adminpage.master" AutoEventWireup="true" CodeFile="deleteproducts.aspx.cs" Inherits="deleteproducts" Title="Admin Panel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- So we will delete a product-->
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
    AutoGenerateColumns="False" DataKeyNames="productid" 
    DataSourceID="SqlDataSource1" PageIndex="10">
    <Columns>
        <asp:BoundField DataField="productname" HeaderText="productname" 
            SortExpression="productname" />
        <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
        <asp:ImageField DataImageUrlField="productpic" 
            DataImageUrlFormatString="images/{0}">
            <ControlStyle Height="200px" Width="150px" />
        </asp:ImageField>
        <asp:CommandField HeaderText="CLICK TO DELETE" ShowDeleteButton="True" />
    </Columns>
</asp:GridView>
    <!--Below will be the deletion SQL Code-->
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConflictDetection="CompareAllValues" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [products] WHERE [productid] = @original_productid" 
    InsertCommand="INSERT INTO [products] ([productname], [mcatid], [scatid], [features], [rate], [productpic]) VALUES (@productname, @mcatid, @scatid, @features, @rate, @productpic)" 
    OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT * FROM [products]" 
    UpdateCommand="UPDATE [products] SET [productname] = @productname, [mcatid] = @mcatid, [scatid] = @scatid, [features] = @features, [rate] = @rate, [productpic] = @productpic WHERE [productid] = @original_productid AND (([productname] = @original_productname) OR ([productname] IS NULL AND @original_productname IS NULL)) AND (([mcatid] = @original_mcatid) OR ([mcatid] IS NULL AND @original_mcatid IS NULL)) AND (([scatid] = @original_scatid) OR ([scatid] IS NULL AND @original_scatid IS NULL)) AND (([features] = @original_features) OR ([features] IS NULL AND @original_features IS NULL)) AND (([rate] = @original_rate) OR ([rate] IS NULL AND @original_rate IS NULL)) AND (([productpic] = @original_productpic) OR ([productpic] IS NULL AND @original_productpic IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_productid" Type="Decimal" />
        <asp:Parameter Name="original_productname" Type="String" />
        <asp:Parameter Name="original_mcatid" Type="Decimal" />
        <asp:Parameter Name="original_scatid" Type="Decimal" />
        <asp:Parameter Name="original_features" Type="String" />
        <asp:Parameter Name="original_rate" Type="Decimal" />
        <asp:Parameter Name="original_productpic" Type="String" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="productname" Type="String" />
        <asp:Parameter Name="mcatid" Type="Decimal" />
        <asp:Parameter Name="scatid" Type="Decimal" />
        <asp:Parameter Name="features" Type="String" />
        <asp:Parameter Name="rate" Type="Decimal" />
        <asp:Parameter Name="productpic" Type="String" />
        <asp:Parameter Name="original_productid" Type="Decimal" />
        <asp:Parameter Name="original_productname" Type="String" />
        <asp:Parameter Name="original_mcatid" Type="Decimal" />
        <asp:Parameter Name="original_scatid" Type="Decimal" />
        <asp:Parameter Name="original_features" Type="String" />
        <asp:Parameter Name="original_rate" Type="Decimal" />
        <asp:Parameter Name="original_productpic" Type="String" />
    </UpdateParameters>
    <InsertParameters>
        <asp:Parameter Name="productname" Type="String" />
        <asp:Parameter Name="mcatid" Type="Decimal" />
        <asp:Parameter Name="scatid" Type="Decimal" />
        <asp:Parameter Name="features" Type="String" />
        <asp:Parameter Name="rate" Type="Decimal" />
        <asp:Parameter Name="productpic" Type="String" />
    </InsertParameters>
</asp:SqlDataSource>
</asp:Content>

