<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="confirmorder.aspx.cs" Inherits="confirmorder" %>


<asp:Content ID="ContentPlaceHolder1" ContentPlaceHolderID="ContentPlaceHolder1"  Runat="Server">
    
<br /><br /><br /><br /><br />
<center>
Name: &nbsp;<% =Session["username"]  %><br />
   Address: &nbsp;  <%=   Session["address"]%>  <br>
   Mobile:&nbsp;  <%=   Session["mobile"]%>  <br>
   Email:&nbsp;<%=   Session["email"]%>  <br>
 Amount :&nbsp;  <%=   Session["totalamt"]%>  &nbsp;&nbsp;  <br>
  



    <p>
    
        Your Order has been placed successfully !&nbsp;
        
        
    </p><br />
    <%if(Session["method"]=="Cash on Delivery"){ %>
    Cash will be Pay while <%=Session["method"]%>
    <%}
    else
    {        %>
    Payment paid online via <%=Session["method"]%>
    <%}%>
    <p>
        Please check your mail for details&nbsp; .
        </p>
    <p>
      <a href="category.aspx">  Continue Shoppiing</a>
       
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Print Order" />
    </p>
</center>    
</asp:Content>

