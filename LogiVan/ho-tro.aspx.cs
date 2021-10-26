using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogiVan
{
    public partial class ho_tro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }
        }

        protected void btnChuHang_Click(object sender, ImageClickEventArgs e)
        {
            btnChuHang.ImageUrl = "~/HinhAnh/HinhAnhChuHang/chu-hang-on.svg";
            lbChuHang.ForeColor = System.Drawing.Color.Blue;

            btnChuXe.ImageUrl = "~/HinhAnh/HinhAnhChuHang/chu-xe-off.svg";
            lbChuXe.ForeColor = System.Drawing.Color.LightGray;

            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnChuXe_Click(object sender, ImageClickEventArgs e)
        {
            btnChuHang.ImageUrl = "~/HinhAnh/HinhAnhChuXe/chu-hang-off.svg";
            lbChuHang.ForeColor = System.Drawing.Color.LightGray;

            btnChuXe.ImageUrl = "~/HinhAnh/HinhAnhChuXe/chu-xe-on.svg";
            lbChuXe.ForeColor = System.Drawing.Color.Blue;

            MultiView1.ActiveViewIndex = 1;
        }
    }
}