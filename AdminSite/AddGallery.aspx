<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddGallery.aspx.cs" Inherits="AdminSite_AddGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
 
    <p>
        Image Name&nbsp; :&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br>
        <asp:FileUpload ID="ImageUpload1" runat="server" />
        <br>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" />
&nbsp;&nbsp;
        <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
  
</center>
</asp:Content>

