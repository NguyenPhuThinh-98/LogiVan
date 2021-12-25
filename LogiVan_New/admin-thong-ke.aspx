<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="admin-thong-ke.aspx.cs" Inherits="LogiVan_New.admin_thong_ke" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #main table{
            width:100%;
            margin-bottom:25px;
            margin-top:25px;
        }
        .label{
            color:blue;
        }
        .table{
            border-collapse: collapse;
        }
        .table td{
            border: 1px solid black;
            padding-bottom:5px;
            padding-top:5px;
        }
        .table th{
            padding-bottom:5px;
            padding-top:5px;
            text-align:left;
        }
        #tblBaoCao td{
            padding-top:10px;
        }
        .td{
            width:45%;
        }
        .ver-aln-top{
            vertical-align:top;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main">
        <table>
            <tr>
                <td style="width:50%;">
                    <asp:Button ID="btnThongKe" runat="server" Text="THỐNG KÊ" Width="100%" OnClick="btnThongKe_Click" />
                </td>
                <td>
                    <asp:Button ID="btnBaoCao" runat="server" Text="BÁO CÁO" Width="100%" OnClick="btnBaoCao_Click" />
                </td>
            </tr>
        </table>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="ViewThongKe" runat="server">
                <table class="table">
                    <tr>
                        <th colspan="3">
                            <h2>Thống kê chủ hàng</h2>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            Tổng số lượng chủ hàng : 
                            <asp:Label ID="lbChuHang_Count" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Tổng số lượng chủ hàng ( cá nhân ) : 
                            <asp:Label ID="lbChuHang_Count_CaNhan" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Tổng số lượng chủ hàng ( doanh nghiệp ) : 
                            <asp:Label ID="lbChuHang_Count_DoanhNghiep" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            Nơi nhiều chủ hàng nhất ( cá nhân ) :
                            <asp:Label ID="lbChuHang_DiaChi_Most_CaNhan" runat="server" Text="0" CssClass="label"></asp:Label>
                        </td>
                        <td>
                            Nơi nhiều chủ hàng nhất ( doanh nghiệp ) :
                            <asp:Label ID="lbChuHang_DiaChi_Most_DoanhNghiep" runat="server" Text="0" CssClass="label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            Nơi ít chủ hàng nhất ( cá nhân ) :
                            <asp:Label ID="lbChuHang_DiaChi_Least_CaNhan" runat="server" Text="0" CssClass="label"></asp:Label>
                        </td>
                        <td>
                            Nơi ít chủ hàng nhất ( doanh nghiệp ) :
                            <asp:Label ID="lbChuHang_DiaChi_Least_DoanhNghiep" runat="server" Text="0" CssClass="label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="3">
                            <h2>Thống kê chủ xe</h2>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            Tổng số chủ xe :
                            <asp:Label ID="lbChuXe_Count" runat="server" Text="0" CssClass="label"></asp:Label>
                        </td>
                        <td>
                            Nơi nhiều chủ xe nhất :
                            <asp:Label ID="lbChuXe_DiaChi_Most" runat="server" Text="0" CssClass="label"></asp:Label>
                        </td>
                        <td>
                            Nơi ít chủ xe nhất :
                            <asp:Label ID="lbChuXe_DiaChi_Least" runat="server" Text="0" CssClass="label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Tổng số xe :
                            <asp:Label ID="lbXe_Count" runat="server" Text="0" CssClass="label"></asp:Label>
                        </td>
                        <td>
                            Loại xe sử dụng nhiều nhất :
                            <asp:Label ID="lbXe_Loai_Most" runat="server" Text="0" CssClass="label"></asp:Label>
                        </td>
                        <td>
                            Loại xe sử dụng ít nhất :
                            <asp:Label ID="lbXe_Loai_Least" runat="server" Text="0" CssClass="label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="3">
                            <h2>Thống kê dịch vụ</h2>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            Tổng thành tiền dịch vụ : 
                            <asp:Label ID="lbDichVu_ThanhTien_Sum" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Tổng thành tiền dịch vụ ( cá nhân ) : 
                            <asp:Label ID="lbDichVu_ThanhTien_Sum_CaNhan" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Tổng thành tiền dịch vụ ( doanh nghiệp ) : 
                            <asp:Label ID="lbDichVu_ThanhTien_Sum_DoanhNghiep" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            Dịch vụ sử dụng nhiều nhất ( cá nhân ) : 
                            <asp:Label ID="lbDichVu_TenDV_MostUse_CaNhan" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Dịch vụ sử dụng nhiều nhất ( doanh nghiệp ) : 
                            <asp:Label ID="lbDichVu_TenDV_MostUse_DoanhNghiep" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            Dịch vụ sử dụng ít nhất ( cá nhân ) : 
                            <asp:Label ID="lbDichVu_TenDV_LeastUse_CaNhan" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Dịch vụ sử dụng ít nhất ( doanh nghiệp ) : 
                            <asp:Label ID="lbDichVu_TenDV_LeastUse_DoanhNghiep" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <th colspan="3">
                            <h2>Thống kê đơn hàng</h2>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            Tổng số lượng đơn hàng : 
                            <asp:Label ID="lbDonHang_Count" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Tổng số lượng đơn hàng ( cá nhân ) : 
                            <asp:Label ID="lbDonHang_Count_CaNhan" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Tổng số lượng đơn hàng ( doanh nghiệp ) : 
                            <asp:Label ID="lbDonHang_Count_DoanhNghiep" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Tổng thành tiền đơn hàng : 
                            <asp:Label ID="lbDonHang_ThanhTien_Sum" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Tổng thành tiền đơn hàng ( cá nhân ) : 
                            <asp:Label ID="lbDonHang_ThanhTien_Sum_CaNhan" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Tổng thành tiền đơn hàng ( doanh nghiệp ) : 
                            <asp:Label ID="lbDonHang_ThanhTien_Sum_DoanhNghiep" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            Đơn hàng có thành tiền cao nhất ( cá nhân ) : 
                            <asp:Label ID="lbDonHang_ThanhTien_Max_CaNhan" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Đơn hàng có thành tiền cao nhất ( doanh nghiệp ) : 
                            <asp:Label ID="lbDonHang_ThanhTien_Max_DoanhNghiep" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            Đơn hàng có thành tiền thấp nhất ( cá nhân ) : 
                            <asp:Label ID="lbDonHang_ThanhTien_Min_CaNhan" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Đơn hàng có thành tiền thấp nhất ( doanh nghiệp ) : 
                            <asp:Label ID="lbDonHang_ThanhTien_Min_DoanhNghiep" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            Nơi lấy hàng nhiều nhất ( cá nhân ) : 
                            <asp:Label ID="lbDonHang_LayHang_Most_CaNhan" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Nơi lấy hàng nhiều nhất ( doanh nghiệp ) : 
                            <asp:Label ID="lbDonHang_LayHang_Most_DoanhNghiep" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            Nơi lấy hàng ít nhất ( cá nhân ) : 
                            <asp:Label ID="lbDonHang_LayHang_Least_CaNhan" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Nơi lấy hàng ít nhất ( doanh nghiệp ) : 
                            <asp:Label ID="lbDonHang_LayHang_Least_DoanhNghiep" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            Nơi giao hàng nhiều nhất ( cá nhân ) : 
                            <asp:Label ID="lbDonHang_GiaoHang_Most_CaNhan" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Nơi giao hàng nhiều nhất ( doanh nghiệp ) : 
                            <asp:Label ID="lbDonHang_GiaoHang_Most_DoanhNghiep" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            Nơi giao hàng ít nhất ( cá nhân ) : 
                            <asp:Label ID="lbDonHang_GiaoHang_Least_CaNhan" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Nơi giao hàng ít nhất ( doanh nghiệp ) : 
                            <asp:Label ID="lbDonHang_GiaoHang_Least_DoanhNghiep" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="ViewBaoCao" runat="server">
                <table id="tblBaoCao">
                    <tr>
                        <th colspan="3">
                            <h2>Báo cáo</h2>
                        </th>
                    </tr>
                    <tr>
                        <td>Năm</td>
                        <td class="td">
                            <asp:TextBox ID="txtYear" runat="server" Width="99%" TextMode="Number"></asp:TextBox>
                        </td>
                        <td class="td">
                            <asp:Button ID="btnLastYear" runat="server" Text="-" Width="33%" OnClick="btnLastYear_Click" />
                            <asp:Button ID="btnNextYear" runat="server" Text="+" Width="33%" OnClick="btnNextYear_Click" />
                            <asp:Button ID="btnThisYear" runat="server" Text="năm hiện tại" Width="32%" OnClick="btnThisYear_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td class="ver-aln-top">Quý</td>
                        <td class="td">
                            <asp:TextBox ID="txtQuarter" runat="server" Width="99%" TextMode="Number"></asp:TextBox>
                            <br />
                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                ErrorMessage="hãy chọn quý hợp lệ" ControlToValidate="txtQuarter" 
                                MinimumValue="1" MaximumValue="4"></asp:RangeValidator>
                        </td>
                        <td class="td ver-aln-top">
                            <asp:CheckBox ID="cbQuarter" runat="server" Text="Quý" AutoPostBack="True" 
                                OnCheckedChanged="cbQuarter_CheckedChanged" />
                        </td>
                    </tr>
                    <tr>
                        <td class="ver-aln-top">Tháng</td>
                        <td class="td">
                            <asp:TextBox ID="txtMonth" runat="server" Width="99%" TextMode="Number"></asp:TextBox>
                            <br />
                            <asp:RangeValidator ID="RangeValidator2" runat="server" 
                                ErrorMessage="hãy chọn tháng hợp lệ" ControlToValidate="txtMonth" 
                                MinimumValue="1" MaximumValue="12"></asp:RangeValidator>
                        </td>
                        <td class="td ver-aln-top">
                            <asp:CheckBox ID="cbMonth" runat="server" Text="Tháng" AutoPostBack="true" 
                                OnCheckedChanged="cbMonth_CheckedChanged" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Button ID="btnXemBaoCao" runat="server" Text="Xem báo cáo" Width="100%" OnClick="btnXemBaoCao_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Panel ID="Panel1" runat="server" ScrollBars="Both" Height="500">
                                <asp:GridView ID="gvBaoCao" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="100%">
                                    <AlternatingRowStyle BackColor="White" />
                                    <EditRowStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>
                            </asp:Panel>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Button ID="btnExportExcel" runat="server" Text="Xuất báo cáo ra file Excel" Width="100%" OnClick="btnExportExcel_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
