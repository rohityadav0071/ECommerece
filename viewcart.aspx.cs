
using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.IO;
using System.Globalization;
using System.Threading;

public partial class viewcartm: System.Web.UI.Page
{
       Cart c;
    protected void Page_Load(object sender, EventArgs e)
    {
       

          if (Session["email"] == null )
        {
            Response.Redirect("login.aspx");
            
        }

           if(Session["cart"]==null)
                 Response.Redirect("category.aspx");
          else

        c = (Cart)Session["cart"];
            
        if (!Page.IsPostBack)
        {
                    
            ReBindGrid();
        }

        if (c.Items == null)
        {

            TotalLabel.Visible = false;
        } 
    }

    protected void grdCart_RowEditing(object sender, GridViewEditEventArgs e)
    {
        grdCart.EditIndex = e.NewEditIndex;
        ReBindGrid();
    }
    protected void grdCart_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtQuantity = (TextBox)grdCart.Rows[e.RowIndex].Cells[2].Controls[0];
        int Quantity = Convert.ToInt32(txtQuantity.Text);
        if (Quantity == 0)
        {
            
            c.Items.RemoveAt(e.RowIndex);
        }

        else
        {
            
            c.Items[e.RowIndex].Quantity = Quantity;
        }
        grdCart.EditIndex = -1;
        ReBindGrid();
    }

    protected void grdCart_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        grdCart.EditIndex = -1;
        ReBindGrid();
    }

    protected void grdCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
        c.Items.RemoveAt(e.RowIndex);
        ReBindGrid();
    }

    private void ReBindGrid()
    {

        grdCart.DataSource = c.Items;
        Session["grdcart"] = grdCart;
        DataBind();
        TotalLabel.Text = string.Format("Total:{0,19:C}", c.Total);
        Session["Total"] = c.Total;

    }
    public static int GetRandomNumber(int min, int max)
    {
        Random getrandom = new Random();
        object syncLock = new object();

        lock (syncLock)
        { // synchronize
            return getrandom.Next(min, max);
        }
    }


    protected void Btnorder_Click(object sender, EventArgs e)
    {
       
        try
        {
            int orderid =GetRandomNumber(1, 100);

        string customeremailid = Session["email"].ToString();
        
        string totalamount = c.Total.ToString();
        
        
        //storingn order in order table
        string strconn;
        strconn = ConfigurationManager.ConnectionStrings["PlantConnectionString"].ToString();
        SqlConnection objConn = new SqlConnection(strconn);
        

            objConn.Open();
            SqlCommand cmd1 = objConn.CreateCommand();
            

            cmd1.CommandText = "insert into tblorder(orderid,order_date,customeremailid,totalamount) values(@orderid,@order_date,@customeremailid,@totalamount)";
            
            cmd1.Connection = objConn;
            

            cmd1.Parameters.AddWithValue("@orderid",orderid);
            cmd1.Parameters.AddWithValue("@order_date",DateTime.Now);
            
             cmd1.Parameters.AddWithValue("@customeremailid",customeremailid );
            
            cmd1.Parameters.AddWithValue("@totalamount",totalamount );
            
            cmd1.ExecuteNonQuery();


            Session["totalamt"] = totalamount;
            
        int productid,quantity;
        double price;
        string productname,imgurl;
        SqlCommand cmd2 = objConn.CreateCommand();
        cmd2.Connection = objConn;

        cmd2.CommandText = "insert into orderedproducts values(@orderid,@productid,@productname,@productimgurl,@quantity,@price)";
        
        
         
            foreach (CartItem  item in c.Items)
        {

            cmd2.Parameters.Clear();
         
                 
            productid = item.ProductID;
            price=item.Price;
            productname=item.ProductName;
            imgurl=item.ImageUrl;
            quantity=item.Quantity;

            //Response.Write(productid);
            cmd2.Parameters.AddWithValue("@orderid", orderid);
            cmd2.Parameters.AddWithValue("@productid", productid);
            cmd2.Parameters.AddWithValue("@productname", productname);
            cmd2.Parameters.AddWithValue("@productimgurl", @imgurl);
            cmd2.Parameters.AddWithValue("@quantity", quantity);
            cmd2.Parameters.AddWithValue("@price", price);
            cmd2.ExecuteNonQuery();
            
        
            }
            Session["grdcart"] = grdCart;
            Session["Total"] = totalamount;

}
        catch (Exception oe) { Response.Write(oe.Message); }
        

        Response.Redirect("OrderDetails.aspx");
}



    //for rupees
    protected override void InitializeCulture()
    {
        CultureInfo ci = new CultureInfo("en-IN");
        ci.NumberFormat.CurrencySymbol = "₹";
        Thread.CurrentThread.CurrentCulture = ci;

        base.InitializeCulture();
    }   
    
}
    
