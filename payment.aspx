<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="payment.aspx.cs" Inherits="payment" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="stylesheet/main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style22" align="center" style="width: 947px">
        <tr>
            <td>
                CHOOSE PAYMENT OPTION:</td>
        </tr>
        <tr>
            <td align="left">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem Value="DBCard">DEBIT CARD</asp:ListItem>
                    <asp:ListItem Value="CCard">CREDIT CARD</asp:ListItem>
                    <asp:ListItem Value="StoreCred">Store Credit 20% APR</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td align="left">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="style22">
                        <tr>
                            <td>
                                CREDIT CARD NO:&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox1" runat="server" Width="205px"></asp:TextBox>
                            </td>
                        </tr>
                       
                        <tr>
                            <td>
                                EXPIRY DATE OF CARD:
                                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                CARD HOLDER NAME:&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                ADDRESS:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="add1" DataValueField="add1">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [add1] FROM [signuptable]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="PROCEED" />
            </td>
        </tr>
    </table>
</asp:Content>

