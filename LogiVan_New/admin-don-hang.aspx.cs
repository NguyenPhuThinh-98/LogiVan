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
    public partial class admin_don_hang : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                NapLieuGridView();
            }
            MaintainScrollPositionOnPostBack = true;
        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            NapLieuGridView();
            MultiView1.ActiveViewIndex = -1;
        }

        private void NapLieuGridView()
        {
            GridView1.DataSource = null;
            GridView1.DataBind();

            cnn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cnn.Open();
                cmd = new SqlCommand("select * from DonHang", cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();

                EditTenCot(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        private void EditTenCot(DataTable dt)
        {
            dt.Columns[0].ColumnName = "Mã đơn hàng";
            dt.Columns[1].ColumnName = "Địa chỉ lấy hàng";
            dt.Columns[2].ColumnName = "Địa chỉ giao hàng";
            dt.Columns[3].ColumnName = "Thời gian nhận hàng";
            dt.Columns[4].ColumnName = "Tổng khối lượng";
            dt.Columns[5].ColumnName = "Người liên hệ";
            dt.Columns[6].ColumnName = "SDT liên hệ";
            dt.Columns[7].ColumnName = "Thành tiền";
            dt.Columns[8].ColumnName = "Mã chủ hàng";
            dt.Columns[9].ColumnName = "Mã xe";
        }

        protected void btnOpenViewInsert_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            NapLieuMaChuHang(insert_MaChuHang);
            NapLieuMaXe(insert_MaXe);
        }

        private void NapLieuMaChuHang(DropDownList MaChuHang)
        {
            cnn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cnn.Open();
                cmd = new SqlCommand("select MaChuHang, TenChuHang from ChuHang", cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();
                foreach (DataRow dr in dt.Rows)
                {
                    dr[1] = dr[0].ToString() + " - " + dr[1].ToString();
                }
                MaChuHang.DataSource = dt;
                MaChuHang.DataTextField = "TenChuHang";
                MaChuHang.DataValueField = "MaChuHang";
                MaChuHang.DataBind();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        private void NapLieuMaXe(DropDownList MaXe)
        {
            cnn = new SqlConnection(Session["admin"].ToString());
            try
            {
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

        protected void btnOpenViewDelete_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            NapLieuMaDonHang(delete_MaDonHang);
        }

        private void NapLieuMaDonHang(DropDownList MaDonHang)
        {
            MaDonHang.DataSource = null;
            MaDonHang.DataBind();

            cnn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cnn.Open();
                cmd = new SqlCommand("select MaDonHang, TenChuHang, BienSo from DonHang, ChuHang, Xe where DonHang.MaChuHang = ChuHang.MaChuHang and DonHang.MaXe = Xe.MaXe", cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();
                foreach (DataRow dr in dt.Rows)
                {
                    dr[1] = dr[0].ToString() + " - " + dr[1].ToString() + " - " + dr[2].ToString();
                }
                MaDonHang.DataSource = dt;
                MaDonHang.DataTextField = "TenChuHang";
                MaDonHang.DataValueField = "MaDonHang";
                MaDonHang.DataBind();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        protected void btnOpenViewUpdate_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            NapLieuMaDonHang(updateMaDonHang);
            NapLieuMaChuHang(updateMaChuHang_new);
            NapLieuMaXe(updateMaXe_new);
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            cnn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cnn.Open();
                cmd = new SqlCommand("sp_ThemDonHang", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@DiaChiLayHang", SqlDbType.NVarChar).Value = insert_DiaChiLayHang.Text;
                cmd.Parameters.Add("@DiaChiGiaoHang", SqlDbType.NVarChar).Value = insert_DiaChiGiaoHang.Text;
                cmd.Parameters.Add("@ThoiGianNhanHang", SqlDbType.DateTime).Value = DateTime.Parse(insert_ThoiGianNhanHang.Text);
                cmd.Parameters.Add("@TongKhoiLuong", SqlDbType.NVarChar).Value = insert_TongKhoiLuong.Text;
                cmd.Parameters.Add("@NguoiLienHe", SqlDbType.NVarChar).Value = insert_NguoiLienHe.Text;
                cmd.Parameters.Add("@SDT", SqlDbType.VarChar).Value = insert_SDT.Text;
                cmd.Parameters.Add("@ThanhTien", SqlDbType.Int).Value = insert_ThanhTien.Text;
                cmd.Parameters.Add("@MaChuHang", SqlDbType.Int).Value = insert_MaChuHang.SelectedValue;
                cmd.Parameters.Add("@MaXe", SqlDbType.Int).Value = insert_MaXe.SelectedValue;
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }

            NapLieuGridView();
            MultiView1.ActiveViewIndex = -1;
            XoaViewInsert();
        }

        private void XoaViewInsert()
        {
            insert_DiaChiGiaoHang.Text = "";
            insert_DiaChiLayHang.Text = "";
            insert_NguoiLienHe.Text = "";
            insert_SDT.Text = "";
            insert_ThanhTien.Text = "";
            insert_ThoiGianNhanHang.Text = "";
            insert_TongKhoiLuong.Text = "";
        }

        protected void delete_MaDonHang_SelectedIndexChanged(object sender, EventArgs e)
        {
            string MaDonHang = delete_MaDonHang.SelectedValue;
            XemDuLieu(MaDonHang, 
                delete_DiaChiLayHang, 
                delete_DiaChiGiaoHang, 
                delete_ThoiGian, 
                delete_KhoiLuong, 
                delete_NguoiLienHe, 
                delete_SDT, 
                delete_ThanhTien, 
                delete_ChuHang, 
                delete_Xe);
        }

        private void XemDuLieu(string maDonHang, 
            TextBox DiaChiLayHang, 
            TextBox DiaChiGiaoHang, 
            TextBox ThoiGian, 
            TextBox KhoiLuong, 
            TextBox NguoiLienHe, 
            TextBox SDT, 
            TextBox ThanhTien, 
            TextBox ChuHang, 
            TextBox Xe)
        {
            cnn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cnn.Open();
                cmd = new SqlCommand("select * from DonHang where MaDonHang = " + maDonHang, cnn);
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    DiaChiGiaoHang.Text = dr["DiaChiGiaoHang"].ToString();
                    DiaChiLayHang.Text = dr["DiaChiLayHang"].ToString();
                    ThoiGian.Text = dr["ThoiGianNhanHang"].ToString();
                    KhoiLuong.Text = dr["TongKhoiLuong"].ToString();
                    NguoiLienHe.Text = dr["NguoiLienHe"].ToString();
                    SDT.Text = dr["SDTNguoiLienHe"].ToString();
                    ThanhTien.Text = dr["ThanhTien"].ToString();
                    ChuHang.Text = dr["MaChuHang"].ToString();
                    Xe.Text = dr["MaXe"].ToString();
                }
                cnn.Close();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            cnn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cnn.Open();
                cmd = new SqlCommand("delete from DonHang where MaDonHang = " + delete_MaDonHang.SelectedValue, cnn);
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
            NapLieuGridView();
            XoaViewDelete();
            MultiView1.ActiveViewIndex = -1;
        }

        private void XoaViewDelete()
        {
            delete_ChuHang.Text = "";
            delete_DiaChiGiaoHang.Text = "";
            delete_DiaChiLayHang.Text = "";
            delete_KhoiLuong.Text = "";
            delete_NguoiLienHe.Text = "";
            delete_SDT.Text = "";
            delete_ThanhTien.Text = "";
            delete_ThoiGian.Text = "";
            delete_Xe.Text = "";
        }

        protected void updateMaDonHang_SelectedIndexChanged(object sender, EventArgs e)
        {
            string MaDonHang = updateMaDonHang.SelectedValue;
            XemDuLieu(MaDonHang, 
                updateDiaChiLayHang_new, 
                updateDiaChiGiaoHang_new, 
                updateThoiGian_new, 
                updateTongKhoiLuong_new, 
                updateNguoi_new, 
                updateSDT_new, 
                updateThanhTien_new, 
                updateMaChuHang_old, 
                updateMaXe_old);
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            cnn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cnn.Open();
                cmd.Connection = cnn;
                cmd.CommandText = "update DonHang set DiaChiLayHang = N'" + updateDiaChiLayHang_new.Text
                    + "', DiaChiGiaoHang = N'" + updateDiaChiGiaoHang_new.Text
                    + "', ThoiGianNhanHang = '" + DateTime.Parse(updateThoiGian_new.Text) 
                    + "', TongKhoiLuong = N'" + updateTongKhoiLuong_new.Text 
                    + "', NguoiLienHe = N'" + updateNguoi_new.Text 
                    + "', SDTNguoiLienHe = '" + updateSDT_new.Text 
                    + "', ThanhTien = " + updateThanhTien_new.Text 
                    + " where MaDonHang = " + updateMaDonHang.SelectedValue;
                cmd.ExecuteNonQuery();

                if (cbUpdateMaChuHang.Checked)
                {
                    cmd.CommandText = "update DonHang set MaChuHang = " + updateMaChuHang_new.SelectedValue 
                        + " where MaDonHang = " + updateMaDonHang.SelectedValue;
                    cmd.ExecuteNonQuery();
                }

                if (cbUpdateMaXe.Checked)
                {
                    cmd.CommandText = "update DonHang set MaXe = " + updateMaXe_new.SelectedValue
                        + " where MaDonHang = " + updateMaDonHang.SelectedValue;
                    cmd.ExecuteNonQuery();
                }

                cnn.Close();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
            NapLieuGridView();
            XoaViewUpdate();
            MultiView1.ActiveViewIndex = -1;
        }

        private void XoaViewUpdate()
        {
            updateDiaChiGiaoHang_new.Text = "";
            updateDiaChiLayHang_new.Text = "";
            updateMaChuHang_old.Text = "";
            updateMaXe_old.Text = "";
            updateNguoi_new.Text = "";
            updateSDT_new.Text = "";
            updateThanhTien_new.Text = "";
            updateThoiGian_new.Text = "";
            updateTongKhoiLuong_new.Text = "";
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            NapLieuGridView();
        }
    }
}