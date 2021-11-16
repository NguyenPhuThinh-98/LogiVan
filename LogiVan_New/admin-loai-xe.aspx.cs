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
    public partial class admin_loai_xe : System.Web.UI.Page
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

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            NapLieu();
        }

        private void NapLieu()
        {
            try
            {
                GridView1.DataSource = null;
                GridView1.DataBind();

                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand("select * from LoaiXe", cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();

                dt.Columns["MaLoaiXe"].ColumnName = "Mã loại xe";
                dt.Columns["TenLoaiXe"].ColumnName = "Tên loại xe";

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            NapLieu();
            MultiView1.ActiveViewIndex = -1;
        }

        protected void btnViewInsert_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnViewDelete_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            NapLieu(delMaLoai);
        }

        private void NapLieu(DropDownList id)
        {
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand("select * from LoaiXe", cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();

                foreach (DataRow dr in dt.Rows)
                {
                    dr[1] = dr[0].ToString() + " - " + dr[1].ToString();
                }

                id.DataSource = dt;
                id.DataTextField = "TenLoaiXe";
                id.DataValueField = "MaLoaiXe";
                id.DataBind();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
            }
        }

        protected void btnViewUpdate_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            NapLieu(upMaLoai);
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            if (inTenLoai.Text == "")
            {
                Alert.Show("chưa có tên loại xe");
                return;
            }
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand("sp_ThemLoaiXe", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@tenloai", SqlDbType.NVarChar).Value = inTenLoai.Text;
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
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

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand("delete from LoaiXe where MaLoaiXe = " + delMaLoai.SelectedValue, cnn);
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
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
                cmd = new SqlCommand("select * from LoaiXe where MaLoaiXe = " + upMaLoai.SelectedValue, cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();
                DataRow dr = dt.Rows[0];
                upTenLoai_old.Text = dr["TenLoaiXe"].ToString();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (upTenLoai_new.Text == "")
            {
                Alert.Show("chưa có tên loại xe mới");
                return;
            }
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd.Connection = cnn;
                cmd.CommandText = "update LoaiXe set TenLoaiXe = N'" + upTenLoai_new.Text
                    + "' where MaLoaiXe = " + upMaLoai.SelectedValue;
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
            }
            NapLieu();
            XoaView();
            MultiView1.ActiveViewIndex = -1;
        }
    }
}