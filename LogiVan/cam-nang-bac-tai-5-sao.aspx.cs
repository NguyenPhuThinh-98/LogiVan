using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogiVan
{
    public partial class cam_nang_bac_tai_5_sao : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MaintainScrollPositionOnPostBack = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (div_gt.Style["display"].ToString() == "block")
            {
                div_gt.Style["display"] = "none";
            }
            else
                div_gt.Style["display"] = "block";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (div_ux.Style["display"].ToString() == "block")
            {
                div_ux.Style["display"] = "none";
            }
            else
                div_ux.Style["display"] = "block";
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (div_meo.Style["display"].ToString() == "block")
            {
                div_meo.Style["display"] = "none";
            }
            else
                div_meo.Style["display"] = "block";
        }
    }
}