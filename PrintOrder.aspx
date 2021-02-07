<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="PrintOrder.aspx.cs" Inherits="PrintOrder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br /><br /><br /><br /><br /><br />
<center>
   Green Life, Dadar, Dear <%= Session["username"]%>  Your Order Details are as follows;
        
     
<asp:GridView 
            ID="grdCart" runat="server">
        </asp:GridView>
        Total :   <%=Session["Total"] %>
</center>
</asp:Content>

