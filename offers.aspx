<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="offers.aspx.cs" Inherits="offers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br /><br /><br />
<center>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="offid" 
        DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <asp:Label ID="offproductnameLabel" runat="server" 
                Text='<%# Eval("offproductname") %>' />
            <br />
            <asp:Image ID="offproductimgLabel" runat="server" 
                ImageUrl='<%# Eval("offproductimg") %>' Height="300" Width="300" />
            <br />
            <asp:Label ID="offproddescLabel" runat="server" 
                Text='<%# Eval("offproddesc") %>' />
            <br />
            Price: Rs.
            <b><asp:Label ID="offpriceLabel" runat="server" Text='<%# Eval("offprice") %>' /></b>
            <br />
            <asp:Button ID="btnAddtoCart" runat="server" Text="Add to Cart" PostBackUrl='<%# String.Format("AddtoCart.aspx?prodID={0}",Eval("offid")) %>' />
            <asp:Button ID="btnOrder" runat="server" Text="Buy Now" />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:PlantShopConnectionString %>" 
        SelectCommand="SELECT * FROM [tbloffer] WHERE ([offid] = @offid)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="offid" 
                QueryStringField="prodID" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</center>
</asp:Content>

