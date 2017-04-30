<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="searchdirect.aspx.cs" Inherits="searchdirect" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="stylesheet/main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="sdirect1">
        <tr>
            <td class="sdirect2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="sdirect3">
                SELECTMAIN CATEGORY:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="mcatname" DataValueField="mcatid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [mcatid], [mcatname] FROM [maincat]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="sdirect3">
                SELECT SUBCATEGORY:</td>
            <td>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="scatname" DataValueField="scatid">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [scatid], [scatname] FROM [subcat] WHERE ([mcatid] = @mcatid)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="mcatid" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="sdirect2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="sdirect2">
                &nbsp;</td>
            <td align="left">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="productid" DataSourceID="SqlDataSource3" CellPadding="4" 
                    ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="productpic" 
                            DataImageUrlFormatString="images/{0}" HeaderText="Product Picture">
                            <ControlStyle Height="350px" Width="250px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="productname" HeaderText="Product Name" 
                            SortExpression="productname" />
                        <asp:BoundField DataField="rate" HeaderText="Rate" SortExpression="rate" />
                        <asp:HyperLinkField DataNavigateUrlFields="productid" 
                            DataNavigateUrlFormatString="search3.aspx?pid={0}" Text="More Details" />
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [mcatid], [scatid], [productname], [rate], [productpic], [productid] FROM [products] WHERE (([mcatid] = @mcatid) AND ([scatid] = @scatid))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="mcatid" 
                            PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="scatid" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        </table>
</asp:Content>

