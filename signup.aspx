<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="stylesheet/main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td class="sup2" colspan="3">
                <h2>
                    SIGN UP</h2>
            </td>
        </tr>
        <tr>
            <td class="sup2" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="sup5">
                NAME</td>
            <td class="sup3">
                <asp:TextBox ID="TextBox1" runat="server" Width="160px"></asp:TextBox>
            </td>
            <td class="sup4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="sup5">
                &nbsp;</td>
            <td class="sup3">
                &nbsp;</td>
            <td class="sup4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
        </tr>
        <tr>
            <td class="sup5">
                D.O.B</td>
            <td class="sup3">
                &nbsp;<asp:DropDownList ID="DropDownList2" runat="server" Height="24px" 
                    Width="68px">
                </asp:DropDownList>
&nbsp;
                <asp:DropDownList ID="DropDownList3" runat="server" Height="20px" Width="62px">
                </asp:DropDownList>
&nbsp;
                <asp:DropDownList ID="DropDownList4" runat="server">
                </asp:DropDownList>
                <br />
            </td>
            <td class="sup4">
                &nbsp;</td>
        </tr>
                                            <tr>
                                                <td class="sup5">
                                                    EMAIL ID</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="160px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton26" runat="server" onclick="LinkButton26_Click">CHECK AVAILABILITY </asp:LinkButton>
                &nbsp;<asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td class="sup4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="YOUR EMAIL ID IS NECESSARY"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="PLEASE ENTER A VALID EMAIL ID" 
                    ForeColor="#FF3300" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                </td>
        </tr>
        <tr>
            <td class="sup5">
                GENDER</td>
            <td class="sup3">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="g" Text="MALE" 
                    ForeColor="Black" />
&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="g" Text="FEMALE" 
                    ForeColor="Black" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="sup4">
                <asp:Label ID="Label3" runat="server" style="color: #000000" ForeColor="Black"></asp:Label>
                                                            </td>
        </tr>
        <tr>
            <td class="sup5">
                MOBILE NO</td>
            <td class="sup3">
                <asp:TextBox ID="TextBox4" runat="server" Width="160px"></asp:TextBox>
            </td>
            <td class="sup4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="sup5">
                Address 1&nbsp;</td>
            <td class="sup3">
                <asp:TextBox ID="TextBox7" runat="server" Width="158px"></asp:TextBox>
            </td>
            <td class="sup4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="sup5">
                Address 2</td>
            <td class="sup3">
                <asp:TextBox ID="TextBox8" runat="server" Width="158px"></asp:TextBox>
            </td>
            <td class="sup4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="sup5">
                COUNTRY</td>
            <td class="sup3">
                <asp:TextBox ID="TextBoxCountry" runat="server" Width="160px"></asp:TextBox>
            </td>
            <td class="sup4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="sup5">
                PASSWORD</td>
            <td class="sup3">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Width="160px"></asp:TextBox>
            </td>
            <td class="sup4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="PLEASE ENTER PASSWORD"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="sup5">
                CONFIRM PASSWORD</td>
            <td class="sup3">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Password" Width="160px"></asp:TextBox>
            </td>
            <td class="sup4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="PLEASE CONFIRM YOUR PASSWORD"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox5" ControlToValidate="TextBox6" 
                    ErrorMessage="PASSWORD SHOULD BE SAME"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="sup5">
                &nbsp;</td>
            <td class="sup3">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="80px" 
                    ImageUrl="~/images/SIGNUP.jpg" onclick="ImageButton1_Click" 
                    style="margin-left: 0px" Width="150px" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td class="sup4">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

