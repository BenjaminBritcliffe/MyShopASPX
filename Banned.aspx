<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Banned.aspx.cs" Inherits="Banned" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Banned!</title> <!-- Title-->
    <!-- Auto Style-->
    <style type="text/css"> 
        .auto-style1 {
            width: 195px;
            height: 200px;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <asp:Image ID="Image1" runat="server" Height="202px" ImageUrl="~/images/Banned.jpg" Width="566px" /> <!-- Image-->
        <p>
            There has been some suspicious activity on your account, and as a precaution we have banned this account.</p> <!--Message-->
        <p>
            Please contact us <a href="mailto:Customers@CoffeCupGaming.com">Customers@CoffeCupGaming.com</a></p> <!--Contact Details-->
        <p>
            <asp:HyperLink ID="HyperLink1" NavigateUrl="~/home.aspx" runat="server">Back To The Homepage</asp:HyperLink> <!--Link-->
        </p>
        <img alt="" class="auto-style1" src="images/200_s.gif" /></form> <!--Gif fun-->

</body>
</html>
