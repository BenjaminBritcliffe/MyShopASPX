<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="viewmaincat.aspx.cs" Inherits="viewmaincat" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style22
        {
            width: 100%;
            background-color: #FFFFFF;
        }
        .style23
        {
            width: 300px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td align="center">
                <asp:DataList ID="DataList1" runat="server" DataKeyField="mcatid" 
                    DataSourceID="SqlDataSource1" RepeatColumns="3" 
                    Font-Size="Medium" Font-Underline="False" RepeatDirection="Horizontal" 
                    style="background-color: #FFFFFF">
                    <ItemTemplate>
                        <table align="center">
                            <tr>
                                <td>
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="216px" 
                                        ImageUrl='<%# Eval("mcatpic", "images/{0}") %>' 
                                        PostBackUrl='<%# Eval("mcatid", "viewsubcat.aspx?sid={0}") %>' 
                                        Width="300px" ImageAlign="Left" />
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    <asp:LinkButton ID="LinkButton24" runat="server" 
                                        PostBackUrl='<%# Eval("mcatid", "viewsubcat.aspx?sid={0}") %>' 
                                        Text='<%# Eval("mcatname") %>' Font-Underline="False"></asp:LinkButton>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
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

