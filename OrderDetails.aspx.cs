using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblName.Text=Session["username"].ToString();
        lblAddrs.Text = Session["address"].ToString();
        lblMob.Text = Session["mobile"].ToString();
        lblAmt.Text = Session["totalamt"].ToString();
        pnlPay.Visible = false;
    }

   
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["method"] = DropDownList1.SelectedValue;
        Response.Redirect("confirmorder.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string pay = DropDownList1.SelectedValue;
        if (pay == "Cash on Delivery")
        {
            pnlPay.Visible = false;
            Button1.Visible = true;
            

        }
        else
        {

            pnlPay.Visible = true;
            Button1.Visible = true;
        }
    }
}