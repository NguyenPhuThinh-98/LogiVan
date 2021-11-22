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
    public partial class admin_thong_ke : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            ThongKe();
        }

        private void ThongKe()
        {
            ThongKeChuHang();
        }

        private void ThongKeChuHang()
        {
            try
            {
                lbChuHang_Tong.Text = storeProcedure("sp_ThongKe_ChuHang_Tong");
                lbChuHang_TongCaNhan.Text = storeProcedure("sp_ThongKe_ChuHang_Tong_TungLoai", 1);
                lbChuHang_TongDoanhNghiep.Text = storeProcedure("sp_ThongKe_ChuHang_Tong_TungLoai", 2);

                lbChuHang_TongSoLuong_DonHang.Text = storeProcedure("sp_ThongKe_ChuHang_TongSoLuong_DonHang");
                lbChuHang_TongSoLuong_DonHang_CaNhan.Text = storeProcedure("sp_ThongKe_ChuHang_TongSoLuong_DonHang_TungLoai", 1);
                lbChuHang_TongSoLuong_DonHang_DoanhNghiep.Text = storeProcedure("sp_ThongKe_ChuHang_TongSoLuong_DonHang_TungLoai", 2);

                lbChuHang_TongGiaTri_DonHang.Text = storeProcedure("sp_ThongKe_ChuHang_TongGiaTri_DonHang");
                lbChuHang_TongGiaTri_DonHang_CaNhan.Text = storeProcedure("sp_ThongKe_ChuHang_TongGiaTri_DonHang_TungLoai", 1);
                lbChuHang_TongGiaTri_DonHang_DoanhNghiep.Text = storeProcedure("sp_ThongKe_ChuHang_TongGiaTri_DonHang_TungLoai", 2);
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        private string storeProcedure(string tenSP, int loai)
        {
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand(tenSP, cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@loai", SqlDbType.Int).Value = loai;
                SqlParameter returnParameter = cmd.Parameters.Add("RetVal", SqlDbType.Int);
                returnParameter.Direction = ParameterDirection.ReturnValue;
                cmd.ExecuteNonQuery();
                cnn.Close();
                return returnParameter.Value.ToString();

            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return null;
            }
        }

        private string storeProcedure(string tenSP)
        {
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand(tenSP, cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlParameter returnParameter = cmd.Parameters.Add("RetVal", SqlDbType.Int);
                returnParameter.Direction = ParameterDirection.ReturnValue;
                cmd.ExecuteNonQuery();
                cnn.Close();
                return returnParameter.Value.ToString();
                
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return null;
            }
        }

        protected void btnThongKe_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnBaoCao_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }
    }
}