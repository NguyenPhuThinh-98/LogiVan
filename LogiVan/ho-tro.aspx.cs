using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
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
            MaintainScrollPositionOnPostBack = true;
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

        protected void btnCauHoiChuHang_1_Click(object sender, EventArgs e)
        {
            HienThiCauTraLoi(CauTraLoi_1);
            ThayDoiMau(btnCauHoiChuHang_1);
        }

        private void ThayDoiMau(Button btn)
        {
            if (btn.ForeColor != System.Drawing.Color.Orange)
            {
                btn.ForeColor = System.Drawing.Color.Orange;
                btn.Style["border-bottom"] = "none";
            }
            else
            {
                btn.ForeColor = System.Drawing.Color.Black;
                btn.Style["border-bottom"] = "1px solid black";
            }
            
        }

        private void HienThiCauTraLoi(HtmlGenericControl divCauTraLoi)
        {
            if (divCauTraLoi.Style["display"] != "block")
            {
                divCauTraLoi.Style["display"] = "block";
            }
            else
            {
                divCauTraLoi.Style["display"] = "none";
            }
        }

        protected void btnCauHoiChuHang_2_Click(object sender, EventArgs e)
        {
            HienThiCauTraLoi(CauTraLoi_2);
            ThayDoiMau(btnCauHoiChuHang_2);
        }

        protected void btnCauHoiChuHang_3_Click(object sender, EventArgs e)
        {
            HienThiCauTraLoi(CauTraLoi_3);
            ThayDoiMau(btnCauHoiChuHang_3);
        }

        protected void btnCauHoiChuHang_4_Click(object sender, EventArgs e)
        {
            HienThiCauTraLoi(CauTraLoi_4);
            ThayDoiMau(btnCauHoiChuHang_4);
        }

        protected void btnCauHoiChuHang_5_Click(object sender, EventArgs e)
        {
            HienThiCauTraLoi(CauTraLoi_5);
            ThayDoiMau(btnCauHoiChuHang_5);
        }

        protected void btnCauHoiChuHang_6_Click(object sender, EventArgs e)
        {
            HienThiCauTraLoi(CauTraLoi_6);
            ThayDoiMau(btnCauHoiChuHang_6);
        }

        protected void btnCauHoiChuXe_1_Click(object sender, EventArgs e)
        {
            HienThiCauTraLoi(CauTraLoiChuXe_1);
            ThayDoiMau(btnCauHoiChuXe_1);
        }

        protected void btnCauHoiChuXe_2_Click(object sender, EventArgs e)
        {
            HienThiCauTraLoi(CauTraLoiChuXe_2);
            ThayDoiMau(btnCauHoiChuXe_2);
        }

        protected void btnCauHoiChuXe_3_Click(object sender, EventArgs e)
        {
            HienThiCauTraLoi(CauTraLoiChuXe_3);
            ThayDoiMau(btnCauHoiChuXe_3);
        }

        protected void btnCauHoiChuXe_4_Click(object sender, EventArgs e)
        {
            HienThiCauTraLoi(CauTraLoiChuXe_4);
            ThayDoiMau(btnCauHoiChuXe_4);
        }

        protected void btnCauHoiChuXe_5_Click(object sender, EventArgs e)
        {
            HienThiCauTraLoi(CauTraLoiChuXe_5);
            ThayDoiMau(btnCauHoiChuXe_5);
        }

        protected void btnCauHoiChuXe_6_Click(object sender, EventArgs e)
        {
            HienThiCauTraLoi(CauTraLoiChuXe_6);
            ThayDoiMau(btnCauHoiChuXe_6);
        }

        protected void btnCauHoiChuXe_7_Click(object sender, EventArgs e)
        {
            HienThiCauTraLoi(CauTraLoiChuXe_7);
            ThayDoiMau(btnCauHoiChuXe_7);
        }

        protected void btnCauHoiChuXe_8_Click(object sender, EventArgs e)
        {
            HienThiCauTraLoi(CauTraLoiChuXe_8);
            ThayDoiMau(btnCauHoiChuXe_8);
        }
    }
}