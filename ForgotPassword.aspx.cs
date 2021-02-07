using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        String strcon = WebConfigurationManager.ConnectionStrings["PlantConnectionString"].ToString();
        SqlConnection con = new SqlConnection(strcon);

        con.Open();
        string username = txtUsername.Text;

        string newPassword = txtNewPassword.Text;
        string confirmPassword = txtConfirmPassword.Text;
        string sqlquery = "UPDATE [signup] SET password=@newpass where email=@email";
        SqlCommand cmd = new SqlCommand(sqlquery, con);
        cmd.Parameters.AddWithValue("@newpass", txtConfirmPassword.Text);
        cmd.Parameters.AddWithValue("@email", txtUsername.Text);

        cmd.ExecuteNonQuery();
        SqlDataReader reader = null;
        reader = cmd.ExecuteReader();
        while (reader.Read())
        {
            if ((txtNewPassword.Text == reader["newPassword"].ToString()) & (txtConfirmPassword.Text == (reader["confirmPassword"].ToString()))) { }
        }
        lblError.Text = "Password Changed Successfully!";

        con.Close();
        Response.Redirect("login.aspx");
  
    }
}