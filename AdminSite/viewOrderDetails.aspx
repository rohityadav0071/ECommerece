<%@ Page Title="" Language="C#" MasterPageFile="~/Adminsite/AdminMasterPage.master" AutoEventWireup="true" CodeFile="viewOrderDetails.aspx.cs" Inherits="adminsite_viewOrderDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<br /><br /><br /><br />
<div>

<asp:Panel ID="PanelOrders" runat="server"  Width="100%" CssClass="font">

<table style="height: 486px" >
<tr>

 <asp:Label ID="lblCustomer" runat="server" Height="70" Width="170" CommandName="lblCustomer"/>
</tr>
<tr>
        <td>
            <asp:Panel ID="PanelData" runat="server"  Width="100%">
          
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    AllowPaging="True" AllowSorting="True" PageSize="5" 
                    OnRowCommand="GridView1_RowCommand" 
                    OnPageIndexChanging="GridView1_PageIndexChanging" 
                    OnSelectedIndexChanging="GridView1_SelectedIndexChanging" 
                    AutoGenerateSelectButton="True" DataKeyNames="customeremailid"
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:TemplateField HeaderText="Order Id" >
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("orderid") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("orderid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Order date">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("order_date") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("order_date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Customer_ID" >
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("customeremailid") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("customeremailid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Total Amount">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("totalamount") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("totalamount") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            
            <asp:TemplateField>
            <ItemTemplate>
            <table width="170" Height="50">
            <tr>
            <td>
            <asp:Button ID="btnProduct" runat="server" Text="Product Details" CommandName="Product" CommandArgument='<%# Bind("orderid") %>' Height="25" Width="170"/>
            </td></tr>
            </table>
                
                
            </ItemTemplate> 
            </asp:TemplateField>
                     
           
        </Columns>
        <RowStyle CssClass="row2" />
        <AlternatingRowStyle CssClass="row1" />
    </asp:GridView>
   
              </asp:Panel>
        </td>
    </tr>
 <tr>
             <td style=" vertical-align: top; text-align: left;">
                 <asp:Panel ID="PanelError"  Height="100px"  runat="server" Width="100%" Visible="False">
                     <table style="width: 50%; height: 11px;">
                         <tr>
                             <td>
                                 <asp:Label ID="lblNoData" runat="server" Text="No Order Found"></asp:Label></td>
                         </tr>
                     </table>
                     
                 </asp:Panel>
             </td>
         </tr>
         
</table>
</asp:Panel>


</div> 
<br /><br /><br /><br />
</center>
</asp:Content>

