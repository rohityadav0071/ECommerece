using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;


public partial class ViewEnquiry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
                        if (Session["email"] ==null)
                                                     Response.Redirect("../login.aspx");
                        txtFrom.Text = "plantshop12@gmail.com";
                        lblmail.Text = "";
       
 }

    protected void btnSendEmail_Click(object sender, EventArgs e)
    {
        //start here
        //MailMessage mail = new MailMessage();
        //mail.To.Add(txtTo.Text);
        //mail.From = new MailAddress(txtFrom.Text);
        //mail.Subject = txtSubject.Text;
        //mail.Body = txtMessage.Text;
        //mail.IsBodyHtml = true;

        ////'Attach file using FileUpload Control and put the file in memory stream
        //if (FileUpload1.HasFile)
        //{
        //    mail.Attachments.Add(new Attachment(FileUpload1.PostedFile.InputStream, FileUpload1.FileName));
        //}

        //SmtpClient smtp = new SmtpClient();
        //smtp.Host = "smtp.gmail.com";
        //smtp.Port = 587;
        ////'Or Your SMTP Server Address
        //smtp.Credentials = new System.Net.NetworkCredential("plantshop12@gmail.com", "plantshop123");
        ////Or your Smtp Email ID and Password
        //smtp.EnableSsl = true;
        //smtp.Send(mail);
        //till here

        lblmail.Text = "Your Mail Succesfully got Send to" + " " + txtTo.Text;

        txtMessage.Text = "";
        txtSubject.Text = "";
        txtTo.Text = "";
    }
    protected void btnEmailReset_Click(object sender, EventArgs e)
    {

        txtMessage.Text = "";
        txtSubject.Text = "";
        txtTo.Text = "";
        lblmail.Text = "";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string strconn;
        strconn = WebConfigurationManager.ConnectionStrings["PlantConnectionString"].ToString();
        SqlConnection objConn = new SqlConnection(strconn);
        int eid = Convert.ToInt32(GridView1.SelectedValue);
        string strqury = " select email from tbl_enquiry where eid =@eid";
        SqlCommand objcmd = new SqlCommand(strqury, objConn);
        objcmd.Parameters.AddWithValue("@eid", eid);

        objConn.Open();
        SqlDataReader objreader = objcmd.ExecuteReader();
        objreader.Read();

        txtTo.Text = objreader.GetString(0);

        objreader.Close();
        objConn.Close();

    }
}