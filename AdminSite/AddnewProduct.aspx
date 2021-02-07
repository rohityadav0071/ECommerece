<%@ Page Title="" Language="C#" MasterPageFile="~/Adminsite/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddnewProduct.aspx.cs" Inherits="AddnewProduct" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    
  <fieldset>
          <legend class="">Add New Product</legend>
    </div>

       

    <div class="control-group">
        Select Category :&nbsp;<asp:DropDownList 
            ID="ddlcatid" runat="server" DataSourceID="SqlDataSource1" 
            DataTextField="catid" DataValueField="catid">
        </asp:DropDownList>
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:PlantShopConnectionString %>" 
            SelectCommand="SELECT [catid] FROM [Category]"></asp:SqlDataSource>
        <br />
      <!-- productname -->
      <label class="control-label"  for="productname">product name
        </label>
      &nbsp;<div class="controls">
        <input type="text" id="productname" name="productname" placeholder="" class="input-xlarge"\>
        
          <br />
        
      </div>
    </div>
    
 
    <div class="control-group">
      <!-- prodescription -->
      <label class="control-label" for="prodescription">product description</label>
      <div class="controls">
        <input type="text" id="prodescription" name="prodescription" placeholder="" class="input-xlarge">
        
      </div>
    </div>
 
    <div class="control-group">
      <!-- productimage-->
      <label class="control-label" for="productimage">Upload Image</label>
      <div class="controls">
       
       <asp:FileUpload ID="productimage" runat="server" />
        
      </div>
    </div>
 
    <div class="control-group">
      <!-- price -->
      <label class="control-label"  for="price">Price</label>
      <div class="controls">
        <input type="text" id="price" name="price" placeholder="" class="input-xlarge">
        
      </div>
    </div>
 
    <div class="control-group">
      <!-- Button -->
      <div class="controls">
       
           <asp:Button ID="btnUpload" runat="server" Text="Upload" 
               onclick="btnUpload_Click" />
          <asp:Label ID="lblMsg" runat="server" ></asp:Label>
      </div>
    </div>
  </fieldset>
    

</asp:Content>

