using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class PrintOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        grdCart.AllowSorting = false;
        grdCart.AllowSorting = false;
        PrintCurrentPage(sender, e);
    }

    public override void VerifyRenderingInServerForm(Control control)
    {
        /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
           server control at run time. */
        return;

    }
    protected void PrintCurrentPage(object sender, EventArgs e)
    {
        Cart c = (Cart)Session["cart"];


        List<gridcartitem> _items = new List<gridcartitem>();

        foreach (CartItem item in c.Items)
        {


            gridcartitem NewItem = new gridcartitem();
            //NewItem.Name=Session["username"].ToString();
            NewItem.ProductID = item.ProductID; ;
            NewItem.Quantity = item.Quantity; ;
            NewItem.Price = item.Price; ;
            NewItem.ProductName = item.ProductName; ;

            _items.Add(NewItem);
        }


        //string msg="LIIT Coaching Classes, Dadar"+"Dear "+ Session["username"]  +"Your Order Details" +" are as follows";
        //grdCart.HeaderRow.DataItem = msg;

        //grdCart.FooterRow.DataItem = "Total = " + string.Format("Total:{0,19:C}", c.Total);

        grdCart.DataSource = _items;

        //grdCart.Rows.Add();


        grdCart.PagerSettings.Visible = false;

        grdCart.DataBind();

        StringWriter sw = new StringWriter();

        HtmlTextWriter hw = new HtmlTextWriter(sw);


        grdCart.RenderBeginTag(hw);
        grdCart.HeaderRow.RenderControl(hw);
        foreach (GridViewRow row in grdCart.Rows)
        {
            row.RenderControl(hw);
        }
        grdCart.FooterRow.RenderControl(hw);
        grdCart.RenderEndTag(hw);



        string gridHTML = sw.ToString().Replace("\"", "'")

            .Replace(System.Environment.NewLine, "");

        StringBuilder sb = new StringBuilder();

        sb.Append("<script type = 'text/javascript'>");

        sb.Append("window.onload = new function(){");

        sb.Append("var printWin = window.open('', '', 'left=0");

        sb.Append(",top=0,width=1000,height=600,status=0');");

        sb.Append("printWin.document.write(\"");

        sb.Append(gridHTML);

        sb.Append("\");");

        sb.Append("printWin.document.close();");

        sb.Append("printWin.focus();");

        sb.Append("printWin.print();");

        sb.Append("printWin.close();};");

        sb.Append("</script>");

        ClientScript.RegisterStartupScript(this.GetType(), "GridPrint", sb.ToString());

        grdCart.PagerSettings.Visible = true;

        grdCart.DataBind();

    }
}