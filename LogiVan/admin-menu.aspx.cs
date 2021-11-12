using LogiVan.App_Code;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LogiVan
{
    public partial class admin_menu : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind_DataList();
            }
        }

        private void Bind_DataList()
        {
            con = new SqlConnection(Session["admin"].ToString());
            try
            {
                con.Open();
                cmd.Connection = con;
                cmd.CommandText = "select table_name from information_schema.tables where table_name not like 'sys%' order by 1";
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DataList1.DataSource = dt;
                DataList1.DataBind();
                con.Close();
            }
            catch(SqlException ex)
            {
                Alert.Show(ex.Message);
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "ButtonClick")
            {
                Button btn = (Button)e.Item.FindControl("btnTableName");
                string TableName = btn.Text;
                switch (TableName)
                {
                    case "ChiTietDonHang":
                        {
                            Response.Redirect("admin-chi-tiet-don-hang.aspx");
                        }
                        break;
                    case "ChiTietLoaiTinTuc":
                        {
                            Response.Redirect("admin-chi-tiet-loai-tin-tuc.aspx");
                        }
                        break;
                    case "ChuHang":
                        {
                            Response.Redirect("admin-chu-hang.aspx");
                        }
                        break;
                    case "DichVu":
                        {
                            Response.Redirect("admin-dich-vu.aspx");
                        }
                        break;
                    case "DonHang":
                        {
                            Response.Redirect("admin-don-hang.aspx");
                        }
                        break;
                    case "Hang":
                        {
                            Response.Redirect("admin-hang.aspx");
                        }
                        break;
                    case "KhuyenMai":
                        {
                            Response.Redirect("admin-khuyen-mai.aspx");
                        }
                        break;
                    case "LoaiChuHang":
                        {
                            Response.Redirect("admin-loai-chu-hang.aspx");
                        }
                        break;
                    case "LoaiHang":
                        {
                            Response.Redirect("admin-loai-hang.aspx");
                        }
                        break;
                    case "LoaiTinTuc":
                        {
                            Response.Redirect("admin-loai-tin-tuc.aspx");
                        }
                        break;
                    case "LoaiXe":
                        {
                            Response.Redirect("admin-loai-xe.aspx");
                        }
                        break;
                    case "TaiXe":
                        {
                            Response.Redirect("admin-tai-xe.aspx");
                        }
                        break;
                    case "TinTuc":
                        {
                            Response.Redirect("admin-tin-tuc.aspx");
                        }
                        break;
                    case "Xe":
                        {
                            Response.Redirect("admin-xe.aspx");
                        }
                        break;
                    default:
                        break;
                }
            }
        }
    }
}