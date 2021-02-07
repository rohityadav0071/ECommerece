<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style2
        {
            height: 63px;
            width: 246px;
        }
        .style3
        {
            width: 246px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br /><br /><br />
<center>
    <div class="comment-2">
        <table style="width:549px ; height: 500px;">
            <%--<tr bgcolor="White">
                <td class="style16" valign="top" style="height: 63px; width: 136px;">
                     <span class="clr-1"> Enquiry ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    :</span>
                </td>
                <td class="clr-1" valign="top" style="height: 63px">
                    <asp:TextBox ID="txtEnqID" runat="server" BackColor="#CCCCCC" Width="180px" Height="27px"></asp:TextBox>
                </td>
            </tr>--%>
            <tr>
                <td  valign="top" class="style3">
                      <span class="clr-1" style="font-size: medium">Enter your Name &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</span>
                </td>
                <td class="clr-1" valign="top" style="height: 63px">
                    <asp:TextBox ID="txtEnqName" runat="server" BackColor="#CCCCCC" Width="180px" Height="27px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name Field cannot be empty"
                        ControlToValidate="txtEnqName"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Name&nbsp;only&nbsp;Contain&nbsp;Characters&nbsp;"
                        ControlToValidate="txtEnqName" ValidationExpression="[a-zA-Z'.\s]{1,30}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" valign="top">
                     <span class="clr-1" style="font-size: medium">Enter your Contact No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;</span>
                </td>
                <td class="clr-1" valign="top" style="height: 63px">
                    <asp:TextBox ID="txtContactNo" runat="server" BackColor="#CCCCCC" Width="180px" Height="27px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please Enter Contact No"
                        ControlToValidate="txtContactNo"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Invalid Contact No"
                        ControlToValidate="txtContactNo" ValidationExpression="^([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                </td> 
            </tr>
            <tr>
                <td  valign="top" class="style3">
                    <span class="clr-1" style="font-size: medium"> Enetr your Email ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : </span>
                </td>
                <td class="clr-1" valign="top" style="height: 63px">
                    <asp:TextBox ID="txtEmailID" runat="server" BackColor="#CCCCCC" Width="181px" Height="27px"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please Enter EmaiID"
                        ControlToValidate="txtEmailID"></asp:RequiredFieldValidator><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid EmailID"
                        ControlToValidate="txtEmailID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="style3" valign="top">
                      <span class="clr-1" style="font-size: medium">&nbsp;Your Feedback&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : </span>
                </td>
                <td class="style18" valign="top" style="height: 125px">
                    <asp:TextBox ID="txtEnquiry" runat="server" BackColor="#CCCCCC" Height="94px" Width="180px"
                        TextMode="MultiLine"></asp:TextBox><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Fill your Enquiry"
                        ControlToValidate="txtEnquiry"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
               
                <td class="style2">
              <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      
                </td>
                <td class="clr-1" style="height: 63px">
                  <br />&nbsp;&nbsp;<asp:Button ID="btnEnquirySubmit" runat="server" Height="38px" Width="86px" 
                        Text="Submit" onclick="btnEnquirySubmit_Click" />
                    
                    &nbsp;  <asp:Button ID="btnEnquiryReset" runat="server" Height="38px" 
                        Width="86px" Text="Reset" onclick="btnEnquiryReset_Click" />  &nbsp;&nbsp;&nbsp;&nbsp;
                    
                </td>
            </tr>

            <tr>
                <td class="style2">
              <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <td class="clr-1" style="height: 63px">
                    <br />
                        <asp:Label ID="lblmsg" runat="server" ></asp:Label>
                    </td>  
                </td>
            </tr>
            
        </table>
    </div>
    
</center>
</asp:Content>

