<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="admin-tai-xe.aspx.cs" Inherits="LogiVan_New.admin_tai_xe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .button {
            width: 100%;
            margin-bottom: 20px;
            margin-top: 20px;
        }

        .table {
            width: 100%;
        }

            .table th {
                width: 10%;
                text-align: left;
            }

        .textbox {
            width: 99%;
        }

        .dropdownlist {
            width: 99%;
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
        <asp:Button ID="btnSelect" runat="server" Text="xem dữ liệu" CssClass="button" OnClick="btnSelect_Click" />
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
            <asp:View ID="ViewIn" runat="server">
                <table class="table">
                    <tr>
                        <th>Tên tài xế</th>
                        <td>
                            <asp:TextBox ID="inTen" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Ngày sinh</th>
                        <td>
                            <asp:TextBox ID="inNgaySinh" runat="server" CssClass="textbox" TextMode="Date"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Số điện thoại</th>
                        <td>
                            <asp:TextBox ID="inSDT" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Địa chỉ</th>
                        <td>
                            <asp:TextBox ID="inDiaChi" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Số CMND</th>
                        <td>
                            <asp:TextBox ID="inCMND" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Tỉnh</th>
                        <td>
                            <asp:TextBox ID="inTinh" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Mã xe</th>
                        <td>
                            <asp:DropDownList ID="inMaXe" runat="server" CssClass="dropdownlist"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnInsert" runat="server" Text="thêm dữ liệu" CssClass="button" OnClick="btnInsert_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="ViewDe" runat="server">
                <table class="table">
                    <tr>
                        <th>Mã tài xế</th>
                        <td>
                            <asp:DropDownList ID="delMaTaiXe" runat="server" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="delMaTaiXe_SelectedIndexChanged"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th>Tên tài xế</th>
                        <td>
                            <asp:TextBox ID="delTenTaiXe" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Ngày sinh</th>
                        <td>
                            <asp:TextBox ID="delNgaySinh" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>SĐT</th>
                        <td>
                            <asp:TextBox ID="delSDT" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Địa chỉ</th>
                        <td>
                            <asp:TextBox ID="delDiaChi" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>CMND</th>
                        <td>
                            <asp:TextBox ID="delCMND" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Tỉnh</th>
                        <td>
                            <asp:TextBox ID="delTinh" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Mã xe</th>
                        <td>
                            <asp:TextBox ID="delMaXe" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnDelete" runat="server" Text="xóa dữ liệu" CssClass="button" OnClick="btnDelete_Click"/>
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="ViewUp" runat="server">
                <table class="table">
                    <tr>
                        <th>Mã tài xế</th>
                        <td colspan="2">
                            <asp:DropDownList ID="upMaTaiXe" runat="server" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="upMaTaiXe_SelectedIndexChanged"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th>Tên tài xế</th>
                        <td>
                            <asp:TextBox ID="upTenTaiXe_old" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="upTenTaiXe_new" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Ngày sinh</th>
                        <td>
                            <asp:TextBox ID="upNgaySinh_old" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="upNgaySinh_new" runat="server" CssClass="textbox" TextMode="Date"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>SĐT</th>
                        <td>
                            <asp:TextBox ID="upSDT_old" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="upSDT_new" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Địa chỉ</th>
                        <td>
                            <asp:TextBox ID="upDiaChi_old" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="upDiaChi_new" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>CMND</th>
                        <td>
                            <asp:TextBox ID="upCMND_old" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="upCMND_new" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Tỉnh</th>
                        <td>
                            <asp:TextBox ID="upTinh_old" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="upTinh_new" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Mã xe</th>
                        <td>
                            <asp:TextBox ID="upMaXe_old" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                        <td style="width:50%;">
                            <asp:CheckBox ID="cbUpdateMaXe" runat="server" Width="100%" Text="cập nhật mã xe"/>
                            <br />
                            <asp:DropDownList ID="upMaXe_new" runat="server" CssClass="dropdownlist"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Button ID="btnUpdate" runat="server" Text="cập nhật dữ liệu" CssClass="button" OnClick="btnUpdate_Click"/>
                        </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
