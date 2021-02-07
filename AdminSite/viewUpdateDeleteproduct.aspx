<%@ Page Title="" Language="C#" MasterPageFile="~/Adminsite/AdminMasterPage.master" AutoEventWireup="true" CodeFile="viewUpdateDeleteproduct.aspx.cs" Inherits="admin_viewproduct" Debug="true" %>

<script runat="server">

    
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>
    

    <asp:GridView ID="GridView1" runat="server" 
        onselectedindexchanged="GridView1_SelectedIndexChanged"  AutoGenerateColumns="false"
        OnRowCancelingEdit="gvImage_RowCancelingEdit" DataKeyNames="Productid" CellPadding="4" OnPageIndexChanging="GridView1_PageIndexChanging" 
                OnRowEditing="gvImage_RowEditing" OnRowUpdating="gvImage_RowUpdating" OnRowDeleting="gvImage_RowDeleting" AllowPaging="true" AllowSorting="true">
        <Columns>

        <asp:TemplateField HeaderText="Product id" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:TextBox ID="txtprodid" runat="server" Text='<%# Eval("Productid") %>'/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblprodid" runat="server" Text='<%# Eval("Productid") %>' ></asp:Label>
                </ItemTemplate>
                   <HeaderStyle Width="150px"></HeaderStyle>
         </asp:TemplateField>

            <asp:TemplateField HeaderText="Categpry id" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:TextBox ID="txtid" runat="server" Text='<%# Eval("catid") %>'/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblcatid" runat="server" Text='<%# Eval("catid") %>'></asp:Label>
                </ItemTemplate>
             <HeaderStyle Width="150px"></HeaderStyle>
            </asp:TemplateField>
           
            <asp:TemplateField HeaderText="Product name" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:TextBox ID="txtname" runat="server" Text='<%# Eval("productname") %>'/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblcatname" runat="server" Text='<%# Eval("productname") %>' ></asp:Label>
                </ItemTemplate>
                   <HeaderStyle Width="150px"></HeaderStyle>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Product image" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:Image ID="Image1" runat="server" 
                        ImageUrl='<%# Eval("productimgurl") %>' Height="80px" Width="100px" />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("productimgurl") %>' Height="80px" Width="100px"/>
                </ItemTemplate>
<HeaderStyle Width="150px"></HeaderStyle>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Description" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:TextBox ID="txtdesc" runat="server" Text='<%# Eval("description") %>'/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lbldesc" runat="server" Text='<%# Eval("description") %>' ></asp:Label>
                </ItemTemplate>
               <HeaderStyle Width="150px"></HeaderStyle>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderText="Price" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:TextBox ID="txtprice" runat="server" Text='<%# Eval("price") %>'/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblprice" runat="server" Text='<%# Eval("price") %>' ></asp:Label>
                </ItemTemplate>
<HeaderStyle Width="150px"></HeaderStyle>
            </asp:TemplateField>
            
            <asp:TemplateField HeaderStyle-Width="150px">  
                <ItemTemplate>  
                    <asp:LinkButton ID="LkB1" runat="server" CommandName="Edit">Edit</asp:LinkButton>  
                    <asp:LinkButton ID="LkB11" runat="server" CommandName="Delete">Delete</asp:LinkButton>  
                </ItemTemplate>  
                <EditItemTemplate>  
                    <asp:LinkButton ID="LkB2" runat="server" CommandName="Update">Update</asp:LinkButton>  
                    <asp:LinkButton ID="LkB3" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>  
                </EditItemTemplate>  
<HeaderStyle Width="150px"></HeaderStyle>
            </asp:TemplateField>  
        
        </Columns>

    </asp:GridView>


<br />
<br/>
<table>
    
    <tr>
        <asp:Label ID="lblResult" runat="server" ></asp:Label>
    </tr>
    
</table>



</center>
</asp:Content>

