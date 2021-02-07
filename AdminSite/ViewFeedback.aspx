<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewFeedback.aspx.cs" Inherits="AdminSite_ViewFeedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:PlantShopConnectionString %>" 
        DeleteCommand="DELETE FROM [feedback] WHERE [fid] = @fid" 
        InsertCommand="INSERT INTO [feedback] ([fbname], [fbcontact], [fbemail], [feedback]) VALUES (@fbname, @fbcontact, @fbemail, @feedback)" 
        SelectCommand="SELECT [fid], [fbname], [fbcontact], [fbemail], [feedback] FROM [feedback]" 
        UpdateCommand="UPDATE [feedback] SET [fbname] = @fbname, [fbcontact] = @fbcontact, [fbemail] = @fbemail, [feedback] = @feedback WHERE [fid] = @fid">
        <DeleteParameters>
            <asp:Parameter Name="fid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="fbname" Type="String" />
            <asp:Parameter Name="fbcontact" Type="String" />
            <asp:Parameter Name="fbemail" Type="String" />
            <asp:Parameter Name="feedback" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="fbname" Type="String" />
            <asp:Parameter Name="fbcontact" Type="String" />
            <asp:Parameter Name="fbemail" Type="String" />
            <asp:Parameter Name="feedback" Type="String" />
            <asp:Parameter Name="fid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="fid" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="fid" HeaderText="fid" InsertVisible="False" 
                ReadOnly="True" SortExpression="fid" />
            <asp:BoundField DataField="fbname" HeaderText="fbname" 
                SortExpression="fbname" />
            <asp:BoundField DataField="fbcontact" HeaderText="fbcontact" 
                SortExpression="fbcontact" />
            <asp:BoundField DataField="fbemail" HeaderText="fbemail" 
                SortExpression="fbemail" />
            <asp:BoundField DataField="feedback" HeaderText="feedback" 
                SortExpression="feedback" />
        </Columns>
    </asp:GridView>

</center>
</asp:Content>

