<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="ProductDetails.aspx.cs" Inherits="ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br /><br /><br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:PlantShopConnectionString %>" 
        SelectCommand="SELECT * FROM [CategoryProducts] WHERE ([Productid] = @Productid)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="Productid" 
                QueryStringField="prodID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <table>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Productid" 
        DataSourceID="SqlDataSource1">
        <ItemTemplate>
        <tr>
        <td>
            
            
            <asp:Image ID="productimgurlLabel" runat="server" 
                ImageUrl='<%# Eval("productimgurl") %>' Height="400" Width="400" />
            <br />
        </td>
        <td>
            <b>Name:</b>
            <asp:Label ID="productnameLabel" runat="server" 
                Text='<%# Eval("productname") %>' />
            <br />
            <b>Description:</b>
            <asp:Label ID="descriptionLabel" runat="server" 
                Text='<%# Eval("description") %>' />
            <br />
            <b>Price: Rs.</b>
            <b><asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' /></b>
            <br />
            
            <asp:Button ID="btnAddtoCart" runat="server" Text="Add to Cart" PostBackUrl='<%# String.Format("AddtoCart.aspx?prodID={0}",Eval("Productid")) %>' />
            <asp:Button ID="btnOrder" runat="server" Text="Buy Now" />
<br />
</td>
</tr>
        </ItemTemplate>
    </asp:DataList>
    </table>
</asp:Content>

