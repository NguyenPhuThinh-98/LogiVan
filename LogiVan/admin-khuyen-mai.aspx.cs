using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using LogiVan.App_Code;

namespace LogiVan
{
    public partial class admin_khuyen_mai : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                NapLieu();
            }
            MaintainScrollPositionOnPostBack = true;
        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            NapLieu();
            MultiView1.ActiveViewIndex = -1;
        }

        private void NapLieu()
        {
            GridView1.DataSource = null;
            GridView1.DataBind();

            cnn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cnn.Open();
                cmd = new SqlCommand("select * from khuyenmai", cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();
                
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        protected void btnViewInsert_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnViewDelete_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnViewUpdate_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            cnn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cnn.Open();
                cmd = new SqlCommand("sp_ThemKhuyenMai", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@tieude", SqlDbType.NVarChar).Value = insertTieuDe.Text;
                cmd.Parameters.Add("@tomtat", SqlDbType.NVarChar).Value = insertTomtat.Text;
                cmd.Parameters.Add("@ngaytao", SqlDbType.Date).Value = insertNgayTao.Text;
                cmd.ExecuteNonQuery();

                cnn.Close();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }

            NapLieu();
            XoaView();
        }

        private void XoaView()
        {
            insertTieuDe.Text = "";
            insertNgayTao.Text = "";
            insertTomtat.Text = "";
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = (DataRowView)e.Row.DataItem;
                string url = "data:image/jpg;base64," + Convert.ToBase64String((byte[])drv["Anh"]);
                (e.Row.FindControl("Image1") as Image).ImageUrl = url;
            }
        }
    }
}