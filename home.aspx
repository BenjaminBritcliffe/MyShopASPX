<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="stylesheet/main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"> <!--Content placeholder, used to use the master page -->
    <table class="home2"> <!--Select the style you want. 100%-->
        <tr>
            <td>
                <h2>
                Latest Products</h2><!--Heading-->
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td><!--Blank Space-->
        </tr>
        <tr><!-- Grab some products, grabs the images, the product picture, name, id and link for bigger desc. -->
            <td>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="productid" 
        DataSourceID="SqlDataSource1" RepeatColumns="3" 
    RepeatDirection="Horizontal" CellPadding="0">
        <ItemTemplate>
            <table class="home1">
                <tr>
                    <td align="center">
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                            ImageUrl='<%# Eval("productpic", "images/{0}") %>' 
                            PostBackUrl='<%# Eval("productid", "search3.aspx?pid={0}") %>' 
                            Height="204px" Width="210px" />
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:LinkButton ID="LinkButton25" runat="server" 
                            PostBackUrl='<%# Eval("productid", "search3.aspx?pid={0}") %>' 
                            Text='<%# Eval("productname") %>'></asp:LinkButton>
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
            </td>
        </tr>
    </table><!-- Now grab the connection and perform an SQL command to grab the first 6 products and show them on the home page as a teaser.-->
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        
    
    SelectCommand="SELECT top 6 [productid], [productname], [productpic] FROM [products] order by newid();">
    </asp:SqlDataSource>
</asp:Content>

