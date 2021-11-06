<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="admin-hang.aspx.cs" Inherits="LogiVan.admin_hang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .button {
            margin-bottom: 20px;
            margin-top: 20px;
            width: 100%;
        }

        .table {
            width: 100%;
        }

            .table th {
                text-align: left;
                width: 15%;
            }

        .dropdownlist {
            width: 99%;
        }

        .textbox {
            width: 99%;
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

        <asp:Button ID="btnSelect" runat="server" Text="xem dữ liệu" Width="100%" CssClass="button" OnClick="btnSelect_Click" />

        <table class="table">
            <tr>
                <td>
                    <asp:Button ID="btnViewInsert" runat="server" Text="view thêm dữ liệu" CssClass="button" OnClick="btnViewInsert_Click" />
                </td>
                <td>
                    <asp:Button ID="btnViewDelete" runat="server" Text="view xóa dữ liệu" CssClass="button" OnClick="btnViewDelete_Click" />
                </td>
                <td>
                    <asp:Button ID="btnViewUpdate" runat="server" Text="view cập nhật dữ liệu" CssClass="button" OnClick="btnViewUpdate_Click" />
                </td>
            </tr>
        </table>

        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="ViewInsert" runat="server">
                <table class="table">
                    <tr>
                        <th>Tên hàng</th>
                        <td>
                            <asp:TextBox ID="insertTenHang" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Kích thước</th>
                        <td>
                            <asp:TextBox ID="insertKichThuoc" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Khối lượng</th>
                        <td>
                            <asp:TextBox ID="insertKhoiLuong" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Mã loại hàng</th>
                        <td>
                            <asp:DropDownList ID="insertMaLoaiHang" runat="server" CssClass="dropdownlist"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnInsert" runat="server" Text="thêm dữ liệu" CssClass="button" OnClick="btnInsert_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="ViewDelete" runat="server">
                <table class="table">
                    <tr>
                        <th>Mã hàng</th>
                        <td>
                            <asp:DropDownList ID="delMaHang" runat="server" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="delMaHang_SelectedIndexChanged"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th>Tên hàng</th>
                        <td>
                            <asp:TextBox ID="delTenHang" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Kích thước</th>
                        <td>
                            <asp:TextBox ID="delKichThuoc" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Khối lượng</th>
                        <td>
                            <asp:TextBox ID="delKhoiLuong" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Mã loại hàng</th>
                        <td>
                            <asp:TextBox ID="delMaLoaiHang" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnDelete" runat="server" Text="xóa dữ liệu" CssClass="button" OnClick="btnDelete_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="ViewUpdate" runat="server">
                <table class="table">
                    <tr>
                        <th>Mã hàng</th>
                        <td colspan="3">
                            <asp:DropDownList ID="updateMaHang" runat="server" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="updateMaHang_SelectedIndexChanged"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th>Tên hàng</th>
                        <td colspan="3">
                            <asp:TextBox ID="updateTenHang" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Kích thước</th>
                        <td colspan="3">
                            <asp:TextBox ID="updateKichThuoc" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Khối lượng</th>
                        <td colspan="3">
                            <asp:TextBox ID="updateKhoiLuong" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Mã loại hàng</th>
                        <td>
                            <asp:TextBox ID="updateMaLoaiHang_old" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                        <td style="width:15%">
                            <asp:CheckBox ID="cbUpdateMaLoaiHang" runat="server" Text="cập nhật mã loại hàng" />
                        </td>
                        <td>
                            <asp:DropDownList ID="updateMaLoaiHang_new" runat="server" CssClass="dropdownlist"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Button ID="btnUpdate" runat="server" Text="cập nhật dữ liệu" CssClass="button" OnClick="btnUpdate_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
