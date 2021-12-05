using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using LogiVan_New.App_Code;
using System.IO;

namespace LogiVan_New
{
    public partial class admin_thong_ke : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ThongKe();
                BaoCao();
            }
            MaintainScrollPositionOnPostBack = true;
        }

        private void BaoCao()
        {
            txtYear.Text = DateTime.Now.Year.ToString();
        }

        private void ThongKe()
        {
            ThongKeChuHang();
            ThongKeChuXe();
            ThongKeDonHang();
            ThongKeDichVu();
        }

        private void ThongKeDichVu()
        {
            try
            {
                lbDichVu_ThanhTien_Sum.Text = storeProcedure("sp_ThongKe_DichVu_ThanhTien_Sum");
                lbDichVu_ThanhTien_Sum_CaNhan.Text = storeProcedure("sp_ThongKe_DichVu_ThanhTien_Sum_Each", 1);
                lbDichVu_ThanhTien_Sum_DoanhNghiep.Text = storeProcedure("sp_ThongKe_DichVu_ThanhTien_Sum_Each", 2);

                string MaDV_MostUse_CaNhan = storeProcedure("sp_ThongKe_DichVu_MaDV_MostUse_Each", 1);
                string MaDV_MostUse_DoanhNghiep = storeProcedure("sp_ThongKe_DichVu_MaDV_MostUse_Each", 2);

                lbDichVu_TenDV_MostUse_CaNhan.Text = getTenDV(MaDV_MostUse_CaNhan);
                lbDichVu_TenDV_MostUse_DoanhNghiep.Text = getTenDV(MaDV_MostUse_DoanhNghiep);

                string MaDV_LeastUse_CaNhan = storeProcedure("sp_ThongKe_DichVu_MaDV_LeastUse_Each", 1);
                string MaDV_LeastUse_DoanhNghiep = storeProcedure("sp_ThongKe_DichVu_MaDV_LeastUse_Each", 2);

                lbDichVu_TenDV_LeastUse_CaNhan.Text = getTenDV(MaDV_LeastUse_CaNhan);
                lbDichVu_TenDV_LeastUse_DoanhNghiep.Text = getTenDV(MaDV_LeastUse_DoanhNghiep);
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        private void ThongKeDonHang()
        {
            try
            {
                lbDonHang_Count.Text = storeProcedure("sp_ThongKe_DonHang_Count");
                lbDonHang_Count_CaNhan.Text = storeProcedure("sp_ThongKe_DonHang_Count_Each", 1);
                lbDonHang_Count_DoanhNghiep.Text = storeProcedure("sp_ThongKe_DonHang_Count_Each", 2);

                lbDonHang_ThanhTien_Sum.Text = storeProcedure("sp_ThongKe_DonHang_ThanhTien_Sum");
                lbDonHang_ThanhTien_Sum_CaNhan.Text = storeProcedure("sp_ThongKe_DonHang_ThanhTien_Sum_Each", 1);
                lbDonHang_ThanhTien_Sum_DoanhNghiep.Text = storeProcedure("sp_ThongKe_DonHang_ThanhTien_Sum_Each", 2);

                lbDonHang_ThanhTien_Max_CaNhan.Text = storeProcedure("sp_ThongKe_DonHang_ThanhTien_Max_Each", 1);
                lbDonHang_ThanhTien_Max_DoanhNghiep.Text = storeProcedure("sp_ThongKe_DonHang_ThanhTien_Max_Each", 2);

                lbDonHang_ThanhTien_Min_CaNhan.Text = storeProcedure("sp_ThongKe_DonHang_ThanhTien_Min_Each", 1);
                lbDonHang_ThanhTien_Min_DoanhNghiep.Text = storeProcedure("sp_ThongKe_DonHang_ThanhTien_Min_Each", 2);

                lbDonHang_LayHang_Least_CaNhan.Text = getTenThanhPho("sp_ThongKe_DonHang_DiaChiLayHang_Least_Each", 1);
                lbDonHang_LayHang_Least_DoanhNghiep.Text = getTenThanhPho("sp_ThongKe_DonHang_DiaChiLayHang_Least_Each", 2);

                lbDonHang_LayHang_Most_CaNhan.Text = getTenThanhPho("sp_ThongKe_DonHang_DiaChiLayHang_Most_Each", 1);
                lbDonHang_LayHang_Most_DoanhNghiep.Text = getTenThanhPho("sp_ThongKe_DonHang_DiaChiLayHang_Most_Each", 2);

                lbDonHang_GiaoHang_Least_CaNhan.Text = getTenThanhPho("sp_ThongKe_DonHang_DiaChiGiaoHang_Least_Each", 1);
                lbDonHang_GiaoHang_Least_DoanhNghiep.Text = getTenThanhPho("sp_ThongKe_DonHang_DiaChiGiaoHang_Least_Each", 2);

                lbDonHang_GiaoHang_Most_CaNhan.Text = getTenThanhPho("sp_ThongKe_DonHang_DiaChiGiaoHang_Most_Each", 1);
                lbDonHang_GiaoHang_Most_DoanhNghiep.Text = getTenThanhPho("sp_ThongKe_DonHang_DiaChiGiaoHang_Most_Each", 2);
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        private void ThongKeChuXe()
        {
            try
            {
                lbChuXe_Count.Text = storeProcedure("sp_ThongKe_ChuXe_Count");

                lbChuXe_DiaChi_Least.Text = getTenThanhPho("sp_ThongKe_ChuXe_DiaChi_Least");
                lbChuXe_DiaChi_Most.Text = getTenThanhPho("sp_ThongKe_ChuXe_DiaChi_Most");

                lbXe_Count.Text = storeProcedure("sp_ThongKe_Xe_Count");
                lbXe_Loai_Least.Text = getName("sp_ThongKe_Xe_Loai_Least");
                lbXe_Loai_Most.Text = getName("sp_ThongKe_Xe_Loai_Most");
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
            }
        }

        private string getName(string proc)
        {
            string name = null;
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand(proc, cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@name", SqlDbType.NVarChar, 255);
                cmd.Parameters["@name"].Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                name = cmd.Parameters["@name"].Value.ToString();
                cnn.Close();
                return name;
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return null;
            }
        }

        private string getTenThanhPho(string thutuc)
        {
            string ten = null;
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand(thutuc, cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@city", SqlDbType.NVarChar, 255);
                cmd.Parameters["@city"].Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                ten = cmd.Parameters["@city"].Value.ToString();
                cnn.Close();
                return ten;
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return null;
            }
        }

        private void ThongKeChuHang()
        {
            try
            {
                lbChuHang_Count.Text = storeProcedure("sp_ThongKe_ChuHang_Count");
                lbChuHang_Count_CaNhan.Text = storeProcedure("sp_ThongKe_ChuHang_Count_Each", 1);
                lbChuHang_Count_DoanhNghiep.Text = storeProcedure("sp_ThongKe_ChuHang_Count_Each", 2);

                lbChuHang_DiaChi_Least_CaNhan.Text = getTenThanhPho("sp_ThongKe_ChuHang_DiaChi_Least_Each", 1);
                lbChuHang_DiaChi_Least_DoanhNghiep.Text = getTenThanhPho("sp_ThongKe_ChuHang_DiaChi_Least_Each", 2);

                lbChuHang_DiaChi_Most_CaNhan.Text = getTenThanhPho("sp_ThongKe_ChuHang_DiaChi_Most_Each", 1);
                lbChuHang_DiaChi_Most_DoanhNghiep.Text = getTenThanhPho("sp_ThongKe_ChuHang_DiaChi_Most_Each", 2);
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        private string getTenThanhPho(string thutuc, int loai)
        {
            string ten = null;
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand(thutuc, cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@loai", SqlDbType.Int).Value = loai;
                cmd.Parameters.Add("@city", SqlDbType.NVarChar,255);
                cmd.Parameters["@city"].Direction = ParameterDirection.Output;
                cmd.ExecuteNonQuery();
                ten = cmd.Parameters["@city"].Value.ToString();
                cnn.Close();
                return ten;
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return null;
            }
        }

        private string getTenDV(string id)
        {
            string name = null;
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                cmd = new SqlCommand("select TenDV from DichVu where MaDV = " + id, cnn);
                name = (string)cmd.ExecuteScalar();
                cnn.Close();
                return name;
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return null;
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
                SqlParameter returnParameter = cmd.Parameters.Add("RetVal", SqlDbType.NVarChar);
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

        protected void cbQuarter_CheckedChanged(object sender, EventArgs e)
        {
            if (cbQuarter.Checked)
            {
                cbMonth.Checked = false;
            }
        }

        protected void cbMonth_CheckedChanged(object sender, EventArgs e)
        {
            if (cbMonth.Checked)
            {
                cbQuarter.Checked = false;
            }
        }

        protected void btnNextYear_Click(object sender, EventArgs e)
        {
            if (txtYear.Text != DateTime.Now.Year.ToString())
            {
                int year = int.Parse(txtYear.Text);
                year += 1;
                txtYear.Text = year.ToString();
            }
            else
            {
                Alert.Show("đã chọn năm hiện tại");
                return;
            }
        }

        protected void btnLastYear_Click(object sender, EventArgs e)
        {
            int year = int.Parse(txtYear.Text);
            year -= 1;
            txtYear.Text = year.ToString();
        }

        protected void btnThisYear_Click(object sender, EventArgs e)
        {
            txtYear.Text = DateTime.Now.Year.ToString();
        }

        protected void btnXemBaoCao_Click(object sender, EventArgs e)
        {
            if(!cbMonth.Checked && !cbQuarter.Checked)
            {
                BaoCaoTheoNam(txtYear.Text);
            }
            if (cbQuarter.Checked)
            {
                BaoCaoTheoQuy(txtYear.Text, txtQuarter.Text);
            }
            if (cbMonth.Checked)
            {
                BaoCaoTheoThang(txtYear.Text, txtMonth.Text);
            }
        }

        private void BaoCaoTheoThang(string year, string month)
        {
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                string query = "select * from viewBaoCao where year(ThoiGianNhanHang) = " + year
                    + " and month(ThoiGianNhanHang) = " + month 
                    + " order by ThoiGianNhanHang desc";
                cmd = new SqlCommand(query, cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();
                TenCot(dt);
                gvBaoCao.DataSource = dt;
                gvBaoCao.DataBind();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        private void BaoCaoTheoQuy(string year, string quarter)
        {
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                string query = null;
                if (quarter == "1")
                {
                    query = "select * from viewBaoCao where year(ThoiGianNhanHang) = " + year
                    + " and month(ThoiGianNhanHang) between " + 1 + " and " + 3
                    + " order by ThoiGianNhanHang desc";
                }
                else if (quarter == "2")
                {
                    query = "select * from viewBaoCao where year(ThoiGianNhanHang) = " + year
                    + " and month(ThoiGianNhanHang) between " + 4 + " and " + 6
                    + " order by ThoiGianNhanHang desc";
                }
                else if (quarter == "3")
                {
                    query = "select * from viewBaoCao where year(ThoiGianNhanHang) = " + year
                    + " and month(ThoiGianNhanHang) between " + 7 + " and " + 9
                    + " order by ThoiGianNhanHang desc";
                }
                else
                {
                    query = "select * from viewBaoCao where year(ThoiGianNhanHang) = " + year
                    + " and month(ThoiGianNhanHang) between " + 10 + " and " + 12
                    + " order by ThoiGianNhanHang desc";
                }
                cmd = new SqlCommand(query, cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();
                TenCot(dt);
                gvBaoCao.DataSource = dt;
                gvBaoCao.DataBind();
            }
            catch (Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        private void BaoCaoTheoNam(string year)
        {
            try
            {
                cnn = new SqlConnection(Session["admin"].ToString());
                cnn.Open();
                string query = "select * from viewBaoCao where year(ThoiGianNhanHang) = " + year 
                    + " order by ThoiGianNhanHang desc";
                cmd = new SqlCommand(query, cnn);
                da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                cnn.Close();
                TenCot(dt);
                gvBaoCao.DataSource = dt;
                gvBaoCao.DataBind();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
                return;
            }
        }

        private void TenCot(DataTable dt)
        {
            dt.Columns[00].ColumnName = "Mã đơn hàng";
            dt.Columns[01].ColumnName = "Nơi lấy hàng";
            dt.Columns[02].ColumnName = "Nơi giao hàng";
            dt.Columns[03].ColumnName = "Thời gian nhận hàng";
            dt.Columns[04].ColumnName = "Tổng khối lượng";
            dt.Columns[05].ColumnName = "Người liên hệ";
            dt.Columns[06].ColumnName = "SDT liên hệ";
            dt.Columns[07].ColumnName = "Thành tiền";
            dt.Columns[08].ColumnName = "Tên dịch vụ";
            dt.Columns[09].ColumnName = "Giá dịch vụ";
            dt.Columns[10].ColumnName = "Hàng";
            dt.Columns[11].ColumnName = "Kích thước";
            dt.Columns[12].ColumnName = "Khối lượng";
            dt.Columns[13].ColumnName = "Loại hàng";
            dt.Columns[14].ColumnName = "Chủ hàng";
            dt.Columns[15].ColumnName = "Địa chỉ chủ hàng";
            dt.Columns[16].ColumnName = "SDT chủ hàng";
            dt.Columns[17].ColumnName = "CMND chủ hàng";
            dt.Columns[18].ColumnName = "Loại chủ hàng";
            dt.Columns[19].ColumnName = "Xe";
            dt.Columns[20].ColumnName = "Biển số";
            dt.Columns[21].ColumnName = "Trọng tải";
            dt.Columns[22].ColumnName = "Kích thước thùng";
            dt.Columns[23].ColumnName = "Loại xe";
            dt.Columns[24].ColumnName = "Tài xế";
            dt.Columns[25].ColumnName = "Ngày sinh";
            dt.Columns[26].ColumnName = "SDT tài xế";
            dt.Columns[27].ColumnName = "Địa chỉ tài xế";
            dt.Columns[28].ColumnName = "CMND tài xế";
            dt.Columns[29].ColumnName = "Tỉnh";
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            //required to avoid the runtime error "  
            //Control 'GridView1' of type 'GridView' must be placed inside a form tag with runat=server."  
        }

        protected void btnExportExcel_Click(object sender, EventArgs e)
        {
            ExportToExcel();
        }

        private void ExportToExcel()
        {
            try
            {
                Response.Clear();
                Response.Buffer = true;
                Response.ClearContent();
                Response.ClearHeaders();
                Response.Charset = "";
                string FileName = "BaoCaoLogivan" + DateTime.Now + ".xls";
                StringWriter strwritter = new StringWriter();
                HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.ContentType = "application/vnd.ms-excel";
                Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
                gvBaoCao.GridLines = GridLines.Both;
                gvBaoCao.HeaderStyle.Font.Bold = true;
                gvBaoCao.RenderControl(htmltextwrtter);
                Response.Write(strwritter.ToString());
                Response.End();
            }
            catch(Exception ex)
            {
                Alert.Show(ex.Message);
            }
        }
    }
}