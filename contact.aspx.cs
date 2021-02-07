using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string connString = WebConfigurationManager.ConnectionStrings["PlantConnectionString"].ToString();

        SqlConnection objConn = new SqlConnection(connString);

        try
        {
            objConn.Open();
            int intInsert;


            String strInsertQry;

            strInsertQry = "insert into tbl_enquiry(name,email,contact,enquiry) values (@name,@email,@contact,@enquiry)";
            SqlCommand Cmdins = new SqlCommand(strInsertQry, objConn);


            Cmdins.Parameters.AddWithValue("name", txtname.Text);
            Cmdins.Parameters.AddWithValue("email", txtemail.Text);
            Cmdins.Parameters.AddWithValue("contact", txtmobile.Text);
            Cmdins.Parameters.AddWithValue("enquiry", txtsub.Text);

            intInsert = Cmdins.ExecuteNonQuery();

            if (intInsert > 0)
                

            lblmsg.Text = "dear" + txtname.Text + ",Your Enquiry will ansewerd as soon as possible.";

        }




        catch (Exception ex) { throw ex; }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtemail.Text = "";
        txtmobile.Text = "";
        txtsub.Text = "";
    }
}