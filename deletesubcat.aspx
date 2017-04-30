<%@ Page Language="C#" MasterPageFile="~/adminpage.master" AutoEventWireup="true" CodeFile="deletesubcat.aspx.cs" Inherits="deletesubcat" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="stylesheet/main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <!--Table to show gridview-->
     <table class="subcat1">
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" DataKeyNames="scatid" DataSourceID="SqlDataSource1" 
                PageIndex="5">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="scatname" HeaderText="scatname" 
                        SortExpression="scatname" />
                    <asp:ImageField DataImageUrlField="scatpic" 
                        DataImageUrlFormatString="images/{0}">
                        <ControlStyle Height="200px" Width="150px" />
                    </asp:ImageField>
                </Columns>
            </asp:GridView>
            <!--SQL data source-->
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [subcat] WHERE [scatid] = @original_scatid AND (([scatname] = @original_scatname) OR ([scatname] IS NULL AND @original_scatname IS NULL)) AND (([mcatid] = @original_mcatid) OR ([mcatid] IS NULL AND @original_mcatid IS NULL)) AND (([scatpic] = @original_scatpic) OR ([scatpic] IS NULL AND @original_scatpic IS NULL))" 
                InsertCommand="INSERT INTO [subcat] ([scatname], [mcatid], [scatpic]) VALUES (@scatname, @mcatid, @scatpic)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT * FROM [subcat]" 
                UpdateCommand="UPDATE [subcat] SET [scatname] = @scatname, [mcatid] = @mcatid, [scatpic] = @scatpic WHERE [scatid] = @original_scatid AND (([scatname] = @original_scatname) OR ([scatname] IS NULL AND @original_scatname IS NULL)) AND (([mcatid] = @original_mcatid) OR ([mcatid] IS NULL AND @original_mcatid IS NULL)) AND (([scatpic] = @original_scatpic) OR ([scatpic] IS NULL AND @original_scatpic IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_scatid" Type="Decimal" />
                    <asp:Parameter Name="original_scatname" Type="String" />
                    <asp:Parameter Name="original_mcatid" Type="Decimal" />
                    <asp:Parameter Name="original_scatpic" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="scatname" Type="String" />
                    <asp:Parameter Name="mcatid" Type="Decimal" />
                    <asp:Parameter Name="scatpic" Type="String" />
                    <asp:Parameter Name="original_scatid" Type="Decimal" />
                    <asp:Parameter Name="original_scatname" Type="String" />
                    <asp:Parameter Name="original_mcatid" Type="Decimal" />
                    <asp:Parameter Name="original_scatpic" Type="String" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="scatname" Type="String" />
                    <asp:Parameter Name="mcatid" Type="Decimal" />
                    <asp:Parameter Name="scatpic" Type="String" />
                </InsertParameters>
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
</table>
</asp:Content>

