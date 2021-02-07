<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="viewcart.aspx.cs" Inherits="viewcartm" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br /><br /><br />
<center>
   Dear <% =Session["username"]  %>
   <br> <br><br>  Your order is as follows :
   <br><br>
     <asp:GridView ID="grdCart" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" OnRowCancelingEdit="grdCart_RowCancelingEdit" OnRowDeleting="grdCart_RowDeleting" OnRowEditing="grdCart_RowEditing" OnRowUpdating="grdCart_RowUpdating">
    <Columns>


        <asp:TemplateField>
            <ItemTemplate>
                  <%--<asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("ImageUrl","thumb_{0}")%>'/>--%>
                  <img runat="server" src='<%#Eval("ImageUrl")%>' alt="" style="width:50px;height:50px"/>
            </ItemTemplate>
        </asp:TemplateField>
        <%--<asp:BoundField DataField="ImageUrl" HeaderText="ImageUrl" ReadOnly="True" />--%>
        <asp:BoundField DataField="ProductName" HeaderText="Product" ReadOnly="True" />
        <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
        <asp:BoundField DataField="Price" HeaderText="Price" ReadOnly="True" DataFormatString="{0:c}" HtmlEncode="false" />
        <asp:BoundField DataField="SubTotal" HeaderText="Total" ReadOnly="True" DataFormatString="{0:c}" HtmlEncode="false" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />

    </Columns>
        <EmptyDataTemplate>
        Your Shopping Cart is empty, add items  <br/><br />
        <a href="category.aspx">Continue Shopping </a>
    </EmptyDataTemplate>
    
    </asp:GridView>
    
    <asp:Label ID="TotalLabel" runat="server"> </asp:Label>
        <asp:Button ID="Btnorder" runat="server" Text="Place Order" onclick="Btnorder_Click" />
    </center>
        </asp:Content>

