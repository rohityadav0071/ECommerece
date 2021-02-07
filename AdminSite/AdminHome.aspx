<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>

    <table >
        <tr>
            <td>
                <h1>Welcome Admin</h1></td>
        </tr>
        <tr>
        <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/AdminSite/images/admin.jpg" Height="450" Width="600" /></td>
        </tr>
    </table>
   
</center>
</asp:Content>

