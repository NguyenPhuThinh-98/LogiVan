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
    public partial class admin_hang : System.Web.UI.Page
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
                cmd = new SqlCommand("select * from Hang", cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();

                TenCotTableHang(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
            }
        }

        private void TenCotTableHang(DataTable dt)
        {
            dt.Columns["MaHang"].ColumnName = "Mã hàng";
            dt.Columns["TenHang"].ColumnName = "Tên hàng";
            dt.Columns["KichThuoc"].ColumnName = "Kích thước";
            dt.Columns["KhoiLuong"].ColumnName = "Khối lượng";
            dt.Columns["MaLoaiHang"].ColumnName = "Mã loại hàng";
        }

        protected void btnViewInsert_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            NapLieuMaLoaiHang(insertMaLoaiHang);
        }

        private void NapLieuMaLoaiHang(DropDownList MaLoaiHang)
        {
            cnn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cnn.Open();
                cmd = new SqlCommand("select MaLoaiHang, TenLoaiHang from LoaiHang", cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();
                foreach (DataRow dr in dt.Rows)
                {
                    dr[1] = dr[0].ToString() + " - " + dr[1].ToString();
                }
                MaLoaiHang.DataSource = dt;
                MaLoaiHang.DataTextField = "TenLoaiHang";
                MaLoaiHang.DataValueField = "MaLoaiHang";
                MaLoaiHang.DataBind();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
            }
        }

        protected void btnViewDelete_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            NapLieuMaHang(delMaHang);
        }

        private void NapLieuMaHang(DropDownList MaHang)
        {
            cnn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cnn.Open();
                cmd = new SqlCommand("select MaHang, TenHang from Hang", cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();

                foreach (DataRow dr in dt.Rows)
                {
                    dr[1] = dr[0].ToString() + " - " + dr[1].ToString();
                }

                MaHang.DataSource = dt;
                MaHang.DataTextField = "TenHang";
                MaHang.DataValueField = "MaHang";
                MaHang.DataBind();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
            }
        }

        protected void btnViewUpdate_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            NapLieuMaHang(updateMaHang);
            NapLieuMaLoaiHang(updateMaLoaiHang_new);
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            cnn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cnn.Open();
                cmd = new SqlCommand("sp_ThemHang", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@tenhang", SqlDbType.NVarChar).Value = insertTenHang.Text;
                cmd.Parameters.Add("@kichthuoc", SqlDbType.VarChar).Value = insertKichThuoc.Text;
                cmd.Parameters.Add("@khoiluong", SqlDbType.NVarChar).Value = insertKhoiLuong.Text;
                cmd.Parameters.Add("@maloai", SqlDbType.Int).Value = insertMaLoaiHang.SelectedValue;
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
            }
            NapLieu();
            XoaViewInsert();
            MultiView1.ActiveViewIndex = -1;
        }

        private void XoaViewInsert()
        {
            insertTenHang.Text = "";
            insertKichThuoc.Text = "";
            insertKhoiLuong.Text = "";
        }

        protected void delMaHang_SelectedIndexChanged(object sender, EventArgs e)
        {
            NapLieuView(delMaHang.SelectedValue, delTenHang, delKichThuoc, delKhoiLuong, delMaLoaiHang);
        }

        private void NapLieuView(string MaHang, TextBox TenHang, TextBox KichThuoc, TextBox KhoiLuong, TextBox MaLoaiHang)
        {
            cnn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cnn.Open();
                cmd = new SqlCommand("select * from Hang where MaHang = " + MaHang, cnn);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TenHang.Text = dr["TenHang"].ToString();
                    KichThuoc.Text = dr["KichThuoc"].ToString();
                    KhoiLuong.Text = dr["KhoiLuong"].ToString();
                    MaLoaiHang.Text = dr["MaLoaiHang"].ToString();
                }
                cnn.Close();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            cnn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cnn.Open();
                cmd = new SqlCommand("delete from Hang where MaHang = " + delMaHang.SelectedValue, cnn);
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
            }
            NapLieu();
            XoaViewDelete();
            MultiView1.ActiveViewIndex = -1;
        }

        private void XoaViewDelete()
        {
            delTenHang.Text = "";
            delKichThuoc.Text = "";
            delKhoiLuong.Text = "";
            delMaLoaiHang.Text = "";
        }

        protected void updateMaHang_SelectedIndexChanged(object sender, EventArgs e)
        {
            NapLieuView(updateMaHang.SelectedValue, updateTenHang, updateKichThuoc, updateKhoiLuong, updateMaLoaiHang_old);
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            cnn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cnn.Open();
                cmd.Connection = cnn;

                cmd.CommandText = "update Hang set TenHang = N'" + updateTenHang.Text + "'" + "," 
                    + "KichThuoc = '" + updateKichThuoc.Text + "'" + "," 
                    + "KhoiLuong = N'" + updateKhoiLuong.Text + "'" 
                    + " where MaHang = " + updateMaHang.SelectedValue;
                cmd.ExecuteNonQuery();

                if (cbUpdateMaLoaiHang.Checked)
                {
                    cmd.CommandText = "update Hang set MaLoaiHang = " + updateMaLoaiHang_new.SelectedValue 
                        + " where MaHang = " + updateMaHang.SelectedValue;
                    cmd.ExecuteNonQuery();
                }

                cnn.Close();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
            }

            cbUpdateMaLoaiHang.Checked = false;

            NapLieu();
            XoaViewUpdate();
            MultiView1.ActiveViewIndex = -1;
        }

        private void XoaViewUpdate()
        {
            updateTenHang.Text = "";
            updateKichThuoc.Text = "";
            updateKhoiLuong.Text = "";
            updateMaLoaiHang_old.Text = "";
        }
    }
}