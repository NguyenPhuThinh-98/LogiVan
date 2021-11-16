using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using LogiVan_New.App_Code;

namespace LogiVan_New
{
    public partial class admin_login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnDangNhap_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=.;Initial Catalog=LogivanWeb;User ID=" + txtTaiKhoan.Text + ";Password=" + txtMatKhau.Text;
            con = new SqlConnection(constr);
            try
            {
                con.Open();
            }
            catch(SqlException ex)
            {
                Alert.Show(ex.Message);
                return;
            }
            con.Close();
            Session["admin"] = constr;
            Response.Redirect("trang-chu.aspx");
        }
    }
}