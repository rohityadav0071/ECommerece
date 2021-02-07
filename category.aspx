<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br /><br /><br /><br />
<center>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="catid" 
        DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
        <ItemTemplate>
           
            <center><b><asp:Label ID="catnameLabel" runat="server" Text='<%# Eval("catname") %>' Font-Size="Medium" /></b></center>
            
         <a href="<%# String.Format("categoryproducts.aspx?catid={0}",Eval("catid")) %>" >
            <asp:Image ID="catimgLabel" runat="server" ImageUrl='<%# Eval("catimg") %>' Height="300" Width="300"/></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:PlantShopConnectionString %>" 
        SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
</center>
</asp:Content>

