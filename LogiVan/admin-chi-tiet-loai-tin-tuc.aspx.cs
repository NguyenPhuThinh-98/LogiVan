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
    public partial class admin_chi_tiet_loai_tin_tuc : System.Web.UI.Page
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
            con = new SqlConnection(Session["admin"].ToString());
            try
            {
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "select * from ChiTietLoaiTinTuc";
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
            dt.Columns[0].ColumnName = "Mã Tin Tức";
            dt.Columns[1].ColumnName = "Mã Loại Tin Tức";
        }

        protected void btnViewInsert_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            NapLieuDropDownList(ddlMaTinTuc_insert, ddlMaLoai_insert);
        }

        private void NapLieuDropDownList(DropDownList MaTinTuc, DropDownList MaLoai)
        {
            con = new SqlConnection(Session["admin"].ToString());
            try
            {
                con.Open();
                cmd.Connection = con;

                if (MaTinTuc != null)
                {
                    cmd.CommandText = "select MaTinTuc from TinTuc";
                    da = new SqlDataAdapter(cmd);
                    DataTable dt_MaTinTuc = new DataTable();
                    da.Fill(dt_MaTinTuc);
                    MaTinTuc.DataSource = dt_MaTinTuc;
                    MaTinTuc.DataTextField = ddlMaTinTuc_insert.DataValueField = "MaTinTuc";
                    MaTinTuc.DataBind();
                }

                if (MaLoai != null)
                {
                    cmd.CommandText = "select MaLoai from LoaiTinTuc";
                    da = new SqlDataAdapter(cmd);
                    DataTable dt_MaLoai = new DataTable();
                    da.Fill(dt_MaLoai);
                    MaLoai.DataSource = dt_MaLoai;
                    MaLoai.DataTextField = ddlMaLoai_insert.DataValueField = "MaLoai";
                    MaLoai.DataBind();
                }

                con.Close();
            }
            catch(SqlException ex)
            {
                Alert.Show(ex.Message);
            }
        }

        protected void btnViewDelete_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            NapLieuDropDownList(ddlMaTinTuc_delete, ddlMaLoai_delete);
        }

        protected void btnViewUpdate_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            NapLieuDropDownList(ddlMaTinTuc_update, ddlMaLoai_update_old);
            NapLieuDropDownList(null, ddlMaLoai_update_new);
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(Session["admin"].ToString());
            try
            {
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "insert into ChiTietLoaiTinTuc values("
                    + ddlMaTinTuc_insert.SelectedValue + ","
                    + ddlMaLoai_insert.SelectedValue + ")";
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (SqlException ex)
            {
                Alert.Show(ex.Message);
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
                cmd.CommandText = "delete from ChiTietLoaiTinTuc where MaTinTuc = " + ddlMaTinTuc_delete.SelectedValue 
                    + " and MaLoai = " + ddlMaLoai_delete.SelectedValue;
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (SqlException ex)
            {
                Alert.Show(ex.Message);
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
                cmd.CommandText = "update ChiTietLoaiTinTuc set MaLoai = " + ddlMaLoai_update_new.SelectedValue 
                    + " where MaTinTuc = " + ddlMaTinTuc_update.SelectedValue 
                    + " and MaLoai = " + ddlMaLoai_update_old.SelectedValue;
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (SqlException ex)
            {
                Alert.Show(ex.Message);
            }
            NapLieu();
            MultiView1.ActiveViewIndex = -1;
        }
    }
}