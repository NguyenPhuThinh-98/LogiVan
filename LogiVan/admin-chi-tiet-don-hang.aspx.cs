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
    public partial class admin_chi_tiet_don_hang : System.Web.UI.Page
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
        }

        private void NapLieu()
        {
            con = new SqlConnection(Session["admin"].ToString());
            try
            {
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "select * from ChiTietDonHang";
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                TenCot(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        private void TenCot(DataTable dt)
        {
            dt.Columns[0].ColumnName = "Mã Đơn Hàng";
            dt.Columns[1].ColumnName = "Mã Hàng";
            dt.Columns[2].ColumnName = "Mã Dịch Vụ";
        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            NapLieu();
            MultiView1.ActiveViewIndex = -1;
        }

        protected void btnOpenViewInsert_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            NapLieu_DropDownList(ddl_MaDonHang_insert, ddl_MaHang_insert, ddl_MaDichVu_insert);
        }

        private void NapLieu_DropDownList(DropDownList MaDonHang, DropDownList MaHang, DropDownList MaDichVu)
        {
            con = new SqlConnection(Session["admin"].ToString());
            try
            {
                con.Open();
                cmd.Connection = con;

                if (MaDonHang != null)
                {
                    cmd.CommandText = "select MaDonHang, TenChuHang, BienSo from DonHang, ChuHang, Xe "
                        + "where DonHang.MaChuHang = ChuHang.MaChuHang and DonHang.MaXe = Xe.MaXe";
                    da = new SqlDataAdapter(cmd);
                    DataTable dt_DonHang = new DataTable();
                    da.Fill(dt_DonHang);

                    foreach (DataRow dr in dt_DonHang.Rows)
                    {
                        dr[1] = dr[0].ToString() + " - " + dr[1].ToString() + " - " + dr[2].ToString();
                    }

                    MaDonHang.DataSource = dt_DonHang;
                    MaDonHang.DataTextField = "TenChuHang";
                    MaDonHang.DataValueField = "MaDonHang";
                    MaDonHang.DataBind();
                }

                if (MaHang != null)
                {
                    cmd.CommandText = "select MaHang, TenHang from Hang";
                    da = new SqlDataAdapter(cmd);
                    DataTable dt_Hang = new DataTable();
                    da.Fill(dt_Hang);

                    foreach (DataRow dr in dt_Hang.Rows)
                    {
                        dr[1] = dr[0].ToString() + " - " + dr[1].ToString();
                    }

                    MaHang.DataSource = dt_Hang;
                    MaHang.DataTextField = "TenHang";
                    MaHang.DataValueField = "MaHang";
                    MaHang.DataBind();
                }

                if (MaDichVu != null)
                {
                    cmd.CommandText = "select MaDV, TenDV from DichVu";
                    da = new SqlDataAdapter(cmd);
                    DataTable dt_DichVu = new DataTable();
                    da.Fill(dt_DichVu);

                    foreach (DataRow dr in dt_DichVu.Rows)
                    {
                        dr[1] = dr[0].ToString() + " - " + dr[1].ToString();
                    }

                    MaDichVu.DataSource = dt_DichVu;
                    MaDichVu.DataTextField = "TenDV";
                    MaDichVu.DataValueField = "MaDV";
                    MaDichVu.DataBind();
                }

                con.Close();
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
            NapLieu_DropDownList(ddl_MaDonHang_delete, ddl_MaHang_delete, ddl_MaDichVu_delete);
        }

        protected void btnOpenViewUpdate_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            NapLieu_DropDownList(ddl_MaDonHang_update, ddl_MaHang_update, ddl_MaDichVu_update_old);
            NapLieu_DropDownList(null, null, ddl_MaDichVu_update_new);
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(Session["admin"].ToString());
            try
            {
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "insert into ChiTietDonHang values(" 
                    + ddl_MaDonHang_insert.SelectedValue + "," 
                    + ddl_MaHang_insert.SelectedValue + "," 
                    + ddl_MaDichVu_insert.SelectedValue + ")";
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
            NapLieu();
            MultiView1.ActiveViewIndex = -1;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(Session["admin"].ToString());
            try
            {
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "delete from ChiTietDonHang where MaDonHang = " + ddl_MaDonHang_delete.SelectedValue 
                    + " and MaHang = " + ddl_MaHang_delete.SelectedValue 
                    + " and MaDV = " + ddl_MaDichVu_delete.SelectedValue;
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
            NapLieu();
            MultiView1.ActiveViewIndex = -1;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(Session["admin"].ToString());
            try
            {
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "update ChiTietDonHang set MaDV = " 
                    + ddl_MaDichVu_update_new.SelectedValue 
                    + " where MaDonHang = " + ddl_MaDonHang_update.SelectedValue 
                    + " and MaHang = " + ddl_MaHang_update.SelectedValue 
                    + " and MaDV = " + ddl_MaDichVu_update_old.SelectedValue;
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
            NapLieu();
            MultiView1.ActiveViewIndex = -1;
        }
    }
}