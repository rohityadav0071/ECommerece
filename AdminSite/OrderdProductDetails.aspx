<%@ Page Title="" Language="C#" MasterPageFile="~/Adminsite/AdminMasterPage.master" AutoEventWireup="true" CodeFile="OrderdProductDetails.aspx.cs" Inherits="adminsite_OrderdProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>

    <table>
    <tr>
           <th style="width:80"> orderid</th>
           <th style="width:80"> proudctid</th>
           <th style="width:80">productname</th>
           <th style="width:80"> productimgurl</th>
           <th style="width:80">quantity</th>
           <th style="width:80">price</th>
        </tr> 
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <tr>
           <td><asp:Label ID="orderidLabel" runat="server" Text='<%# Eval("orderid") %>' Width="50"/></td>
         
            <td>
            <asp:Label ID="productidLabel" runat="server" Text='<%# Eval("productid") %>' Width="50" /></td>
        
            <td>
            <asp:Label ID="productnameLabel" runat="server" 
                Text='<%# Eval("productname") %>' Width="50" /></td>
        
            <td>
            <asp:Image ID="productimgurlLabel" runat="server" 
                ImageUrl='<%# Eval("productimgurl") %>' Height="50" Width="50" /></td>
  
            <td>
            <asp:Label ID="quantityLabel" runat="server" Text='<%# Eval("quantity") %>' Width="50" /></td>
          
            <td>
            <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' Width="50" /></td>
            
        </ItemTemplate>
    </asp:DataList>
    </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:PlantShopConnectionString %>" 
        SelectCommand="SELECT * FROM [orderedproducts] WHERE ([orderid] = @orderid)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="orderid" QueryStringField="oi" 
                Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</center>
</asp:Content>

