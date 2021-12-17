<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="admin-menu.aspx.cs" Inherits="LogiVan_New.admin_menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #div_2 {
            padding-bottom: 10px;
        }
        .tbl{
            width:100%;
            margin-top:10px;
        }
        .tbl td{
            padding:10px;
        }
        .btn{
            width:99%;
            border: none;
            background-color: orange;
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table class="tbl">
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="chi tiết đơn hàng" CssClass="btn" PostBackUrl="~/admin-chi-tiet-don-hang.aspx" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="chi tiết loại tin tức" CssClass="btn" PostBackUrl="~/admin-chi-tiet-loai-tin-tuc.aspx" />
                </td>
                <td>
                    <asp:Button ID="Button4" runat="server" Text="chủ hàng" CssClass="btn" PostBackUrl="~/admin-chu-hang.aspx" />
                </td>
                <td>
                    <asp:Button ID="Button5" runat="server" Text="dịch vụ" CssClass="btn" PostBackUrl="~/admin-dich-vu.aspx" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button6" runat="server" Text="đơn hàng" CssClass="btn" PostBackUrl="~/admin-don-hang.aspx" />
                </td>
                <td>
                    <asp:Button ID="Button7" runat="server" Text="hàng hóa" CssClass="btn" PostBackUrl="~/admin-hang.aspx" />
                </td>
                <td>
                    <asp:Button ID="Button8" runat="server" Text="khuyến mãi" CssClass="btn" PostBackUrl="~/admin-khuyen-mai.aspx" />
                </td>
                <td>
                    <asp:Button ID="Button9" runat="server" Text="loại chủ hàng" CssClass="btn" PostBackUrl="~/admin-loai-chu-hang.aspx" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button10" runat="server" Text="loại hàng" CssClass="btn" PostBackUrl="~/admin-loai-hang.aspx" />
                </td>
                <td>
                    <asp:Button ID="Button11" runat="server" Text="loại tin tức" CssClass="btn" PostBackUrl="~/admin-loai-tin-tuc.aspx" />
                </td>
                <td>
                    <asp:Button ID="Button12" runat="server" Text="loại xe" CssClass="btn" PostBackUrl="~/admin-loai-xe.aspx" />
                </td>
                <td>
                    <asp:Button ID="Button13" runat="server" Text="tài xế" CssClass="btn" PostBackUrl="~/admin-tai-xe.aspx" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button14" runat="server" Text="tin tức" CssClass="btn" PostBackUrl="~/admin-tin-tuc.aspx" />
                </td>
                <td>
                    <asp:Button ID="Button15" runat="server" Text="xe" CssClass="btn" PostBackUrl="~/admin-xe.aspx" />
                </td>
            </tr>
        </table>
    </div>
    <div id="div_2">
        <asp:Button ID="Button2" runat="server" Text="Thống Kê Báo Cáo" Width="100%" Font-Size="X-Large" PostBackUrl="admin-thong-ke.aspx" BackColor="LightBlue" BorderStyle="None" />
    </div>
</asp:Content>
