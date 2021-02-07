using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
using System.Configuration;



public partial class AddtoCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if ((Session["email"] == null))
            Response.Redirect("login.aspx");

        string connString = ConfigurationManager.ConnectionStrings["PlantConnectionString"].ToString();//external Sql server 2008



            SqlConnection objConn = new SqlConnection(connString);




            int productid = int.Parse(Request.QueryString["prodID"]);
            objConn.Open();
            SqlCommand objCmd = new SqlCommand("select * from CategoryProducts where Productid=@productid", objConn);
            objCmd.Parameters.AddWithValue("@productid",productid);
            SqlDataReader rs = objCmd.ExecuteReader();

            rs.Read();
            string ProductName = rs.GetString(2);
            string ProductImageUrl = rs.GetString(3);
            double Price = rs.GetDouble(5);
            Cart c;

            if (Session["cart"] == null)
            {
                 c = new Cart();
            }
            else
            {
                 c = (Cart)Session["cart"];
            }
                c.Insert(productid, Price, 1, ProductName, ProductImageUrl);
                Session["cart"] = c;

                Response.Redirect("category.aspx");
            
        }


    }

        
    