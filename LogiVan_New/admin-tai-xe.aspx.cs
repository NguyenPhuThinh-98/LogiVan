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
    public partial class admin_tai_xe : System.Web.UI.Page
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
            GridView1.DataSource = null;
            GridView1.DataBind();

            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand("select * from TaiXe", cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();

                dt.Columns[0].ColumnName = "Mã tài xế";
                dt.Columns[1].ColumnName = "Tên tài xế";
                dt.Columns[2].ColumnName = "Ngày sinh";
                dt.Columns[3].ColumnName = "Số điện thoại";
                dt.Columns[4].ColumnName = "Địa chỉ";
                dt.Columns[5].ColumnName = "CMND";
                dt.Columns[6].ColumnName = "Tỉnh";
                dt.Columns[7].ColumnName = "Mã xe";

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
            NapLieu(inMaXe);
        }

        private void NapLieu(DropDownList MaXe)
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

                foreach(DataRow dr in dt.Rows)
                {
                    dr[1] = dr[0].ToString() + " - " + dr[1].ToString() + " - " + dr[2].ToString();
                }

                MaXe.DataSource = dt;
                MaXe.DataTextField = "TenXe";
                MaXe.DataValueField = "MaXe";
                MaXe.DataBind();
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
                cmd = new SqlCommand("sp_ThemTaiXe", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@tentaixe", SqlDbType.NVarChar).Value = inTen.Text;
                cmd.Parameters.Add("@ngaysinh", SqlDbType.Date).Value = inNgaySinh.Text;
                cmd.Parameters.Add("@sodienthoai", SqlDbType.VarChar).Value = inSDT.Text;
                cmd.Parameters.Add("@diachi", SqlDbType.NVarChar).Value = inDiaChi.Text;
                cmd.Parameters.Add("@cmnd", SqlDbType.VarChar).Value = inCMND.Text;
                cmd.Parameters.Add("@tinh", SqlDbType.NVarChar).Value = inTinh.Text;
                cmd.Parameters.Add("@maxe", SqlDbType.Int).Value = inMaXe.SelectedValue;
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
            inNgaySinh.Text = "";
            inSDT.Text = "";
            inDiaChi.Text = "";
            inCMND.Text = "";
            inTinh.Text = "";

            delTenTaiXe.Text = "";
            delNgaySinh.Text = "";
            delSDT.Text = "";
            delDiaChi.Text = "";
            delCMND.Text = "";
            delTinh.Text = "";
            delMaXe.Text = "";

            upTenTaiXe_new.Text = upTenTaiXe_old.Text = "";
            upNgaySinh_new.Text = upNgaySinh_old.Text = "";
            upSDT_new.Text = upSDT_old.Text = "";
            upDiaChi_new.Text = upDiaChi_old.Text = "";
            upCMND_new.Text = upCMND_old.Text = "";
            upTinh_new.Text = upTinh_old.Text = "";
            upMaXe_old.Text = "";
        }

        protected void btnViewDelete_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            NapLieuTaiXe(delMaTaiXe);
        }

        private void NapLieuTaiXe(DropDownList MaTaiXe)
        {
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand("select MaTaiXe, TenTaiXe, CMND from TaiXe", cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();

                foreach (DataRow dr in dt.Rows)
                {
                    dr[1] = dr[0].ToString() + " - " + dr[1].ToString() + " - " + dr[2].ToString();
                }

                MaTaiXe.DataSource = dt;
                MaTaiXe.DataTextField = "TenTaiXe";
                MaTaiXe.DataValueField = "MaTaiXe";
                MaTaiXe.DataBind();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        protected void delMaTaiXe_SelectedIndexChanged(object sender, EventArgs e)
        {
            NapLieu(delMaTaiXe, delTenTaiXe, delNgaySinh, delSDT, delDiaChi, delCMND, delTinh, delMaXe);
        }

        private void NapLieu(DropDownList MaTaiXe, TextBox TenTaiXe, TextBox NgaySinh, TextBox SDT, TextBox DiaChi, TextBox CMND, TextBox Tinh, TextBox MaXe)
        {
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand("select * from TaiXe where MaTaiXe = " + MaTaiXe.SelectedValue, cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();

                DataRow dr = dt.Rows[0];
                TenTaiXe.Text = dr[1].ToString();
                NgaySinh.Text = dr[2].ToString();
                SDT.Text = dr[3].ToString();
                DiaChi.Text = dr[4].ToString();
                CMND.Text = dr[5].ToString();
                Tinh.Text = dr[6].ToString();
                MaXe.Text = dr[7].ToString();
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
                cmd = new SqlCommand("delete from TaiXe where MaTaiXe = " + delMaTaiXe.SelectedValue, cnn);
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

        protected void btnViewUpdate_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            NapLieuTaiXe(upMaTaiXe);
            NapLieu(upMaXe_new);
        }

        protected void upMaTaiXe_SelectedIndexChanged(object sender, EventArgs e)
        {
            NapLieu(upMaTaiXe, upTenTaiXe_old, upNgaySinh_old, upSDT_old, upDiaChi_old, upCMND_old, upTinh_old, upMaXe_old);
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            ChuanBi();
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand("sp_CapNhatTaiXe", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@ma", SqlDbType.Int).Value = upMaTaiXe.SelectedValue;
                cmd.Parameters.Add("@ten", SqlDbType.NVarChar).Value = upTenTaiXe_new.Text;
                cmd.Parameters.Add("@ngay", SqlDbType.Date).Value = DateTime.Parse(upNgaySinh_new.Text);
                cmd.Parameters.Add("@sdt", SqlDbType.VarChar).Value = upSDT_new.Text;
                cmd.Parameters.Add("@diachi", SqlDbType.NVarChar).Value = upDiaChi_new.Text;
                cmd.Parameters.Add("@cmnd", SqlDbType.VarChar).Value = upCMND_new.Text;
                cmd.Parameters.Add("@tinh", SqlDbType.NVarChar).Value = upTinh_new.Text;
                if (cbUpdateMaXe.Checked)
                {
                    cmd.Parameters.Add("@xe", SqlDbType.Int).Value = upMaXe_new.SelectedValue;
                }
                else
                {
                    cmd.Parameters.Add("@xe", SqlDbType.Int).Value = upMaXe_old.Text;
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

        private void ChuanBi()
        {
            if (upTenTaiXe_new.Text == "")
            {
                upTenTaiXe_new.Text = upTenTaiXe_old.Text;
            }
            if (upNgaySinh_new.Text == "")
            {
                upNgaySinh_new.Text = upNgaySinh_old.Text;
            }
            if (upSDT_new.Text == "")
            {
                upSDT_new.Text = upSDT_old.Text;
            }
            if (upDiaChi_new.Text == "")
            {
                upDiaChi_new.Text = upDiaChi_old.Text;
            }
            if (upCMND_new.Text == "")
            {
                upCMND_new.Text = upCMND_old.Text;
            }
            if (upTinh_new.Text == "")
            {
                upTinh_new.Text = upTinh_old.Text;
            }
        }
    }
}