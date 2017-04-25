<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="CharityAuction.SignUp" %>
<%@ OutputCache Duration="1" VaryByParam="c" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc2" %>
<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up</title>
    <link href="styles/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
     <div class="PageLayout">

            <uc2:Header ID="Header1" runat="server" EnableViewState="false" />	

		<form id="Form1" method="post" runat="server">
        <h2>Sign Up</h2>
            <table style="width: 100%;">
            <tr>
                <td><asp:Label ID="label4" runat="server" Text="Email"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter an Email" ForeColor="Red" ></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter a Password" ForeColor="Red" ></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td><asp:Label ID="Label3" runat="server" Text="Retype Password"></asp:Label></td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Retype Password" ForeColor="Red" ></asp:RequiredFieldValidator></td>
                <td><asp:CompareValidator ID="CompareValidator1" ControlToValidate ="TextBox3" ControlToCompare="TextBox2" runat="server" ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter an Email" ForeColor="Red"></asp:RequiredFieldValidator></td>
            </tr>
            
            <tr>
                <td><br /></td>
            </tr>
            <tr>
                <td><asp:Button ID="Button1" runat="server" Text="Save"  OnClick="Button1_Click"/></td>
                <td>
                    <asp:Label ID="lblAlert" runat="server" Text="Result: "></asp:Label>
                    <asp:Label ID="Label5" runat="server" BackColor="#00CC00" Text="Saved !" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
   
        </form>
         </div>
</body>
</html>

