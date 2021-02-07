<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewUpdateDeleteGallery.aspx.cs" Inherits="AdminSite_ViewUpdateDeleteGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<center>


<asp:GridView ID="GridView1" runat="server" 
        onselectedindexchanged="GridView1_SelectedIndexChanged"  AutoGenerateColumns="false"
        OnRowCancelingEdit="gvImage_RowCancelingEdit" DataKeyNames="gid" CellPadding="4"  
                OnRowEditing="gvImage_RowEditing" OnRowUpdating="gvImage_RowUpdating" OnRowDeleting="gvImage_RowDeleting" AllowPaging="true" OnPageIndexChanging="GridView1_PageIndexChanging">
        <Columns>
            <asp:TemplateField HeaderText="ID" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:TextBox ID="lblcatid" runat="server" Text='<%# Eval("gid") %>'/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblcatid" runat="server" Text='<%# Eval("gid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Image name" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:TextBox ID="txtname" runat="server" Text='<%# Eval("imagename") %>'/>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblcatname" runat="server" Text='<%# Eval("imagename") %>' ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Gallery image" HeaderStyle-Width="150px">
                <EditItemTemplate>
                    <asp:Image ID="Image1" runat="server" 
                        ImageUrl='<%# Eval("imageurl") %>' Height="80px" Width="100px" />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("imageurl") %>' Height="80px" Width="100px"/>
                </ItemTemplate>
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

