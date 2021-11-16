using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogiVan_New
{
    public partial class gioi_thieu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView2.ActiveViewIndex = 0;
                MultiViewDoiTac.ActiveViewIndex = 0;
                MultiViewBaoChi.ActiveViewIndex = 0;
            }
            Page.MaintainScrollPositionOnPostBack = true;
        }

        protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
        {
            MultiView2.ActiveViewIndex = 0;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 0;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 0;
        }

        protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
        {
            MultiView2.ActiveViewIndex = 1;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 1;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 1;
        }

        protected void ImageButton17_Click(object sender, ImageClickEventArgs e)
        {
            MultiView2.ActiveViewIndex = 2;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 2;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 2;
        }

        protected void ImageButton18_Click(object sender, ImageClickEventArgs e)
        {
            MultiView2.ActiveViewIndex = 3;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 3;
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 3;
        }

        protected void ImageButton19_Click(object sender, ImageClickEventArgs e)
        {
            MultiView2.ActiveViewIndex = 4;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 4;
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 4;
        }

        protected void ImageButton20_Click(object sender, ImageClickEventArgs e)
        {
            MultiView2.ActiveViewIndex = 5;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 5;
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 5;
        }

        protected void ImageButton21_Click(object sender, ImageClickEventArgs e)
        {
            MultiView2.ActiveViewIndex = 6;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 6;
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 6;
        }

        protected void ImageButton23_Click(object sender, ImageClickEventArgs e)
        {
            int i = MultiView2.ActiveViewIndex;
            int j = MultiView2.Views.Count;
            if (i < j - 1)
            {
                MultiView2.ActiveViewIndex = i + 1;
            }

            int s = 50 * (MultiView2.ActiveViewIndex + 1);
            string str_s = s + "px";
            imgTruck_1.Attributes["margin-left"]= str_s;
        }

        protected void ImageButton22_Click(object sender, ImageClickEventArgs e)
        {
            int i = MultiView2.ActiveViewIndex;
            if (i > 0)
            {
                MultiView2.ActiveViewIndex = i - 1;
            }

            int s = 50 * (MultiView2.ActiveViewIndex + 1);
            string str_s = s + "px";
            imgTruck_1.Attributes["margin-left"] = str_s;
        }

        protected void ImageButton25_Click(object sender, ImageClickEventArgs e)
        {
            int i = MultiViewDoiTac.ActiveViewIndex;
            int j = MultiViewDoiTac.Views.Count;
            if (i < j - 1)
            {
                MultiViewDoiTac.ActiveViewIndex = i + 1;
            }
            else
            {
                MultiViewDoiTac.ActiveViewIndex = 0;
            }
        }

        protected void ImageButton24_Click(object sender, ImageClickEventArgs e)
        {
            int i = MultiViewDoiTac.ActiveViewIndex;
            int j = MultiViewDoiTac.Views.Count;
            if (i > 0)
            {
                MultiViewDoiTac.ActiveViewIndex = i - 1;
            }
            else
            {
                MultiViewDoiTac.ActiveViewIndex = j - 1;
            }
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            int i = MultiViewBaoChi.ActiveViewIndex;
            int j = MultiViewBaoChi.Views.Count;
            if (i < j - 1)
            {
                MultiViewBaoChi.ActiveViewIndex = i + 1;
            }
            else
            {
                MultiViewBaoChi.ActiveViewIndex = 0;
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            int i = MultiViewBaoChi.ActiveViewIndex;
            int j = MultiViewBaoChi.Views.Count;
            if (i > 0)
            {
                MultiViewBaoChi.ActiveViewIndex = i - 1;
            }
            else
            {
                MultiViewBaoChi.ActiveViewIndex = j - 1;
            }
        }
    }
}