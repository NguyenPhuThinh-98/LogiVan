<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="admin-chi-tiet-don-hang.aspx.cs" Inherits="LogiVan.admin_chi_tiet_don_hang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #tblViewControl{
            width:100%;
            margin-top:20px;
            margin-bottom:20px;
        }
        #tblViewControl td{
            text-align:center;
        }
        #tblInsert, #tblDelete, #tblUpdate{
            width:100%;
        }
        #tblInsert th{
            width:20%;
            text-align:left;
        }
        .col_1, .col_2, .col_3{
            width:33%;
        }
        .col_b1, .col_b2, .col_b3, .col_b4{
            width:25%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main">
        <asp:GridView ID="GridView1" runat="server" Width="100%" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
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
        <br />
        <asp:Button ID="btnSelect" runat="server" Text="xem dữ liệu" Width="100%" OnClick="btnSelect_Click" Font-Size="XX-Large" />
        <br />
        <table id="tblViewControl">
            <tr>
                <td>
                    <asp:Button ID="btnOpenViewInsert" runat="server" Text="mở view thêm dữ liệu" Width="100%" Font-Size="X-Large" OnClick="btnOpenViewInsert_Click" />
                </td>
                <td>
                    <asp:Button ID="btnOpenViewDelete" runat="server" Text="mở view xóa dữ liệu" Width="100%" Font-Size="X-Large" OnClick="btnOpenViewDelete_Click" />
                </td>
                <td>
                    <asp:Button ID="btnOpenViewUpdate" runat="server" Text="mở view cập nhật dữ liệu" Width="100%" Font-Size="X-Large" OnClick="btnOpenViewUpdate_Click" />
                </td>
            </tr>
        </table>
        <asp:MultiView ID="MultiView1" runat="server">

            <asp:View ID="ViewInsert" runat="server">
                <table id="tblInsert">
                    <tr>
                        <th>Mã Đơn Hàng - Chủ Hàng - Xe</th>
                        <td>
                            <asp:DropDownList ID="ddl_MaDonHang_insert" runat="server" Width="70%" Font-Size="XX-Large"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th>Mã Hàng</th>
                        <td>
                            <asp:DropDownList ID="ddl_MaHang_insert" runat="server" Width="70%" Font-Size="XX-Large"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th>Mã Dịch Vụ</th>
                        <td>
                            <asp:DropDownList ID="ddl_MaDichVu_insert" runat="server" Width="70%" Font-Size="XX-Large"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnInsert" runat="server" Text="thêm dữ liệu" Width="100%" Font-Size="XX-Large" OnClick="btnInsert_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>

            <asp:View ID="ViewDelete" runat="server">
                <table id="tblDelete">
                    <tr>
                        <th class="col_1">Mã Đơn Hàng - Chủ Hàng - Xe</th>
                        <th class="col_2">Mã Hàng</th>
                        <th class="col_3">Mã Dịch Vụ</th>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="ddl_MaDonHang_delete" runat="server" Width="99%" Font-Size="XX-Large"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddl_MaHang_delete" runat="server" Width="99%" Font-Size="XX-Large"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddl_MaDichVu_delete" runat="server" Width="99%" Font-Size="XX-Large"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Button ID="btnDelete" runat="server" Text="xóa dữ liệu" Width="100%" Font-Size="XX-Large" OnClick="btnDelete_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>

            <asp:View ID="ViewUpdate" runat="server">
                <table id="tblUpdate">
                    <tr>
                        <th class="col_b1">Đơn Hàng - Chủ Hàng - Xe</th>
                        <th class="col_b2">Hàng</th>
                        <th class="col_b3">Dịch Vụ Cũ</th>
                        <th class="col_b4">Dịch Vụ Mới</th>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="ddl_MaDonHang_update" runat="server" Width="99%" Font-Size="XX-Large"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddl_MaHang_update" runat="server" Width="99%" Font-Size="XX-Large"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddl_MaDichVu_update_old" runat="server" Width="99%" Font-Size="XX-Large"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddl_MaDichVu_update_new" runat="server" Width="99%" Font-Size="XX-Large"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Button ID="btnUpdate" runat="server" Text="cập nhật dữ liệu" Width="100%" Font-Size="XX-Large" OnClick="btnUpdate_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>

        </asp:MultiView>
    </div>
</asp:Content>
