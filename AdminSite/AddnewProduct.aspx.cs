
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class AddnewProduct : System.Web.UI.Page
{
    int catid;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["email"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }

     
    }
    protected void btnUpload_Click(object sender, EventArgs e)
    {
        int catid = Convert.ToInt32(ddlcatid.SelectedValue);


        SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["FurnitureShop"].ToString());


        con.Open();

        SqlCommand cmd = con.CreateCommand();

        string folderpath = "";


        cmd.CommandText = "select catname from FurnitureCategory where catid=" + catid;
        //cmd.Parameters.AddWithValue("catid", catid);


        SqlDataReader dr = cmd.ExecuteReader();
        dr.Read();

        String categoryname = dr.GetString(0);
        dr.Close();
        con.Close();

        folderpath = "~/images/categoryproducts/" + categoryname.Trim() + "/";
        string productimageurl = folderpath + productimage.PostedFile.FileName;

        if (productimage.HasFile)
        {
            string filename = productimage.PostedFile.FileName.ToString();

            productimage.SaveAs(Server.MapPath(folderpath + filename));

        }



        string productname = Request.Form["productname"];
        string Description = Request.Form["prodescription"];
        double price = Convert.ToDouble(Request.Form["price"]);







        SqlConnection con1 = new SqlConnection(WebConfigurationManager.ConnectionStrings["FurnitureShop"].ToString());
        //SqlConnection con = new SqlConnection(@"Data Source=DELL\SQLEXPRESS1;Initial Catalog=F:\SPOTLIGHTIT\APP_DATA\FOOD.MDF;Integrated Security=True");


        con1.Open();
        SqlCommand cmd1 = con.CreateCommand();

        cmd1.CommandText = @"insert into FurnitureProducts(catid,productname,productimgurl,description,price) values (@catid,@productname,@productimgurl,@price,@description)";
        cmd1.Connection = con1;

        cmd1.Parameters.AddWithValue("catid", catid);
        cmd1.Parameters.AddWithValue("productname", productname);
        cmd1.Parameters.AddWithValue("productimgurl", productimageurl);
        cmd1.Parameters.AddWithValue("description", Description);
        cmd1.Parameters.AddWithValue("price", price);
       
        cmd1.ExecuteNonQuery();


        lblMsg.Text = "Furniture Products added Successfully";
        con1.Close();
    }
    
}