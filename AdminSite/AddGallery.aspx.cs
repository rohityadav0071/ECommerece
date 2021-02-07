using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class AdminSite_AddGallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["PlantConnectionString"].ToString());
        con.Open();
        SqlCommand cmd = con.CreateCommand();

        cmd.CommandText = "insert into gallery (imagename,imageurl) values (@imagename,@imageurl)";

        cmd.Parameters.AddWithValue("imagename", TextBox1.Text);

        string imgurl = ImageUpload1.PostedFile.FileName.ToString();

        ImageUpload1.SaveAs(Server.MapPath("~/images/gallery/" + imgurl));


        string urlimage = "~/images/gallery/" + ImageUpload1.PostedFile.FileName.ToString();

        cmd.Parameters.AddWithValue("imageurl", urlimage);
        cmd.ExecuteNonQuery();
        cmd.Dispose();
        con.Close();
        lblmsg.Text = "Success";
        TextBox1.Text = "";
    }
}