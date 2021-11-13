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
    public partial class admin_xe : System.Web.UI.Page
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
                cmd = new SqlCommand("select * from xe", cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();

                dt.Columns[0].ColumnName = "Mã xe";
                dt.Columns[1].ColumnName = "Tên xe";
                dt.Columns[2].ColumnName = "Biển số";
                dt.Columns[3].ColumnName = "Trọng tải xe";
                dt.Columns[4].ColumnName = "Kích thước thùng xe";
                dt.Columns[5].ColumnName = "Mã loại xe";

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch(Exception ex)
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
            NapLieuMaLoaiXe(inMaLoaiXe);
        }

        private void NapLieuMaLoaiXe(DropDownList MaLoaiXe)
        {
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand("select * from loaixe", cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();

                foreach(DataRow dr in dt.Rows)
                {
                    dr[1] = dr[0].ToString() + " - " + dr[1].ToString();
                }

                MaLoaiXe.DataSource = dt;
                MaLoaiXe.DataTextField = "TenLoaiXe";
                MaLoaiXe.DataValueField = "MaLoaiXe";
                MaLoaiXe.DataBind();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        protected void btnViewDelete_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            NapLieuMaXe(delMaXe);
        }

        private void NapLieuMaXe(DropDownList MaXe)
        {
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand("select MaXe, TenXe, BienSo from Xe", cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();

                foreach (DataRow dr in dt.Rows)
                {
                    dr[1] = dr[0].ToString() + " - " + dr[1].ToString() + " - " + dr[2].ToString();
                }

                MaXe.DataSource = dt;
                MaXe.DataTextField = "TenXe";
                MaXe.DataValueField = "MaXe";
                MaXe.DataBind();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        protected void btnViewUpdate_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            NapLieuMaXe(upMaXe);
            NapLieuMaLoaiXe(upMaLoai_new);
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand("sp_ThemXe", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@tenxe", SqlDbType.NVarChar).Value = inTen.Text;
                cmd.Parameters.Add("@bienso", SqlDbType.VarChar).Value = inBienSo.Text;
                cmd.Parameters.Add("@trongtai", SqlDbType.NVarChar).Value = inTrongTai.Text;
                cmd.Parameters.Add("@kichthuoc", SqlDbType.VarChar).Value = inKichThuoc.Text;
                cmd.Parameters.Add("@maloaixe", SqlDbType.Int).Value = inMaLoaiXe.SelectedValue;
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
            MultiView1.ActiveViewIndex = -1;
        }

        private void XoaView()
        {
            inTen.Text = "";
            inBienSo.Text = "";
            inTrongTai.Text = "";
            inKichThuoc.Text = "";

            delTenXe.Text = "";
            delBienSo.Text = "";
            delTrongTai.Text = "";
            delKichThuoc.Text = "";
            delMaLoaiXe.Text = "";

            upTenXe.Text = "";
            upBienSo.Text = "";
            upTrongTai.Text = "";
            upKichThuoc.Text = "";
            upMaLoai_old.Text = "";
        }

        protected void delMaXe_SelectedIndexChanged(object sender, EventArgs e)
        {
            NapLieu(delMaXe, delTenXe, delBienSo, delTrongTai, delKichThuoc, delMaLoaiXe);
        }

        private void NapLieu(DropDownList MaXe, TextBox TenXe, TextBox BienSo, TextBox TrongTai, TextBox KichThuoc, TextBox MaLoaiXe)
        {
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand("select * from xe where maxe = " + MaXe.SelectedValue, cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();

                DataRow dr = dt.Rows[0];

                TenXe.Text = dr["TenXe"].ToString();
                BienSo.Text = dr["BienSo"].ToString();
                TrongTai.Text = dr["TrongTaiXe"].ToString();
                KichThuoc.Text = dr["KichThuocThungXe"].ToString();
                MaLoaiXe.Text = dr["MaLoaiXe"].ToString();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand("delete from xe where maxe = " + delMaXe.SelectedValue, cnn);
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
            MultiView1.ActiveViewIndex = -1;
        }

        protected void upMaXe_SelectedIndexChanged(object sender, EventArgs e)
        {
            NapLieu(upMaXe, upTenXe, upBienSo, upTrongTai, upKichThuoc, upMaLoai_old);
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand("sp_CapNhatXe", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@maxe", SqlDbType.Int).Value = upMaXe.SelectedValue;
                cmd.Parameters.Add("@tenxe", SqlDbType.NVarChar).Value = upTenXe.Text;
                cmd.Parameters.Add("@bienso", SqlDbType.VarChar).Value = upBienSo.Text;
                cmd.Parameters.Add("@trongtai", SqlDbType.NVarChar).Value = upTrongTai.Text;
                cmd.Parameters.Add("@kichthuoc", SqlDbType.VarChar).Value = upKichThuoc.Text;
                if (cbMaLoai.Checked)
                {
                    cmd.Parameters.Add("@maloaixe", SqlDbType.Int).Value = upMaLoai_new.SelectedValue;
                }
                else
                {
                    cmd.Parameters.Add("@maloaixe", SqlDbType.Int).Value = upMaLoai_old.Text;
                }
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
            MultiView1.ActiveViewIndex = -1;
        }
    }
}