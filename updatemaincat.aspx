<%@ Page Language="C#" MasterPageFile="~/adminpage.master" AutoEventWireup="true" CodeFile="updatemaincat.aspx.cs" Inherits="updatemaincat" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                CHOOSE CATEGORY TO UPDATE:</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="mcatid" DataSourceID="SqlDataSource1" 
                    ForeColor="Black" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="mcatname" HeaderText="mcatname" 
                            SortExpression="mcatname" />
                        <asp:ImageField DataImageUrlField="mcatpic" 
                            DataImageUrlFormatString="images/{0}">
                            <ControlStyle Height="200px" Width="200px" />
                        </asp:ImageField>
                        <asp:HyperLinkField DataNavigateUrlFields="mcatid" 
                            DataNavigateUrlFormatString="maincatupdate.aspx?cid={0}" 
                            HeaderText="CLICK TO UPDATE" Text="UPDATE HERE" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [maincat]"></asp:SqlDataSource>
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

