using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class adminsite_viewOrderDetails : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    DataSet ds;
    SqlCommand cmd;
    string connStr = WebConfigurationManager.ConnectionStrings["PlantConnectionString"].ConnectionString;
    string email;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {
            Response.Redirect("../login.aspx");
        }
        if (!IsPostBack)
        {
            //Binding data with Grid View

            if (!IsPostBack)
            {
                ImageData();

                PanelData.Visible = true;
                PanelError.Visible = false;
            }
            else
            {
                PanelData.Visible = false;
                PanelError.Visible = true;
            }

        }
    }
    protected void ImageData()
    {
        con = new SqlConnection(connStr);
        con.Open();
        da = new SqlDataAdapter("select * from tblorder", con);
        ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }
    // edit event    
    protected void gvImage_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        ImageData();

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        int orderId = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "Product" && e.CommandArgument != null)
        {
            Response.Redirect("OrderdProductDetails.aspx?oi=" + orderId);
            Session["redirect"] = 1;
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        con = new SqlConnection(connStr);
        con.Open();
        GridView1.PageIndex = e.NewPageIndex;
        da = new SqlDataAdapter("select * from tblorder", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }
    
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        con = new SqlConnection(connStr);
        con.Open();
        String custemail = Convert.ToString(GridView1.SelectedValue);

        SqlCommand cmd = new SqlCommand("select * from signup where email=@email", con);
        cmd.Parameters.AddWithValue("@email", custemail);
        string strCustDetails="";

        SqlDataReader objreader = cmd.ExecuteReader();
        if (objreader.Read())
        {
            strCustDetails = "Customer id   - " + objreader[0] + "<br>";
            strCustDetails += objreader[1] + "<br>";
            strCustDetails += objreader[2] + "<br>";
            strCustDetails += objreader[3] + "<br>";
            strCustDetails += objreader[4] + "<br>";
            strCustDetails += objreader[5] + "<br>";
            
        }
        lblCustomer.Text = strCustDetails;
        con.Close();
    }
    
}