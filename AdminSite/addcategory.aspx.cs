using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.IO;
using System.Data;

public partial class adminsite_addcategory : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da;
    DataSet ds;
    SqlCommand cmd;
    string connStr = WebConfigurationManager.ConnectionStrings["PlantConnectionString"].ConnectionString;  
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }

        

    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
   
             int catid = Convert.ToInt32(Request.Form["catid"]);
        string categoryname = Request.Form["categoryname"];
        string Description  = Request.Form["categorydescription"];
                       string folderpath= "";

            folderpath = "~/images/category/";
        
        
        
        if (categoryimage.HasFile) 
        {
            string filename = categoryimage.PostedFile.FileName.ToString();

            categoryimage.SaveAs(Server.MapPath(folderpath + filename));
                    
        }
        
            
//System.IO.Directory.CreateDirectory(Server.MapPath("~/images/categoryproducts/"+ @categoryname));

            string catimage = "~/images/category/" +categoryimage.PostedFile.FileName;


            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["PlantConnectionString"].ToString());

       con.Open();

       SqlCommand cmd = con.CreateCommand();

       cmd.CommandText = @"insert into Category(catid,catname,catimg,catdesc) values (@catid,@categoryname,@catimage,@Description)";
       cmd.Connection = con;
      
        cmd.Parameters.AddWithValue("catid", catid);
        cmd.Parameters.AddWithValue("categoryname", categoryname);
        cmd.Parameters.AddWithValue("catimage", catimage);
        cmd.Parameters.AddWithValue("Description", Description);
        
        cmd.ExecuteNonQuery();


        lblMsg.Text = "Product added Successfully";

    }
   
}

