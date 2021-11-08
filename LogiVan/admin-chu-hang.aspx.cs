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
    public partial class admin_chu_hang : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
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

            con = new SqlConnection(Session["admin"].ToString());
            try
            {
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "select * from ChuHang";
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                TenCot(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }
            catch(SqlException ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        private void TenCot(DataTable dt)
        {
            dt.Columns[0].ColumnName = "Mã Chủ Hàng";
            dt.Columns[1].ColumnName = "Tên Chủ Hàng";
            dt.Columns[2].ColumnName = "Mã Loại";
            dt.Columns[3].ColumnName = "Địa chỉ";
            dt.Columns[4].ColumnName = "Số điện thoại";
            dt.Columns[5].ColumnName = "CMND";
        }

        protected void btnOpenViewInsert_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            NapLieu_Insert();
        }

        private void NapLieu_Insert()
        {
            con = new SqlConnection(Session["admin"].ToString());
            try
            {
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "select MaLoai,TenLoai from LoaiChuHang";
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                foreach (DataRow dr in dt.Rows)
                {
                    dr[1] = dr[0].ToString() + " - " + dr[1].ToString();
                }

                ddlMaLoai_insert.DataSource = dt;
                ddlMaLoai_insert.DataTextField = "TenLoai";
                ddlMaLoai_insert.DataValueField = "MaLoai";
                ddlMaLoai_insert.DataBind();

                con.Close();
            }
            catch (SqlException ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(Session["admin"].ToString());
            try
            {
                con.Open();
                cmd = new SqlCommand("sp_ThemChuHang", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@name", SqlDbType.NVarChar).Value = txtTenChuHang_insert.Text;
                cmd.Parameters.Add("@type", SqlDbType.Int).Value = ddlMaLoai_insert.SelectedValue;
                cmd.Parameters.Add("address", SqlDbType.NVarChar).Value = txtDiaChi_insert.Text;
                cmd.Parameters.Add("@phone", SqlDbType.VarChar).Value = txtSDT_insert.Text;
                cmd.Parameters.Add("@cmnd", SqlDbType.VarChar).Value = txtCMND_insert.Text;
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (SqlException ex)
            {
                Alert.Show(ex.Message);
                return;
            }
            XoaDuLieuInsert();
            NapLieu();
            MultiView1.ActiveViewIndex = -1;
        }

        private void XoaDuLieuInsert()
        {
            txtCMND_insert.Text = null;
            txtDiaChi_insert.Text = null;
            txtSDT_insert.Text = null;
            txtTenChuHang_insert.Text = null;
        }

        protected void btnOpenViewDelete_Click(object sender, EventArgs e)
        {
            NapLieu_Delete();
            MultiView1.ActiveViewIndex = 1;
        }

        private void NapLieu_Delete()
        {
            con = new SqlConnection(Session["admin"].ToString());
            try
            {
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "select MaChuHang, TenChuHang from ChuHang";
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                foreach(DataRow dr in dt.Rows)
                {
                    dr[1] = dr[0].ToString() + " - " + dr[1].ToString();
                }

                ddlMaChuHang_delete.DataSource = dt;
                ddlMaChuHang_delete.DataTextField = "TenChuHang";
                ddlMaChuHang_delete.DataValueField = "MaChuHang";
                ddlMaChuHang_delete.DataBind();

                con.Close();
            }
            catch (SqlException ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        protected void ddlMaChuHang_delete_SelectedIndexChanged(object sender, EventArgs e)
        {
            string MaChuHang = ddlMaChuHang_delete.SelectedValue;
            XemDuLieu(MaChuHang, txtTenChuHang_delete, txtMaLoai_delete, txtDiaChi_delete, txtSDT_delete, txtCMND_delete);
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(Session["admin"].ToString());
            try
            {
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "delete from ChuHang where MaChuHang = " + ddlMaChuHang_delete.SelectedValue;
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (SqlException ex)
            {
                Alert.Show(ex.Message);
                return;
            }
            NapLieu();
            MultiView1.ActiveViewIndex = -1;
        }

        protected void btnOpenViewUpdate_Click(object sender, EventArgs e)
        {
            NapLieu_Update();
            MultiView1.ActiveViewIndex = 2;
        }

        private void NapLieu_Update()
        {
            con = new SqlConnection(Session["admin"].ToString());
            try
            {
                con.Open();
                cmd.Connection = con;

                cmd.CommandText = "select MaChuHang, TenChuHang from ChuHang";
                da = new SqlDataAdapter(cmd);
                DataTable dt_MaChuHang = new DataTable();
                da.Fill(dt_MaChuHang);

                foreach (DataRow dr in dt_MaChuHang.Rows)
                {
                    dr[1] = dr[0].ToString() + " - " + dr[1].ToString();
                }


                ddlMaChuHang_update.DataSource = dt_MaChuHang;
                ddlMaChuHang_update.DataTextField = "TenChuHang";
                ddlMaChuHang_update.DataValueField = "MaChuHang";
                ddlMaChuHang_update.DataBind();

                cmd.CommandText = "select MaLoai, TenLoai from LoaiChuHang";
                da = new SqlDataAdapter(cmd);
                DataTable dt_MaLoai = new DataTable();
                da.Fill(dt_MaLoai);

                foreach (DataRow dr in dt_MaLoai.Rows)
                {
                    dr[1] = dr[0].ToString() + " - " + dr[1].ToString();
                }

                ddl_MaLoai_update_new.DataSource = dt_MaLoai;
                ddl_MaLoai_update_new.DataTextField = "TenLoai";
                ddl_MaLoai_update_new.DataValueField = "MaLoai";
                ddl_MaLoai_update_new.DataBind();

                con.Close();
            }
            catch (SqlException ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        protected void ddlMaChuHang_update_SelectedIndexChanged(object sender, EventArgs e)
        {
            string MaChuHang = ddlMaChuHang_update.SelectedValue;
            XemDuLieu(MaChuHang, txtTenChuHang_update_old, txtMaLoai_update_old, txtDiaChi_update_old, txtSDT_update_old, txtCMND_update_old);
        }

        private void XemDuLieu(string MaChuHang, TextBox TenChuHang, TextBox MaLoai, TextBox DiaChi, TextBox SDT, TextBox CMND)
        {
            con = new SqlConnection(Session["admin"].ToString());
            try
            {
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "select * from ChuHang where MaChuHang = " + MaChuHang;
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {

                    TenChuHang.Text = dr["TenChuHang"].ToString();
                    MaLoai.Text = dr["MaLoai"].ToString();
                    DiaChi.Text = dr["DiaChi"].ToString();
                    SDT.Text = dr["SDT"].ToString();
                    CMND.Text = dr["CMND"].ToString();
                }
                con.Close();

            }
            catch (SqlException ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            ChuanBiUpdate();
            con = new SqlConnection(Session["admin"].ToString());
            try
            {
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "update ChuHang set TenChuHang = N'" + txtTenChuHang_update_new.Text 
                    + "', MaLoai = " + ddl_MaLoai_update_new.SelectedValue 
                    + " , DiaChi = N'" + txtDiaChi_update_new.Text 
                    + "', SDT = '" + txtSDT_update_new.Text 
                    + "', CMND = '" + txtCMND_update_new.Text 
                    + "' where MaChuHang = " + ddlMaChuHang_update.SelectedValue;
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (SqlException ex)
            {
                Alert.Show(ex.Message);
                return;
            }
            XoaDuLieuUpdate();
            NapLieu();
            MultiView1.ActiveViewIndex = -1;
        }

        private void XoaDuLieuUpdate()
        {
            txtTenChuHang_update_new.Text = "";
            txtDiaChi_update_new.Text = "";
            txtSDT_update_new.Text = "";
            txtCMND_update_new.Text = "";
        }

        private void ChuanBiUpdate()
        {
            if (txtTenChuHang_update_new.Text == "")
            {
                txtTenChuHang_update_new.Text = txtTenChuHang_update_old.Text;
            }
            if (txtDiaChi_update_new.Text == "")
            {
                txtDiaChi_update_new.Text = txtDiaChi_update_old.Text;
            }
            if (txtSDT_update_new.Text == "")
            {
                txtSDT_update_new.Text = txtSDT_update_old.Text;
            }
            if (txtCMND_update_new.Text == "")
            {
                txtCMND_update_new.Text = txtCMND_update_old.Text;
            }
        }
    }
}