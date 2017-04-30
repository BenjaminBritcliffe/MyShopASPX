<%@ Page Language="C#" MasterPageFile="~/adminpage.master" AutoEventWireup="true" CodeFile="updatesubcat.aspx.cs" Inherits="updatesubcat" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 307px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td class="style6" bgcolor="Gray">
                CHOOSE SUB CATEGORY TO UPDATE:</td>
            <td bgcolor="Gray">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" bgcolor="Gray">
                SELECT MAIN CATEGORY:</td>
            <td bgcolor="Gray">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="mcatname" DataValueField="mcatid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [maincat]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style6" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="scatid" DataSourceID="SqlDataSource2" 
                    ForeColor="Black" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="scatname" HeaderText="scatname" 
                            SortExpression="scatname" />
                        <asp:ImageField DataImageUrlField="scatpic" 
                            DataImageUrlFormatString="images/{0}">
                            <ControlStyle Height="200px" Width="200px" />
                        </asp:ImageField>
                        <asp:HyperLinkField DataNavigateUrlFields="scatid" 
                            DataNavigateUrlFormatString="subcatupdate.aspx?sid={0}" 
                            HeaderText="CLICK TO UPDATE" Text="UPDATE" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                </asp:GridView>
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
            <td class="style6" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6" bgcolor="Gray">
                &nbsp;</td>
            <td bgcolor="Gray">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

