<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cart1.aspx.cs" Inherits="cart1" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="stylesheet/main.css" rel="stylesheet" /> <!-- Reference to the stylesheet-->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table title="100%">
        <tr>
            <td>
                <!--Grid View Start-->
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="cartid" DataSourceID="SqlDataSource1" Width="736px" 
                    CellPadding="4" ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="image" DataImageUrlFormatString="images/{0}" 
                            HeaderText="Product Image">
                            <ControlStyle Height="200px" Width="200px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="productname" HeaderText="Product Name" 
                            SortExpression="productname" /> 
                        <asp:BoundField DataField="rate" HeaderText="Price (GBP)" 
                            SortExpression="rate" />
                        <asp:BoundField DataField="qty" HeaderText="Quantity" SortExpression="qty" />
                        <asp:BoundField DataField="totalcost" HeaderText="Total Cost (GBP)"
                            SortExpression="totalcost" />
                        <asp:CommandField ShowDeleteButton="True" HeaderText="Click to delete" />
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView> <!-- End Grid-->
                <!-- Below we will be inserting, adding, deleting and updating the cart-->
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConflictDetection="CompareAllValues" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    DeleteCommand="DELETE FROM [cart] WHERE [cartid] = @original_cartid " 
                    InsertCommand="INSERT INTO [cart] ([productname], [rate], [qty], [totalcost], [image], [sessionid]) VALUES (@productname, @rate, @qty, @totalcost, @image, @sessionid)" 
                    OldValuesParameterFormatString="original_{0}" 
                    ondeleted="SqlDataSource1_Deleted" 
                    SelectCommand="SELECT * FROM [cart] WHERE ([sessionid] = @sessionid)" 
                    UpdateCommand="UPDATE [cart] SET [productname] = @productname, [rate] = @rate, [qty] = @qty, [totalcost] = @totalcost, [image] = @image, [sessionid] = @sessionid WHERE [cartid] = @original_cartid AND (([productname] = @original_productname) OR ([productname] IS NULL AND @original_productname IS NULL)) AND (([rate] = @original_rate) OR ([rate] IS NULL AND @original_rate IS NULL)) AND (([qty] = @original_qty) OR ([qty] IS NULL AND @original_qty IS NULL)) AND (([totalcost] = @original_totalcost) OR ([totalcost] IS NULL AND @original_totalcost IS NULL)) AND (([image] = @original_image) OR ([image] IS NULL AND @original_image IS NULL)) AND (([sessionid] = @original_sessionid) OR ([sessionid] IS NULL AND @original_sessionid IS NULL))">
                    <SelectParameters>
                        <asp:SessionParameter Name="sessionid" SessionField="sid" Type="String" />
                    </SelectParameters>
                    <DeleteParameters>
                        <asp:Parameter Name="original_cartid" Type="Decimal" />
                        <asp:Parameter Name="original_productname" Type="String" />
                        <asp:Parameter Name="original_rate" Type="Decimal" />
                        <asp:Parameter Name="original_qty" Type="Decimal" />
                        <asp:Parameter Name="original_totalcost" Type="Decimal" />
                        <asp:Parameter Name="original_image" Type="String" />
                        <asp:Parameter Name="original_sessionid" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="productname" Type="String" />
                        <asp:Parameter Name="rate" Type="Decimal" />
                        <asp:Parameter Name="qty" Type="Decimal" />
                        <asp:Parameter Name="totalcost" Type="Decimal" />
                        <asp:Parameter Name="image" Type="String" />
                        <asp:Parameter Name="sessionid" Type="String" />
                        <asp:Parameter Name="original_cartid" Type="Decimal" />
                        <asp:Parameter Name="original_productname" Type="String" />
                        <asp:Parameter Name="original_rate" Type="Decimal" />
                        <asp:Parameter Name="original_qty" Type="Decimal" />
                        <asp:Parameter Name="original_totalcost" Type="Decimal" />
                        <asp:Parameter Name="original_image" Type="String" />
                        <asp:Parameter Name="original_sessionid" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="productname" Type="String" />
                        <asp:Parameter Name="rate" Type="Decimal" />
                        <asp:Parameter Name="qty" Type="Decimal" />
                        <asp:Parameter Name="totalcost" Type="Decimal" />
                        <asp:Parameter Name="image" Type="String" />
                        <asp:Parameter Name="sessionid" Type="String" />
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
                <b>TOTAL PRICE: £</b> <!-- Price-->
                <asp:Label ID="Label2" runat="server"></asp:Label>
                .00 GBP</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                    Text="CONTINUE SHOPPING" /> <!--Continue..-->
                <asp:Button ID="Button2" runat="server" Text="CHECK OUT"  
                    onclick="Button2_Click" /><!--Go!-->
            </td>
        </tr> <!-- Bit of whitespace-->
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

