using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ids410Clnu4Pro
{

    public partial class Download : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_Unload(object sender, EventArgs e)
        {
            Session["ShopcartID"] = null;
            Session["OrderID"] = null;
        }

        protected void GridView1_Unload1(object sender, EventArgs e)
        {
            Session["ShopcartID"] = null;
            Session["OrderID"] = null;

        }

        protected void GridView1_Unload2(object sender, EventArgs e)
        {
            Session["ShopcartID"] = null;
            Session["OrderID"] = null;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_Unload3(object sender, EventArgs e)
        {
            Session["ShopcartID"] = null;
            Session["OrderId"] = null;
        }
    }
}
