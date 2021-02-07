using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btnlogin_Click(object sender, EventArgs e)
    {
        if (Txtemail.Text == "admin@gmail.com" && Txtpassword.Text == "admin")
        {
            Session["email"] = Txtemail.Text;
            Response.Redirect("adminsite/adminhome.aspx");
        }
        else
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["PlantConnectionString"].ToString());
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "select id,fname,address,mobile,password from signup where email=@email";
            cmd.Parameters.AddWithValue("email", Txtemail.Text.Trim());
            SqlDataReader dr = cmd.ExecuteReader();


            if (dr.Read())
            {
                int id = Convert.ToInt32(dr.GetInt32(0));
                Session["userID"] = id;
                Session["username"] = dr.GetString(1);
                Session["address"] = dr.GetString(2);
                Session["mobile"] = dr.GetString(3);

                if (dr.GetString(4).Trim() == Txtpassword.Text.Trim())
                {

                    Session["email"] = Txtemail.Text;

                    //Add code for shopping cart
                    Cart c = new Cart();
                    Session["cart"] = c;

                    cmd.Dispose();
                    con.Close();
                    Response.Redirect("category.aspx");
                }
                else
                {
                    lblmessage.Text = "Please try again!!";
                }
            }
            else
            {
                lblmessage.Text = "Please try again!";
            }

        }
    }
}