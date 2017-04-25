<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="CharityAuction.LogIn" %>
<%@ OutputCache Duration="1" VaryByParam="c" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc2" %>
<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In</title>
    <link href="styles/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
</head>
<body>
     <div class="PageLayout">

            <uc2:Header ID="Header1" runat="server" EnableViewState="false" />	

		<form id="Form1" method="post" runat="server">
        <h2>Log In</h2>
            <table style="width: 100%;">
            <tr>
                <td class="auto-style2"><asp:Label ID="label4" runat="server" Text="Email"></asp:Label></td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter a Username" ForeColor="Red" ></asp:RequiredFieldValidator></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style2"><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter a Password" ForeColor="Red" ></asp:RequiredFieldValidator></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click1" style="height: 26px" />
                    <br /></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="lblAlert" runat="server" Text="Result"></asp:Label></td>
            </tr>
        </table>
   
        </form>
         </div>
</body>
</html>
