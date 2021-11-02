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
            catch(SqlException ex)
            {
                Alert.Show(ex.Message);
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
            NapLieuInsert();
        }

        private void NapLieuInsert()
        {
            con = new SqlConnection(Session["admin"].ToString());
            try
            {
                con.Open();
                cmd.Connection = con;

                cmd.CommandText = "select MaDonHang from DonHang";
                da = new SqlDataAdapter(cmd);
                DataTable dt_DonHang = new DataTable();
                da.Fill(dt_DonHang);
                ddl_DonHang.DataSource = dt_DonHang;
                ddl_DonHang.DataTextField = "MaDonHang";
                ddl_DonHang.DataValueField = "MaDonHang";
                ddl_DonHang.DataBind();

                cmd.CommandText = "select MaHang from Hang";
                da = new SqlDataAdapter(cmd);
                DataTable dt_Hang = new DataTable();
                da.Fill(dt_Hang);
                ddl_Hang.DataSource = dt_Hang;
                ddl_Hang.DataTextField = "MaHang";
                ddl_Hang.DataValueField = "MaHang";
                ddl_Hang.DataBind();

                cmd.CommandText = "select MaDV from DichVu";
                da = new SqlDataAdapter(cmd);
                DataTable dt_DichVu = new DataTable();
                da.Fill(dt_DichVu);
                ddl_DichVu.DataSource = dt_DichVu;
                ddl_DichVu.DataTextField = "MaDV";
                ddl_DichVu.DataValueField = "MaDV";
                ddl_DichVu.DataBind();

                con.Close();
            }
            catch (SqlException ex)
            {
                Alert.Show(ex.Message);
            }
        }

        protected void btnOpenViewDelete_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void btnOpenViewUpdate_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }
    }
}