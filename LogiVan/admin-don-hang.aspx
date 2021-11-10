<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="admin-don-hang.aspx.cs" Inherits="LogiVan.admin_don_hang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #main{
            
        }
        .btn{
            width:100%;
            
            margin:20px 0 20px 0;
        }
        .tbl{
            width:100%;
            
        }
        .tbl th{
            width:30%;
            text-align:left;
        }
        .textbox{
            width:99%;
            
        }
        .ddlist{
            width:99%;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main">
        <asp:GridView ID="GridView1" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="true" Font-Size="Medium" OnPageIndexChanging="GridView1_PageIndexChanging">
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
    </div>
    <asp:Button ID="btnSelect" runat="server" Text="xem dữ liệu" CssClass="btn" OnClick="btnSelect_Click" />
    <table class="tbl">
        <tr>
            <td>
                <asp:Button ID="btnOpenViewInsert" runat="server" Text="view thêm dữ liệu" CssClass="btn" OnClick="btnOpenViewInsert_Click" />
            </td>
            <td>
                <asp:Button ID="btnOpenViewDelete" runat="server" Text="view xóa dữ liệu" CssClass="btn" OnClick="btnOpenViewDelete_Click" />
            </td>
            <td>
                <asp:Button ID="btnOpenViewUpdate" runat="server" Text="view cập nhật dữ liệu" CssClass="btn" OnClick="btnOpenViewUpdate_Click" />
            </td>
        </tr>
    </table>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="ViewInsert" runat="server">
            <table class="tbl">
                <tr>
                    <th>Địa chỉ lấy hàng</th>
                    <td>
                        <asp:TextBox ID="insert_DiaChiLayHang" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Địa chỉ giao hàng</th>
                    <td>
                        <asp:TextBox ID="insert_DiaChiGiaoHang" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Thời gian nhận hàng</th>
                    <td>
                        <asp:TextBox ID="insert_ThoiGianNhanHang" runat="server" CssClass="textbox" TextMode="DateTime"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Tổng khối lượng</th>
                    <td>
                        <asp:TextBox ID="insert_TongKhoiLuong" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Người liên hệ</th>
                    <td>
                        <asp:TextBox ID="insert_NguoiLienHe" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Số điện thoại liên hệ</th>
                    <td>
                        <asp:TextBox ID="insert_SDT" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Thành tiền</th>
                    <td>
                        <asp:TextBox ID="insert_ThanhTien" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Mã chủ hàng</th>
                    <td>
                        <asp:DropDownList ID="insert_MaChuHang" runat="server" CssClass="ddlist"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <th>Mã xe</th>
                    <td>
                        <asp:DropDownList ID="insert_MaXe" runat="server" CssClass="ddlist"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnInsert" runat="server" Text="thêm dữ liệu" CssClass="btn" OnClick="btnInsert_Click" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="ViewDelete" runat="server">
            <table class="tbl">
                <tr>
                    <th>Mã đơn hàng</th>
                    <td>
                        <asp:DropDownList ID="delete_MaDonHang" runat="server" CssClass="ddlist" AutoPostBack="True" OnSelectedIndexChanged="delete_MaDonHang_SelectedIndexChanged"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <th>Địa chỉ lấy hàng</th>
                    <td>
                        <asp:TextBox ID="delete_DiaChiLayHang" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Địa chỉ giao hàng</th>
                    <td>
                        <asp:TextBox ID="delete_DiaChiGiaoHang" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Thời gian nhận hàng</th>
                    <td>
                        <asp:TextBox ID="delete_ThoiGian" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Tổng khối lượng</th>
                    <td>
                        <asp:TextBox ID="delete_KhoiLuong" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Người liên hệ</th>
                    <td>
                        <asp:TextBox ID="delete_NguoiLienHe" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Số điện thoại liên hệ</th>
                    <td>
                        <asp:TextBox ID="delete_SDT" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Thành tiền</th>
                    <td>
                        <asp:TextBox ID="delete_ThanhTien" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Mã chủ hàng</th>
                    <td>
                        <asp:TextBox ID="delete_ChuHang" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Mã xe</th>
                    <td>
                        <asp:TextBox ID="delete_Xe" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnDelete" runat="server" Text="xóa dữ liệu" CssClass="btn" OnClick="btnDelete_Click" />
                    </td>
                </tr>
            </table>
        </asp:View>
        <asp:View ID="ViewUpdate" runat="server">
            <table class="tbl">
                <tr>
                    <th>Mã đơn hàng</th>
                    <td colspan="2">
                        <asp:DropDownList ID="updateMaDonHang" runat="server" CssClass="ddlist" AutoPostBack="True" OnSelectedIndexChanged="updateMaDonHang_SelectedIndexChanged"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <th>Địa chỉ lấy hàng mới</th>
                    <td>
                        <asp:TextBox ID="updateDiaChiLayHang_new" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Địa chỉ giao hàng mới</th>
                    <td>
                        <asp:TextBox ID="updateDiaChiGiaoHang_new" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Thời gian nhận hàng mới</th>
                    <td>
                        <asp:TextBox ID="updateThoiGian_new" runat="server" CssClass="textbox" TextMode="DateTime"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Tổng khối lượng mới</th>
                    <td>
                        <asp:TextBox ID="updateTongKhoiLuong_new" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Người liên hệ mới</th>
                    <td>
                        <asp:TextBox ID="updateNguoi_new" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Số điện thoại liên hệ mới</th>
                    <td>
                        <asp:TextBox ID="updateSDT_new" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Thành tiền mới</th>
                    <td>
                        <asp:TextBox ID="updateThanhTien_new" runat="server" CssClass="textbox"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <th>Mã chủ hàng mới</th>
                    <td>
                        <asp:TextBox ID="updateMaChuHang_old" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        <br />
                        <asp:DropDownList ID="updateMaChuHang_new" runat="server" CssClass="ddlist"></asp:DropDownList>
                        <br />
                        <asp:CheckBox ID="cbUpdateMaChuHang" runat="server" Text="cập nhật mã chủ hàng"/>
                    </td>
                </tr>
                <tr>
                    <th>Mã xe mới</th>
                    <td>
                        <asp:TextBox ID="updateMaXe_old" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        <br />
                        <asp:DropDownList ID="updateMaXe_new" runat="server" CssClass="ddlist"></asp:DropDownList>
                        <br />
                        <asp:CheckBox ID="cbUpdateMaXe" runat="server" Text="cập nhật mã xe"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Button ID="btnUpdate" runat="server" Text="cập nhật dữ liệu" CssClass="btn" OnClick="btnUpdate_Click" />
                    </td>
                </tr>
            </table>
        </asp:View>
    </asp:MultiView>
</asp:Content>
