<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="admin-thong-ke.aspx.cs" Inherits="LogiVan_New.admin_thong_ke" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #main table{
            width:100%;
            margin-bottom:25px;
            margin-top:25px;
        }
        .label{
            font-size:xx-large;
            color:blue;
        }
        .table{
            border-collapse: collapse;
        }
        .table td{
            border: 1px solid black;
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
                        <td>
                            Tổng số lượng đơn hàng : 
                            <asp:Label ID="lbChuHang_DonHang_Count" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Tổng số lượng đơn hàng ( cá nhân ) : 
                            <asp:Label ID="lbChuHang_DonHang_Count_CaNhan" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Tổng số lượng đơn hàng ( doanh nghiệp ) : 
                            <asp:Label ID="lbChuHang_DonHang_Count_DoanhNghiep" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Tổng thành tiền đơn hàng : 
                            <asp:Label ID="lbChuHang_DonHang_ThanhTien_Sum" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Tổng thành tiền đơn hàng ( cá nhân ) : 
                            <asp:Label ID="lbChuHang_DonHang_ThanhTien_Sum_CaNhan" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Tổng thành tiền đơn hàng ( doanh nghiệp ) : 
                            <asp:Label ID="lbChuHang_DonHang_ThanhTien_Sum_DoanhNghiep" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            Đơn hàng có thành tiền cao nhất ( cá nhân ) : 
                            <asp:Label ID="lbChuHang_DonHang_ThanhTien_Max_CaNhan" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Đơn hàng có thành tiền cao nhất ( doanh nghiệp ) : 
                            <asp:Label ID="lbChuHang_DonHang_ThanhTien_Max_DoanhNghiep" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            Đơn hàng có thành tiền thấp nhất ( cá nhân ) : 
                            <asp:Label ID="lbChuHang_DonHang_ThanhTien_Min_CaNhan" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Đơn hàng có thành tiền thấp nhất ( doanh nghiệp ) : 
                            <asp:Label ID="lbChuHang_DonHang_ThanhTien_Min_DoanhNghiep" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Tổng thành tiền dịch vụ : 
                            <asp:Label ID="lbChuHang_DichVu_ThanhTien_Sum" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Tổng thành tiền dịch vụ ( cá nhân ) : 
                            <asp:Label ID="lbChuHang_DichVu_ThanhTien_Sum_CaNhan" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Tổng thành tiền dịch vụ ( doanh nghiệp ) : 
                            <asp:Label ID="lbChuHang_DichVu_ThanhTien_Sum_DoanhNghiep" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            Dịch vụ sử dụng nhiều nhất ( cá nhân ) : 
                            <asp:Label ID="Label1" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Dịch vụ sử dụng nhiều nhất ( doanh nghiệp ) : 
                            <asp:Label ID="Label2" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            
                        </td>
                        <td>
                            Dịch vụ sử dụng ít nhất ( cá nhân ) : 
                            <asp:Label ID="Label3" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                        <td>
                            Dịch vụ sử dụng ít nhất ( doanh nghiệp ) : 
                            <asp:Label ID="Label4" runat="server" CssClass="label" Text="0"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="ViewBaoCao" runat="server">

            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
