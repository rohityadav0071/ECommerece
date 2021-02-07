<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br /><br /><br /><br /><br />
<!-- contact -->
	<div class="contact" id="contact">
		<div class="title-div">
			<h3 class="tittle">
				<span>C</span>ontact Us
			</h3>
			<div class="tittle-style">
			</div>
		</div>
		
	</div>
	<div class="second-contact-agile">
		<div class="col-md-6 form-bg">
			<form action="#" method="post">
				<div class="contact-fields">
					<asp:TextBox ID="txtname" runat="server" placeholder="Name" required=""></asp:TextBox>
				</div>
				<div class="contact-fields">
					<asp:TextBox ID="txtemail" runat="server" placeholder="Email" required=""></asp:TextBox>
				</div>
				<div class="contact-fields">
					<asp:TextBox ID="txtmobile" runat="server" placeholder="Telephone" required=""></asp:TextBox>
				</div>
				<div class="contact-fields">
					<asp:TextBox ID="txtsub" runat="server" placeholder="Subject" required=""></asp:TextBox>
				</div>
				<asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                            onclick="btnSubmit_Click" />
                            <asp:Button ID="btnReset" runat="server" Text="Clear" 
                            onclick="btnReset_Click" />
                            <asp:Label ID="lblmsg" runat="server" ></asp:Label> 
			</form>
		</div>
		<div class="col-md-6 address-left-second">
			<div class="address-grid">
				<h5 class="small-title">Contact Info</h5>
				<div class="address-grids">
					<span class="fa fa-volume-control-phone" aria-hidden="true"></span>
					<div class="contact-right">
						<p>Telephone </p>
						<span>+022-345-6789</span>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="address-grids">
					<span class="fa fa-envelope-o" aria-hidden="true"></span>
					<div class="contact-right">
						<p>Mail </p>
						plantshop@gmail.com
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="address-grids">
					<span class="fa fa-map-marker" aria-hidden="true"></span>
					<div class="contact-right">
						<p>Location</p>
						<span>3136 NE 130th St, Seattle, WA 98125, India.</span>
					</div>
					<div class="clearfix"> </div>
				</div>
				<div class="address-grids">
					<span class="fa fa-calendar" aria-hidden="true"></span>
					<div class="contact-right">
						<p>Working Hours</p>
						<span>Mon - Sat : 8:00 am to 10:30 pm</span>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<div class="clearfix"></div>
        
		
		<div class="clearfix"> </div>
        <div class="col-md-6 map">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7544.242813433798!2d72.85203803404475!3d19.014371155808842!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7cf17a398375b%3A0x674d586ed55fbfed!2sWadala%2C+Mumbai%2C+Maharashtra!5e0!3m2!1sen!2sin!4v1523388862347" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
		</div>
        <div class="clearfix"> </div>
	</div>
	<!-- //contact -->


	
</asp:Content>

