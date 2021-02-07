<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="MyAccount.aspx.cs" Inherits="MyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br /><br /><br />
    <center>
    <asp:Panel ID="pnlviewdetail" runat="server" Width="100%" Visible="false">
            <table width="50%">
                <tr style="height:25px ">
                    <td align="right" style="width: 73px; height: 23px; text-align: left;">
                        </td>
                    <td style="width: 31px">
                    </td>
                    <td style="width: 192px">
                    </td>
                </tr>
                <tr style="height:25px ">
                    <td align="right" style="width: 73px; height: 23px; text-align: left;">
                        <asp:Label ID="lblfname" runat="server" BackColor="Transparent" Text="First Name" Font-Size="12px" Font-Bold="True"></asp:Label></td>
                    <td align="center" style="width: 31px; height: 16px;">
                        <asp:Label ID="Label27" runat="server" BackColor="Transparent" 
                            Text=":"></asp:Label></td>
                    <td style="width: 192px; height: 16px; text-align: left;">
                        <asp:Label ID="lblrfname" runat="server" BackColor="Transparent" ></asp:Label></td>
                </tr>
                <tr style="height:25px ">
                    <td align="right" style="width: 73px; height: 23px; text-align: left;">
                        <asp:Label ID="lbloccupation" runat="server" BackColor="Transparent" Text="Address" Font-Size="12px" Font-Bold="True"></asp:Label></td>
                    <td align="center" style="width: 31px">
                        <asp:Label ID="Label29" runat="server" BackColor="Transparent" 
                            Text=":"></asp:Label></td>
                    <td style="width: 192px; text-align: left;">
                        <asp:Label ID="lblroccupation" runat="server" BackColor="Transparent" ></asp:Label></td>
                </tr>
                 <tr style="height:25px ">
                    <td align="right" style="width: 73px; height: 23px; text-align: left;">
                        <asp:Label ID="lblmobileno" runat="server" BackColor="Transparent"
                            Text="Mobile No" Font-Size="12px" Font-Bold="True"></asp:Label></td>
                     <td align="center" style="width: 31px">
                         <asp:Label ID="Label36" runat="server" BackColor="Transparent" 
                             Text=":"></asp:Label></td>
                    <td style="width: 192px; text-align: left;">
                        <asp:Label ID="lblrmobileno" runat="server" BackColor="Transparent" ></asp:Label></td>
                </tr>
                 <tr style="height:25px ">
                    <td align="right" style="width: 73px; height: 23px; text-align: left;">
                        <asp:Label ID="lblemailid" runat="server" BackColor="Transparent" 
                            Text="Email-ID" Font-Size="12px" Font-Bold="True"></asp:Label></td>
                     <td align="center" style="width: 31px">
                         <asp:Label ID="Label37" runat="server" BackColor="Transparent" 
                             Text=":"></asp:Label></td>
                    <td style="width: 192px; text-align: left;">
                        <asp:Label ID="lblremailid" runat="server" BackColor="Transparent" ></asp:Label></td>
                </tr>
                 <tr style="height:25px ">
                    <td align="right" style="width: 73px; height: 23px; text-align: left;">
                        </td>
                     <td align="center" style="width: 31px">
                         </td>
                    <td style="width: 192px">
                        </td>
                </tr>
                 <tr style="height:25px ">
                    <td align="right" style="height: 23px; width: 73px; text-align: left;">
                        </td>
                     <td style="width: 31px; height: 26px;">
                     </td>
                    <td style="height: 26px; width: 192px;">
                        <asp:Button ID="Button1" runat="server" Text="Edit" OnClick="Button1_Click" /></td>
                </tr>
            </table>
        
        </asp:Panel>
        
    
   
    </center>
    <asp:Panel ID="pnlupdate" runat="server" Width="100%" Visible="false" CssClass="font">
        &nbsp;<table style="width: 391px" align="center" class="font" >
                <tr style="height:25px ">
                    <td align="right" style="width: 151px">
                        <asp:Label ID="Label1" runat="server" BackColor="Transparent" 
                            Text="First Name" Font-Bold="True"></asp:Label></td>
                    <td align="center" style="width: 30px">
                    </td>
                    <td align="left" style="width: 198px">
                        <asp:TextBox ID="txtfname" runat="server" ></asp:TextBox></td>
                </tr>
                <tr style="height:25px ">
                    <td align="right" style="width: 151px">
                        <asp:Label ID="Label17" runat="server" BackColor="Transparent" 
                            Text="Address" Font-Bold="True"></asp:Label></td>
                    <td align="center" style="width: 30px">
                    </td>
                    <td align="left" style="width: 198px">
                        <asp:TextBox ID="txtoccupation" runat="server"></asp:TextBox></td>
                </tr>
                                <tr style="height:25px ">
                    <td align="right" style="width: 151px">
                        <asp:Label ID="Label24" runat="server" BackColor="Transparent" 
                            Text="Mobile No" Font-Bold="True"></asp:Label></td>
                    <td align="center" style="width: 30px">
                    </td>
                    <td align="left" style="width: 198px">
                        <asp:TextBox ID="txtmobileno" runat="server"></asp:TextBox></td>
                </tr>
                <tr style="height:25px ">
                    <td align="right" style="width: 151px">
                        <asp:Label ID="Label25" runat="server" BackColor="Transparent" 
                            Text="Email Id" Font-Bold="True"></asp:Label></td>
                    <td align="center" style="width: 30px">
                    </td>
                    <td align="left" style="width: 198px">
                        <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox></td>
                </tr>
                <tr style="height:25px ">
                    <td align="right" style="width: 151px">
                    </td>
                    <td align="center" style="width: 30px">
                    </td>
                    <td align="left" style="width: 198px">
                        <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="Button2_Click" /></td>
                </tr>
            </table>
        
        </asp:Panel>
        

</asp:Content>

