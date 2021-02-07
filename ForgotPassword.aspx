<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br /><br /><br />
    <center>

    <div>
    

        <br />
        <table class="style1">
            <tr>
                <td class="style2">
                    &nbsp;</td>

                
                <td>

                   
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl="#">Forgot Password ?</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Email</td>
                <td>
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    New Password</td>
                <td>
                    <asp:TextBox ID="txtNewPassword" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Confirm New Password<br />
                    <br />
                </td>
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2">
                     </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Save Password" OnClick="Button1_Click" />
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="lblError" runat="server" ></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>

</center>
</asp:Content>

