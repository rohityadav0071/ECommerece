<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewEnquiry.aspx.cs" Inherits="ViewEnquiry" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>

 <table style="width:700px; height: 365px;">
        <tr>
        <td  style="width:105px">
                 <asp:Label ID="lblFrom" runat="server" Text="From " ForeColor="#660066" 
                     Font-Names="algerian" Font-Size="Large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="style1">
                    <asp:TextBox ID="txtFrom" runat="server" Width="250px" BackColor="#CCCCCC"  
                        Height="22px" Enabled="False" Text="saurabhcarservice@gmail.com"></asp:TextBox><br />
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Field cannot be Empty" ControlToValidate="txtFrom"></asp:RequiredFieldValidator>
      <br />  &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ErrorMessage="Invaild Email ID" 
                        ControlToValidate="txtFrom" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
        </tr>              
            <tr>
                <td  style="width:105px">
                 <asp:Label ID="lblTo" runat="server" Text="To " ForeColor="#660066" 
                        Font-Names="algerian" Font-Size="Large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td class="style1">
           <asp:TextBox ID="txtTo" runat="server" Width="250px" BackColor="#CCCCCC"  Height="22px"></asp:TextBox>
      <br />  &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Field cannot be Empty" ControlToValidate="txtTo"></asp:RequiredFieldValidator>
      <br />  &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                        ErrorMessage="Invaild Email ID" 
                        ControlToValidate="txtTo" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
         </td>
            </tr>
            <tr>
                <td style="width: 105px">
 
 <asp:Label ID="lblSubject" runat="server" Text="Subject " ForeColor="#660066" 
                        Font-Names="algerian" Font-Size="Large"></asp:Label>
 
 </td>
                <td class="style1">
               <asp:TextBox ID="txtSubject" runat="server" Width="250px" BackColor="#CCCCCC" 
        Height="22px"></asp:TextBox>
               <br />
   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
   ErrorMessage="Please Mention Subject" ControlToValidate="txtSubject"></asp:RequiredFieldValidator> 
                 <br />
        
                                              </td>
            </tr>
            <tr>
            <td style="width:105px">
      <asp:Label ID="lblMessage" runat="server" Text="Message " ForeColor="#660066" 
                    Font-Names="algerian" Font-Size="Large"></asp:Label></td>
            <td class="style1">
                    <asp:TextBox ID="txtMessage" runat="server" Width="248px" TextMode="MultiLine"

        Height="83px" BackColor="#CCCCCC"></asp:TextBox>
            <br />
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
   ErrorMessage="Please Enter Message you want to send" ControlToValidate="txtMessage"></asp:RequiredFieldValidator>
              </td>
            </tr>
            <tr>
            <td class="style2">
            <asp:Label ID="Label1" runat="server" Text="Attachment" ForeColor="#660066" 
                     Font-Names="algerian" Font-Size="Large"></asp:Label>
            </td>
            <td class="style3">
                &nbsp;&nbsp; <asp:FileUpload ID="FileUpload1" runat="server" ForeColor="#CCCCCC" 
                    Width="69px" />
            </td>
            </tr>
            <tr>
            <td colspan="2" style="height: 68px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <asp:Button ID="btnSendEmail" runat="server" Height="38px" Width="86px" 
                    Text="Send Mail" onclick="btnSendEmail_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
             <asp:Button ID="btnEmailReset" runat="server" Height="38px" Width="86px" 
                    Text="Reset" onclick="btnEmailReset_Click"  />  
                &nbsp;</td>
            </tr>
            

        <tr>
            <td colspan="2">
                <asp:Label ID="lblmail" runat="server" Font-Bold="True" Font-Italic="False" 
                    ForeColor="Black" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                 <div>
         
    
  
    </div>
            </td>
            </tr>
    </table>

    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="eid" 
        DataSourceID="SqlDataSource1" 
         onselectedindexchanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="eid" HeaderText="eid" InsertVisible="False" 
                ReadOnly="True" SortExpression="eid" />
            <asp:BoundField DataField="name" HeaderText="name" 
                SortExpression="name" />
            <asp:BoundField DataField="email" HeaderText="email" 
                SortExpression="email" />
            <asp:BoundField DataField="contact" HeaderText="contact" 
                SortExpression="contact" />
            <asp:BoundField DataField="enquiry" HeaderText="enquiry" 
                SortExpression="enquiry" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:PlantShopConnectionString %>" 
        DeleteCommand="DELETE FROM [tbl_enquiry] WHERE [eid] = @eid" 
        InsertCommand="INSERT INTO [tbl_enquiry] ([name], [email], [contact], [enquiry]) VALUES (@name, @email, @contact, @enquiry)" 
        SelectCommand="SELECT [eid], [name], [email], [contact], [enquiry] FROM [tbl_enquiry]" 
        
         
         UpdateCommand="UPDATE [tbl_enquiry] SET [name] = @name, [email] = @email, [contact] = @contact, [enquiry] = @enquiry WHERE [eid] = @eid">
        <DeleteParameters>
            <asp:Parameter Name="eid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="contact" Type="String" />
            <asp:Parameter Name="enquiry" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="email" Type="String" />
            <asp:Parameter Name="contact" Type="String" />
            <asp:Parameter Name="enquiry" Type="String" />
            <asp:Parameter Name="eid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</center>
</asp:Content>

