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
    public partial class admin_dich_vu : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection();
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

            cn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cn.Open();
                cmd.Connection = cn;
                cmd.CommandText = "select * from DichVu";
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                TenCot(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                cn.Close();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        private void TenCot(DataTable dt)
        {
            dt.Columns[0].ColumnName = "Mã Dịch Vụ";
            dt.Columns[1].ColumnName = "Tên Dịch Vụ";
            dt.Columns[2].ColumnName = "Giá Dịch Vụ";
        }

        protected void btnOpenViewInsert_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnOpenViewDelete_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            NapLieuMaDichVu(ddlMaDV_delete);
        }

        private void NapLieuMaDichVu(DropDownList MaDV)
        {
            MaDV.DataSource = null;
            MaDV.DataBind();

            cn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cn.Open();
                cmd.Connection = cn;
                cmd.CommandText = "select MaDV, TenDV from DichVu";
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                foreach (DataRow dr in dt.Rows)
                {
                    dr[1] = dr[0].ToString() + " - " + dr[1].ToString();
                }
                MaDV.DataSource = dt;
                MaDV.DataTextField = "TenDV";
                MaDV.DataValueField = "MaDV";
                MaDV.DataBind();
                cn.Close();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        protected void btnOpenViewUpdate_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            NapLieuMaDichVu(ddlMaDV_update);
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            cn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cn.Open();
                cmd = new SqlCommand("sp_ThemDichVu", cn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@tendv", SqlDbType.NVarChar).Value = txtTenDV_insert.Text;
                cmd.Parameters.Add("@giadv", SqlDbType.Int).Value = txtGiaDV_insert.Text;
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
            NapLieu();
            XoaDL_Insert();
            MultiView1.ActiveViewIndex = -1;
        }

        private void XoaDL_Insert()
        {
            txtGiaDV_insert.Text = "";
            txtTenDV_insert.Text = "";
        }

        protected void ddlMaDV_delete_SelectedIndexChanged(object sender, EventArgs e)
        {
            string madv = ddlMaDV_delete.SelectedValue;
            NapLieuVaoTextBox(madv, txtTenDV_delete, txtGiaDV_delete);
        }

        private void NapLieuVaoTextBox(string madv, TextBox txtTenDV_delete, TextBox txtGiaDV_delete)
        {
            cn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cn.Open();
                cmd.Connection = cn;
                cmd.CommandText = "select * from DichVu where MaDV = " + madv;
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    txtGiaDV_delete.Text = dr["GiaDV"].ToString();
                    txtTenDV_delete.Text = dr["TenDV"].ToString();
                }
                cn.Close();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            cn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cn.Open();
                cmd.Connection = cn;
                cmd.CommandText = "delete from DichVu where MaDV = " + ddlMaDV_delete.SelectedValue;
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }

            NapLieu();
            MultiView1.ActiveViewIndex = -1;

            txtGiaDV_delete.Text = "";
            txtTenDV_delete.Text = "";
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            ChuanBiUpdate();

            cn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cn.Open();
                cmd.Connection = cn;
                cmd.CommandText = "update DichVu set TenDV = N'" + txtTenDV_update_new.Text 
                    + "' , GiaDV = " + txtGiaDV_update_new.Text 
                    + " where MaDV = " + ddlMaDV_update.SelectedValue;
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }

            NapLieu();
            MultiView1.ActiveViewIndex = -1;

            txtGiaDV_update_new.Text = "";
            txtGiaDV_update_old.Text = "";
            txtTenDV_update_new.Text = "";
            txtTenDV_update_old.Text = "";
        }

        private void ChuanBiUpdate()
        {
            if (txtGiaDV_update_new.Text == "")
            {
                txtGiaDV_update_new.Text = txtGiaDV_update_old.Text;
            }
            if (txtTenDV_update_new.Text == "")
            {
                txtTenDV_update_new.Text = txtTenDV_update_old.Text;
            }
        }

        protected void ddlMaDV_update_SelectedIndexChanged(object sender, EventArgs e)
        {
            string madv = ddlMaDV_update.SelectedValue;
            NapLieuVaoTextBox(madv, txtTenDV_update_old, txtGiaDV_update_old);
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            NapLieu();
        }
    }
}