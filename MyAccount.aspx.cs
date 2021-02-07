using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class MyAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["email"] != null)
            {
                pnlviewdetail.Visible = true;
                showdata();
            }
            else
            {
                Response.Redirect("login.aspx");
                pnlviewdetail.Visible = false;
                pnlupdate.Visible = false;
            }
        }
    }
    public void showdata()
    {
        int userid = Convert.ToInt32(Session["userID"]);
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["PlantConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmd = "Select * from signup where id=" + userid;
        SqlCommand cmd1 = new SqlCommand(cmd, conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        int userID;

        if (ds.Tables[0].Rows.Count > 0)
        {
            userID = Convert.ToInt32(ds.Tables[0].Rows[0].ItemArray[0]);
            Session["ID"] = userID;
            
            pnlviewdetail.Visible = true;
            pnlupdate.Visible = false;

            lblrfname.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            lblroccupation.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
            lblrmobileno.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
            lblremailid.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // to show the detail to edit.
        int userid = Convert.ToInt32(Session["userID"]);
        pnlupdate.Visible = true;
        pnlviewdetail.Visible = false;

        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["PlantConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        

        string cmd = "Select * from signup where id=" + userid;
        SqlCommand cmd1 = new SqlCommand(cmd, conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd1);
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            txtfname.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            txtoccupation.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
            txtmobileno.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
            txtemailid.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
        }


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        // save the updated detail.
        string conString = System.Configuration.ConfigurationManager.ConnectionStrings["PlantConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(conString);
        string cmdstring3 = "update signup set fname='" + txtfname.Text + "',address='" + txtoccupation.Text + "',mobile='" + txtmobileno.Text + "',email='" + txtemailid.Text + "' where id=" + Convert.ToInt32(Session["userID"]);
        SqlCommand cmd11 = new SqlCommand(cmdstring3, conn);
        conn.Open();
        cmd11.ExecuteNonQuery();

        conn.Close();
        string str = "<script language='javascript'>alert('your changes are saved.');</script>";
        Page.RegisterStartupScript("PopUp", str);
        pnlviewdetail.Visible = true;
        showdata();
    }
}