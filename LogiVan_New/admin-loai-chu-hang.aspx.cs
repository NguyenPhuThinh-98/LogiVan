using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using LogiVan_New.App_Code;

namespace LogiVan_New
{
    public partial class admin_loai_chu_hang : System.Web.UI.Page
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
        }

        private void NapLieu()
        {
            GridView1.DataSource = null;
            GridView1.DataBind();
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cmd = new SqlCommand("select * from LoaiChuHang", cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();
                dt.Columns["MaLoai"].ColumnName = "Mã loại chủ hàng";
                dt.Columns["TenLoai"].ColumnName = "Tên loại chủ hàng";
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand("sp_ThemLoaiChuHang", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@tenloai", SqlDbType.NVarChar).Value = inTenLoai.Text;
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
            NapLieu();
            XoaView();
            MultiView1.ActiveViewIndex = -1;
        }

        private void XoaView()
        {
            inTenLoai.Text = "";

            upTenLoai_new.Text = "";
            upTenLoai_old.Text = "";
        }

        protected void btnViewInsert_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnViewDelete_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            NapLieuMaLoaiChuHang(delMaLoai);
        }

        private void NapLieuMaLoaiChuHang(DropDownList id)
        {
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand("select * from LoaiChuHang", cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();
                foreach(DataRow dr in dt.Rows)
                {
                    dr[1] = dr[0].ToString() + " - " + dr[1].ToString();
                }
                id.DataSource = dt;
                id.DataTextField = "TenLoai";
                id.DataValueField = "MaLoai";
                id.DataBind();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        protected void btnViewUpdate_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            NapLieuMaLoaiChuHang(upMaLoai);
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand("sp_XoaLoaiChuHang", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@maloai", SqlDbType.Int).Value = delMaLoai.SelectedValue;
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
            NapLieu();
            MultiView1.ActiveViewIndex = -1;
        }

        protected void upMaLoai_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand("select * from LoaiChuHang where MaLoai = " + upMaLoai.SelectedValue, cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();
                DataRow dr = dt.Rows[0];
                upTenLoai_old.Text = dr["TenLoai"].ToString();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (upTenLoai_new.Text == "")
            {
                Alert.Show("chưa nhập tên loại chủ hàng mới");
                return;
            }
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd.Connection = cnn;
                cmd.CommandText = "update LoaiChuHang set TenLoai = N'" + upTenLoai_new.Text + "' where MaLoai = " + upMaLoai.SelectedValue;
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
            NapLieu();
            XoaView();
            MultiView1.ActiveViewIndex = -1;
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            NapLieu();
        }
    }
}