<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="categoryproducts.aspx.cs" Inherits="categoryproducts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br /><br /><br />
<center>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:PlantShopConnectionString %>" 
        SelectCommand="SELECT * FROM [CategoryProducts] WHERE ([catid] = @catid)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="catid" 
                QueryStringField="catid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="Productid" 
        DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal">
        <ItemTemplate>
        <a href="<%# String.Format("ProductDetails.aspx?prodID={0}",Eval("Productid")) %>" >
            <asp:Image ID="productimgurlLabel" runat="server" 
                ImageUrl='<%# Eval("productimgurl") %>' Height="250" Width="250" /></a>
            <br />
            <asp:Label ID="productnameLabel" runat="server" 
                Text='<%# Eval("productname") %>' />
            <br />
            Price: Rs.
            <b><asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>'  /></b>
            <br />
            <a href="<%# String.Format("ProductDetails.aspx?prodID={0}",Eval("Productid")) %>" >Order Now</a>
<br />
        </ItemTemplate>
    </asp:DataList>
</center>
</asp:Content>

