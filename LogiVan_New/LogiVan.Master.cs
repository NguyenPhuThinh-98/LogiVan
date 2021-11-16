using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogiVan_New
{
    public partial class LogiVan : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                btnAdminLogin.Visible = false;
                btnAdminLogout.Visible = true;
                btnAdminMenu.Visible = true;
            }
        }

        protected void btnLogiVan_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("trang-chu.aspx");
        }

        protected void btnLogiVan_header_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("trang-chu.aspx");
        }

        protected void btnAdminMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin-menu.aspx");
        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin-login.aspx");
        }

        protected void btnAdminLogout_Click(object sender, EventArgs e)
        {
            Session["admin"] = null;
            Response.Redirect("trang-chu.aspx");
        }
    }
}