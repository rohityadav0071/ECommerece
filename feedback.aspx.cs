using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Configuration;

public partial class feedback : System.Web.UI.Page
{
    protected void Clear()
    {
        txtContactNo.Text = "";
        txtEmailID.Text = "";
        txtEnqName.Text = "";
        txtEnquiry.Text = "";
        txtEnqName.Focus();
    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnEnquirySubmit_Click(object sender, EventArgs e)
    {
        try
        {

            string connString = ConfigurationManager.ConnectionStrings["PlantConnectionString"].ToString();



            SqlConnection objConn = new SqlConnection(connString);


            string strQry = "insert into feedback(fbname,fbcontact,fbemail,feedback) values(@fbname,@fbcontact,@fbemail,@feedback) ";
            SqlCommand objcmd = new SqlCommand(strQry, objConn);
            objcmd.Parameters.AddWithValue("@fbname", txtEnqName.Text);
            objcmd.Parameters.AddWithValue("@fbcontact", txtContactNo.Text);
            objcmd.Parameters.AddWithValue("@fbemail", txtEmailID.Text);
            objcmd.Parameters.AddWithValue("@feedback", txtEnquiry.Text);

            objConn.Open();
            int intInsert = objcmd.ExecuteNonQuery();

            if (intInsert > 0)
            {
                lblmsg.Text = "Dear," + txtEnqName.Text + " Thank you for your Feedback. ";
                Clear();

            }
        }
        catch (Exception ex)
        {

        }
    }
    protected void btnEnquiryReset_Click(object sender, EventArgs e)
    {
        Clear();
    }
}