<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewsubcat.aspx.cs" Inherits="viewsubcat" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style22
        {
            width: 100%;
        }
    .style23
    {
        width: 297px;
    }
    .style24
    {
        height: 608px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" width="100%">
        <tr>
            <td align="center">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="scatid" 
                    DataSourceID="SqlDataSource1" HorizontalAlign="Left" 
                    onselectedindexchanged="DataList1_SelectedIndexChanged" RepeatColumns="3" 
                    RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <table>
                            <tr>
                                <td align="center">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="230px" 
                                        ImageUrl='<%# Eval("scatpic", "images/{0}") %>' 
                                        PostBackUrl='<%# Eval("scatid", "viewproducts.aspx?pid={0}") %>' 
                                        Width="230px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center" width="400">
                                    <asp:LinkButton ID="LinkButton24" runat="server" Font-Underline="False" 
                                        PostBackUrl='<%# Eval("scatid", "viewproducts.aspx?pid={0}") %>' 
                                        Text='<%# Eval("scatname") %>'></asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [subcat] WHERE ([mcatid] = @mcatid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="mcatid" QueryStringField="sid" Type="Decimal" />
                    </SelectParameters>
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

