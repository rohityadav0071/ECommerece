<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 152px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br /><br /><br /><br /><br /><br />
    <center>
<h1>Log in </h1> 
<table width="400">
    <tr>
        <td>&nbsp;</td>
        <td class="style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Email Id&nbsp;&nbsp;</td>
        <td class="style1"><asp:TextBox ID="Txtemail" runat="server"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="Txtemail" ErrorMessage="pls enter your email"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="Txtemail" ErrorMessage="invalid email" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td class="style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Password </td>
        <td class="style1"><asp:TextBox ID="Txtpassword" runat="server" TextMode="Password"></asp:TextBox></td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="Txtpassword" ErrorMessage="pls enter your password"></asp:RequiredFieldValidator>
        </td>
    </tr>
    
    <tr>
        <td>&nbsp;</td>
        <td class="style1">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    
    <tr>
    <td></td>
        <td style="padding-left:50px" class="style1"><asp:Button ID="Btnlogin" runat="server" Text="Log in" 
            onclick="Btnlogin_Click" /></td>
        <td style="padding-left:50px">&nbsp;</td>
    </tr>
    <tr>
    <td></td>
    <td class="style1"><asp:HyperLink ID="HyperLink2" runat="server" 
                        NavigateUrl="SignUp.aspx">New User? SignIn Here!!!</asp:HyperLink></td>
    <td>&nbsp;</td>
    </tr>
    <tr>
    <td></td>
    <td class="style1"><asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl="ForgotPassword.aspx">Forgot Password ?</asp:HyperLink></td>
        
    <td>&nbsp;</td>
        
    </tr>
    <tr>
    <td></td>
    <td class="style1"><asp:Label ID="lblmessage" runat="server"></asp:Label></td> 
    <td>&nbsp;</td> 
    </tr>
    </table>
    </center>
</asp:Content>

