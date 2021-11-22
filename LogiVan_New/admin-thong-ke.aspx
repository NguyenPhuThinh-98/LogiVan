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
        .table td{
            width:33%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main">
        <table>
            <tr>
                <td>
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
                        <th colspan="3">Thống kê chủ hàng</th>
                    </tr>
                    <tr>
                        <td>
                            Tổng số lượng chủ hàng : 
                            <asp:Label ID="lbChuHang_Tong" runat="server" CssClass="label"></asp:Label>
                        </td>
                        <td>
                            Tổng số lượng chủ hàng ( doanh nghiệp ) : 
                            <asp:Label ID="lbChuHang_TongDoanhNghiep" runat="server" CssClass="label"></asp:Label>
                        </td>
                        <td>
                            Tổng số lượng chủ hàng ( cá nhân ) : 
                            <asp:Label ID="lbChuHang_TongCaNhan" runat="server" CssClass="label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Tổng số lượng đơn hàng : 
                            <asp:Label ID="lbChuHang_TongSoLuong_DonHang" runat="server" CssClass="label"></asp:Label>
                        </td>
                        <td>
                            Tổng số lượng đơn hàng ( doanh nghiệp ) : 
                            <asp:Label ID="lbChuHang_TongSoLuong_DonHang_DoanhNghiep" runat="server" CssClass="label"></asp:Label>
                        </td>
                        <td>
                            Tổng số lượng đơn hàng ( cá nhân ) : 
                            <asp:Label ID="lbChuHang_TongSoLuong_DonHang_CaNhan" runat="server" CssClass="label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Tổng giá trị đơn hàng : 
                            <asp:Label ID="lbChuHang_TongGiaTri_DonHang" runat="server" CssClass="label"></asp:Label>
                        </td>
                        <td>
                            Tổng giá trị đơn hàng ( doanh nghiệp ) : 
                            <asp:Label ID="lbChuHang_TongGiaTri_DonHang_DoanhNghiep" runat="server" CssClass="label"></asp:Label>
                        </td>
                        <td>
                            Tổng giá trị đơn hàng ( cá nhân ) : 
                            <asp:Label ID="lbChuHang_TongGiaTri_DonHang_CaNhan" runat="server" CssClass="label"></asp:Label>
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="ViewBaoCao" runat="server">

            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
