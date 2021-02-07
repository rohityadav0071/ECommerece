<%@ Page Title="" Language="C#" MasterPageFile="~/Adminsite/AdminMasterPage.master" AutoEventWireup="true" CodeFile="addcategory.aspx.cs" Inherits="adminsite_addcategory" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    




  <fieldset>
          <legend class="">Add New Category</legend>
       

    <div class="control-group">
        <br />
      
        Category<label class="control-label"  for="categoryname"> Id
        </label>
      &nbsp;<div class="controls">
        <input type="text" id="Text1" name="catid" placeholder="" class="input-xlarge"\>
        
          <br />
        
      </div>
    </div>

    <div class="control-group">
        <br />
      
        Category<label class="control-label"  for="categoryname"> name
        </label>
      &nbsp;<div class="controls">
        <input type="text" id="categoryname" name="categoryname" placeholder="" class="input-xlarge"\>
        
          <br />
        
      </div>
    </div>
    
 
    <div class="control-group">
      
        Category<label class="control-label" for="categorydescription"> description</label>
      <div class="controls">
        <input type="text" id="categorydescription" name="categorydescription" placeholder="" class="input-xlarge">
        
      </div>
    </div>
 
    <div class="control-group">
      
      <label class="control-label" for="categoryimage">Upload Image</label>
      <div class="controls">
       
       <asp:FileUpload ID="categoryimage" runat="server" />
        
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

