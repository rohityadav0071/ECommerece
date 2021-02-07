<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br /><br /><br />
    <center>
<table >
<tr><th colspan="2"> <h2 class="h2-line-3">Register Here </h2>  </th></tr>
                     <tr>
                <td class="style1">
     <span class="clr-1"><asp:Label ID="Label3" runat="server" Text="Full Name" 
                        Font-Size="Medium" style="margin-left :100px"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></td>
                <td class="style4" valign="top">
                   
                    <asp:TextBox ID="txtFirstName" runat="server" Width="190px" Height="25px" 
                        BackColor="#CCCCCC"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Please Enter your First name" ControlToValidate="txtFirstName"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Name contains Only Characters" ControlToValidate="txtFirstName" 
                        ValidationExpression="[a-zA-Z'.\s]{1,50}"></asp:RegularExpressionValidator>    
                                </td>
            </tr>
            <tr>
            <td class="style1">
          <span class="clr-1">            <asp:Label ID="Label9" runat="server" 
                    Text="Address" Font-Size="Medium" style="margin-left :100px"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;</span></td>
            <td class="style4">
                <asp:TextBox ID="txtAddress" runat="server" Width="191px" TextMode= "MultiLine" 
                    Height="80px" BackColor="#CCCCCC" ></asp:TextBox><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ErrorMessage="Address Field cannot be Empty" ControlToValidate="txtAddress"></asp:RequiredFieldValidator><br />
                </td>
            </tr>
            <tr>
                <td class="style1">
      <span class="clr-1">  <asp:Label ID="Label2" runat="server" Text="Mobile No" 
                        Font-Size="Medium" style="margin-left :100px"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></td>
                <td class="style4" valign="top">
                                     <asp:TextBox ID="txtMob" runat="server" style="margin-right: 1px" 
                        Width="190px" Height="25px" BackColor="#CCCCCC"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Please Enter your mobile no" ControlToValidate="txtMob"></asp:RequiredFieldValidator><br /> 
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ErrorMessage="Invalid Mobile No" ControlToValidate="txtMob" 
                        ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                  <span class="clr-1"> <asp:Label ID="Label5" runat="server" style="margin-left :100px" Text="Email ID" Font-Size="Medium"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
                <td class="style4" valign="top">
                 
                    <asp:TextBox ID="txtEmail" runat="server" Width="190px" Height="25px" 
                        BackColor="#CCCCCC"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="Please enter your Emaild ID" ControlToValidate="txtEmail"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                        ErrorMessage="Invalid EmailID" ControlToValidate="txtEmail" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator> </td>
            </tr> 
            <tr>
                <td class="style1">
  <span class="clr-1"> <asp:Label ID="Label7" runat="server" Text="Password" Font-Size="Medium" style="margin-left :100px"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> </td>
                <td class="style6" valign="top">
                    <asp:TextBox ID="txtPass" runat="server" BackColor="#CCCCCC" Height="25px" 
                        TextMode="Password" Width="190px"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ErrorMessage="Password Field cannot be Empty" ControlToValidate="txtPass"></asp:RequiredFieldValidator>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" 
                        ControlToValidate="txtPass" ErrorMessage="Password must contain 8 to 14 characters and must include at least one upper case,one lower case letter and one numeric Digit." 
                        ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,14}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <span class="clr-1"> <asp:Label ID="Label8" runat="server" Text="Reenter Password" Font-Size="Medium" style="margin-left :100px"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></td>
                <td class="style6" valign="top">
                                <asp:TextBox ID="txtReenterPass" runat="server" BackColor="#CCCCCC" Height="25px" 
                        TextMode="Password" Width="190px"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ErrorMessage="Please Reenter your Password" ControlToValidate="txtReenterPass"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtPass" ControlToValidate="txtReenterPass" 
                        ErrorMessage="Password Does NOT Match"></asp:CompareValidator>
                </td>
            </tr>
           
           <tr>
           <td class="style1"></td><td> 
               <asp:Button ID="btnRegSubmit" runat="server" 
                   Height="38px" Width="86px" Text="Submit" onclick="btnRegSubmit_Click"
                   />
            &nbsp;<asp:Button ID="btnRegReset" runat="server" Height="38px" Width="86px" 
                   Text="Reset" onclick="btnRegReset_Click"  />  
            </td></tr>
             </table>
             <br /><br />
             </center>  
</asp:Content>

