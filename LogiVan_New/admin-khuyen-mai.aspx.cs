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
    public partial class admin_khuyen_mai : System.Web.UI.Page
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
                cmd = new SqlCommand("select * from khuyenmai", cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();
                
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        protected void btnViewInsert_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnViewDelete_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            NapLieuMaKM(delTieuDe);
        }

        private void NapLieuMaKM(DropDownList id)
        {
            id.DataSource = null;
            id.DataBind();
            cnn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cnn.Open();
                cmd = new SqlCommand("select MaKM, TieuDe from KhuyenMai", cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();
                foreach(DataRow dr in dt.Rows)
                {
                    dr[1] = dr[0].ToString() + " - " + dr[1].ToString();
                }
                id.DataSource = dt;
                id.DataTextField = "TieuDe";
                id.DataValueField = "MaKM";
                id.DataBind();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        protected void btnViewUpdate_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            NapLieuMaKM(updateMaKM);
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            cnn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cnn.Open();
                cmd = new SqlCommand("sp_ThemKhuyenMai", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@anh", SqlDbType.VarBinary).Value = insertAnh.FileBytes;
                cmd.Parameters.Add("@tieude", SqlDbType.NVarChar).Value = insertTieuDe.Text;
                cmd.Parameters.Add("@tomtat", SqlDbType.NVarChar).Value = insertTomtat.Text;
                cmd.Parameters.Add("@ngaytao", SqlDbType.Date).Value = insertNgayTao.Text;
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
            insertTieuDe.Text = "";
            insertNgayTao.Text = "";
            insertTomtat.Text = "";

            delAnh.ImageUrl = null;
            delTomtat.Text = "";
            delNgay.Text = "";

            updateAnh_new = new FileUpload();
            updateAnh_old.ImageUrl = null;
            updateTieuDe_new.Text = updateTieuDe_old.Text = "";
            updateTomtat_new.Text = updateTomtat_old.Text = "";
            updateNgaytao_new.Text = updateNgaytao_old.Text = "";
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView drv = (DataRowView)e.Row.DataItem;
                string url = "data:image/jpg;base64," + Convert.ToBase64String((byte[])drv["Anh"]);
                (e.Row.FindControl("Image1") as Image).ImageUrl = url;
            }
        }

        protected void delTieuDe_SelectedIndexChanged(object sender, EventArgs e)
        {
            NapLieuView(delTieuDe.SelectedValue, delAnh, delTomtat, delNgay);
        }

        private void NapLieuView(string id, Image anh, TextBox tomtat, TextBox ngay)
        {
            cnn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cnn.Open();
                cmd = new SqlCommand("select * from KhuyenMai where MaKM = " + id, cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();

                DataRow dr = dt.Rows[0];
                anh.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["Anh"]);
                tomtat.Text = dr["TomTat"].ToString();
                ngay.Text = dr["NgayTao"].ToString();
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
                cmd = new SqlCommand("delete from KhuyenMai where MaKM = " + delTieuDe.SelectedValue, cnn);
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

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            NapLieu();
        }

        protected void updateMaKM_SelectedIndexChanged(object sender, EventArgs e)
        {
            NapLieuView(updateMaKM.SelectedValue, updateAnh_old, updateTomtat_old, updateNgaytao_old, updateTieuDe_old);
        }

        private void NapLieuView(string id, Image anh, TextBox tomtat, TextBox ngay, TextBox tieude)
        {
            cnn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cnn.Open();
                cmd = new SqlCommand("select * from KhuyenMai where MaKM = " + id, cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();

                DataRow dr = dt.Rows[0];
                anh.ImageUrl = "data:image/jpg;base64," + Convert.ToBase64String((byte[])dr["Anh"]);
                tomtat.Text = dr["TomTat"].ToString();
                ngay.Text = dr["NgayTao"].ToString();
                tieude.Text = dr["TieuDe"].ToString();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            ChuanBiCapNhat();
            cnn = new SqlConnection(Session["admin"].ToString());
            try
            {
                cnn.Open();
                if (updateAnh_new.HasFile)
                {
                    cmd = new SqlCommand("sp_CapNhatKhuyenMai", cnn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@makm", SqlDbType.Int).Value = updateMaKM.SelectedValue;
                    cmd.Parameters.Add("@anh", SqlDbType.VarBinary).Value = updateAnh_new.FileBytes;
                    cmd.Parameters.Add("@tieude", SqlDbType.NVarChar).Value = updateTieuDe_new.Text;
                    cmd.Parameters.Add("@tomtat", SqlDbType.NVarChar).Value = updateTomtat_new.Text;
                    cmd.Parameters.Add("@ngaytao", SqlDbType.Date).Value = DateTime.Parse(updateNgaytao_new.Text);
                }
                else
                {
                    cmd = new SqlCommand("sp_CapNhatKhuyenMaiKhongAnh", cnn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@makm", SqlDbType.Int).Value = updateMaKM.SelectedValue;
                    cmd.Parameters.Add("@tieude", SqlDbType.NVarChar).Value = updateTieuDe_new.Text;
                    cmd.Parameters.Add("@tomtat", SqlDbType.NVarChar).Value = updateTomtat_new.Text;
                    cmd.Parameters.Add("@ngaytao", SqlDbType.Date).Value = DateTime.Parse(updateNgaytao_new.Text);
                }
                cmd.ExecuteNonQuery();
                cnn.Close();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
            NapLieu();
            XoaView();
            MultiView1.ActiveViewIndex = -1;
        }

        private void ChuanBiCapNhat()
        {
            if (updateTieuDe_new.Text == "")
            {
                updateTieuDe_new.Text = updateTieuDe_old.Text;
            }
            if (updateTomtat_new.Text == "")
            {
                updateTomtat_new.Text = updateTomtat_old.Text;
            }
            if (updateNgaytao_new.Text == "")
            {
                updateNgaytao_new.Text = updateNgaytao_old.Text;
            }
        }
    }
}