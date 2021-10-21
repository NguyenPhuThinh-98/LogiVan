﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogiVan
{
    public partial class trang_chu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
                MultiView2.ActiveViewIndex = 0;
                MultiView3.ActiveViewIndex = 0;
            }
            Page.MaintainScrollPositionOnPostBack = true;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.ActiveViewIndex = 4;
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            MultiView1.ActiveViewIndex = 5;
        }

        protected void ImageButton22_Click(object sender, ImageClickEventArgs e)
        {
            int i = MultiView2.ActiveViewIndex;
            if (i != 0)
            {
                MultiView2.ActiveViewIndex = i - 1;
            }
        }

        protected void ImageButton23_Click(object sender, ImageClickEventArgs e)
        {
            int i = MultiView2.ActiveViewIndex;
            int j = MultiView2.Views.Count;
            if (i < j - 1)
            {
                MultiView2.ActiveViewIndex = i + 1;
            }
        }

        protected void ImageButton15_Click(object sender, ImageClickEventArgs e)
        {
            MultiView2.ActiveViewIndex = 0;
        }

        protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
        {
            MultiView2.ActiveViewIndex = 1;
        }

        protected void ImageButton17_Click(object sender, ImageClickEventArgs e)
        {
            MultiView2.ActiveViewIndex = 2;
        }

        protected void ImageButton18_Click(object sender, ImageClickEventArgs e)
        {
            MultiView2.ActiveViewIndex = 3;
        }

        protected void ImageButton19_Click(object sender, ImageClickEventArgs e)
        {
            MultiView2.ActiveViewIndex = 4;
        }

        protected void ImageButton20_Click(object sender, ImageClickEventArgs e)
        {
            MultiView2.ActiveViewIndex = 5;
        }

        protected void ImageButton21_Click(object sender, ImageClickEventArgs e)
        {
            MultiView2.ActiveViewIndex = 6;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 0;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 1;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 2;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 3;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 4;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 5;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 6;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 0;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 1;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 2;
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 3;
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 4;
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 5;
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            MultiView2.ActiveViewIndex = 6;
        }

        protected void ImageButton25_Click(object sender, ImageClickEventArgs e)
        {
            int i = MultiView3.ActiveViewIndex;
            int j = MultiView3.Views.Count;
            if (i < j - 1)
            {
                MultiView3.ActiveViewIndex = i + 1;
            }
            else
            {
                MultiView3.ActiveViewIndex = 0;
            }
        }

        protected void ImageButton24_Click(object sender, ImageClickEventArgs e)
        {
            int i = MultiView3.ActiveViewIndex;
            int j = MultiView3.Views.Count;
            if (i > 0)
            {
                MultiView3.ActiveViewIndex = i - 1;
            }
            else
            {
                MultiView3.ActiveViewIndex = j - 1;
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            int i = MultiView1.ActiveViewIndex;
            int j = MultiView1.Views.Count;
            if (i < j - 1)
            {
                MultiView1.ActiveViewIndex = i + 1;
            }
            else
            {
                MultiView1.ActiveViewIndex = 0;
            }
        }
    }
}