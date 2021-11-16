<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="admin-chu-hang.aspx.cs" Inherits="LogiVan_New.admin_chu_hang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #tblViewControl{
            width:100%;
            margin-bottom:20px;
            margin-top:20px;
        }
        .btnSelect{
            margin-top:20px;
        }
        #tblInsert, #tblDelete, #tblUpdate{
            width:100%;
        }
        #tblInsert th, #tblDelete th, #tblUpdate th{
            width:10%;
            text-align:left;
            vertical-align:top;
        }
        .btn{
            margin-bottom:20px;
            margin-top:20px;
        }
        .col_25{
            width:25%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" Width="100%" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging">
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
        
        <asp:Button ID="btnSelect" runat="server" Text="xem dữ liệu" Width="100%" OnClick="btnSelect_Click" CssClass="btnSelect" Font-Size="XX-Large" />

        <table id="tblViewControl">
            <tr>
                <td>
                    <asp:Button ID="btnOpenViewInsert" runat="server" Text="view thêm dữ liệu" Width="100%" OnClick="btnOpenViewInsert_Click" Font-Size="XX-Large" />
                </td>
                <td>
                    <asp:Button ID="btnOpenViewDelete" runat="server" Text="view xóa dữ liệu" Width="100%" Font-Size="XX-Large" OnClick="btnOpenViewDelete_Click" />
                </td>
                <td>
                    <asp:Button ID="btnOpenViewUpdate" runat="server" Text="view cập nhật dữ liệu" Width="100%" Font-Size="XX-Large" OnClick="btnOpenViewUpdate_Click" />
                </td>
            </tr>
        </table>

        <asp:MultiView ID="MultiView1" runat="server">

            <asp:View ID="View1" runat="server">
                <table id="tblInsert">
                    <tr>
                        <th>Tên Chủ Hàng</th>
                        <td>
                            <asp:TextBox ID="txtTenChuHang_insert" runat="server" Width="99%"></asp:TextBox>
                            <br />
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="chưa nhập họ tên" ControlToValidate="txtTenChuHang_insert"></asp:RequiredFieldValidator>--%>
                        </td>
                    </tr>
                    <tr>
                        <th>Mã Loại</th>
                        <td>
                            <asp:DropDownList ID="ddlMaLoai_insert" runat="server" Width="99.6%"></asp:DropDownList>
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <th>Địa chỉ</th>
                        <td>
                            <asp:TextBox ID="txtDiaChi_insert" runat="server" Width="99%"></asp:TextBox>
                            <br />
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="chưa nhập địa chỉ" ControlToValidate="txtDiaChi_insert"></asp:RequiredFieldValidator>--%>
                        </td>
                    </tr>
                    <tr>
                        <th>Số điện thoại</th>
                        <td>
                            <asp:TextBox ID="txtSDT_insert" runat="server" Width="99%"></asp:TextBox>
                            <br />
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="chưa nhập số điện thoại" ControlToValidate="txtSDT_insert"></asp:RequiredFieldValidator>--%>
                        </td>
                    </tr>
                    <tr>
                        <th>CMND</th>
                        <td>
                            <asp:TextBox ID="txtCMND_insert" runat="server" Width="99%"></asp:TextBox>
                            <br />
                            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="chưa nhập CMND" ControlToValidate="txtCMND_insert"></asp:RequiredFieldValidator>--%>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnInsert" runat="server" Text="thêm dữ liệu" Width="100%" CssClass="btn" Font-Size="XX-Large" OnClick="btnInsert_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>

            <asp:View ID="View2" runat="server">
                <table id="tblDelete">
                    <tr>
                        <th>Mã Chủ Hàng</th>
                        <td>
                            <asp:DropDownList ID="ddlMaChuHang_delete" runat="server" AutoPostBack="True" Width="99.6%" OnSelectedIndexChanged="ddlMaChuHang_delete_SelectedIndexChanged"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th>Tên Chủ Hàng</th>
                        <td>
                            <asp:TextBox ID="txtTenChuHang_delete" runat="server" ReadOnly="true" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Mã Loại</th>
                        <td>
                            <asp:TextBox ID="txtMaLoai_delete" runat="server" ReadOnly="true" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Địa chỉ</th>
                        <td>
                            <asp:TextBox ID="txtDiaChi_delete" runat="server" ReadOnly="true" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Số điện thoại</th>
                        <td>
                            <asp:TextBox ID="txtSDT_delete" runat="server" ReadOnly="true" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>CMND</th>
                        <td>
                            <asp:TextBox ID="txtCMND_delete" runat="server" ReadOnly="true" Width="99%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnDelete" runat="server" Text="xóa dữ liệu" Width="100%" OnClick="btnDelete_Click" Font-Size="XX-Large" CssClass="btn" />
                        </td>
                    </tr>
                </table>
            </asp:View>

            <asp:View ID="View3" runat="server">
                <table id="tblUpdate">
                    <tr>
                        <th colspan="2">Mã Chủ Hàng</th>
                        <td colspan="2">
                            <asp:DropDownList ID="ddlMaChuHang_update" runat="server" AutoPostBack="True" Width="99.6%" OnSelectedIndexChanged="ddlMaChuHang_update_SelectedIndexChanged"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th class="col_25">Tên Chủ Hàng Cũ</th>
                        <td class="col_25">
                            <asp:TextBox ID="txtTenChuHang_update_old" runat="server" Width="99%" ReadOnly="true"></asp:TextBox>
                        </td>
                        <th class="col_25">Tên Chủ Hàng Mới</th>
                        <td class="col_25">
                            <asp:TextBox ID="txtTenChuHang_update_new" runat="server" Width="98%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th class="col_25">Mã Loại Cũ</th>
                        <td class="col_25">
                            <asp:TextBox ID="txtMaLoai_update_old" runat="server" Width="99%" ReadOnly="true"></asp:TextBox>
                        </td>
                        <th class="col_25">Mã Loại Mới</th>
                        <td class="col_25">
                            <asp:DropDownList ID="ddl_MaLoai_update_new" runat="server" Width="99.6%"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th class="col_25">Địa Chỉ Cũ</th>
                        <td class="col_25">
                            <asp:TextBox ID="txtDiaChi_update_old" runat="server" Width="99%" ReadOnly="true"></asp:TextBox>
                        </td>
                        <th class="col_25">Địa Chỉ Mới</th>
                        <td class="col_25">
                            <asp:TextBox ID="txtDiaChi_update_new" runat="server" Width="98%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th class="col_25">Số Điện Thoại Cũ</th>
                        <td class="col_25">
                            <asp:TextBox ID="txtSDT_update_old" runat="server" Width="99%" ReadOnly="true"></asp:TextBox>
                        </td>
                        <th class="col_25">Số Điện Thoại Mới</th>
                        <td class="col_25">
                            <asp:TextBox ID="txtSDT_update_new" runat="server" Width="98%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th class="col_25">CMND Cũ</th>
                        <td class="col_25">
                            <asp:TextBox ID="txtCMND_update_old" runat="server" Width="99%" ReadOnly="true"></asp:TextBox>
                        </td>
                        <th class="col_25">CMND Mới</th>
                        <td class="col_25">
                            <asp:TextBox ID="txtCMND_update_new" runat="server" Width="98%"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Button ID="btnUpdate" runat="server" Text="cập nhật dữ liệu" Width="100%" Font-Size="XX-Large" CssClass="btn" OnClick="btnUpdate_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>

        </asp:MultiView>
    </div>
</asp:Content>
