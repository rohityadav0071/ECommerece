<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br /><br /><br />
    <center>
    <hr /><h2>Our Gallery</h2><hr />
    <br />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        RepeatColumns="3" RepeatDirection="Horizontal" CellSpacing="10">
        <ItemTemplate>
            
            <asp:Image ID="imageurlLabel" runat="server" ImageUrl='<%# Eval("imageurl") %>' Height="300" Width="300" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:PlantShopConnectionString %>" 
        SelectCommand="SELECT [imageurl] FROM [gallery]"></asp:SqlDataSource>

</center>
</asp:Content>

