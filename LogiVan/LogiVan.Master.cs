using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogiVan
{
    public partial class LogiVan : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogiVan_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("trang-chu.aspx");
        }

        protected void btnLogiVan_header_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("trang-chu.aspx");
        }
    }
}