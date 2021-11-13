<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="admin-xe.aspx.cs" Inherits="LogiVan.admin_xe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .button{
            width:100%;
            margin-bottom:20px;
            margin-top:20px;
        }
        .table{
            width:100%;
        }
        .table th{
            width:15%;
            text-align:left;
        }
        .textbox{
            width:99%;
        }
        .dropdownlist{
            width:99%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging">
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
        <asp:Button ID="btnSelect" runat="server" Text="thêm dữ liệu" CssClass="button" OnClick="btnSelect_Click" />
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
            <asp:View ID="View1" runat="server">
                <table class="table">
                    <tr>
                        <th>Tên xe</th>
                        <td>
                            <asp:TextBox ID="inTen" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Biển số</th>
                        <td>
                            <asp:TextBox ID="inBienSo" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Trọng tải</th>
                        <td>
                            <asp:TextBox ID="inTrongTai" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Kích thước thùng</th>
                        <td>
                            <asp:TextBox ID="inKichThuoc" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Mã loại xe</th>
                        <td>
                            <asp:DropDownList ID="inMaLoaiXe" runat="server" CssClass="dropdownlist"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnInsert" runat="server" Text="thêm dữ liệu" CssClass="button" OnClick="btnInsert_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <table class="table">
                    <tr>
                        <th>Mã xe</th>
                        <td>
                            <asp:DropDownList ID="delMaXe" runat="server" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="delMaXe_SelectedIndexChanged"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th>Tên xe</th>
                        <td>
                            <asp:TextBox ID="delTenXe" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Biển số</th>
                        <td>
                            <asp:TextBox ID="delBienSo" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Trọng tải</th>
                        <td>
                            <asp:TextBox ID="delTrongTai" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Kích thước thùng</th>
                        <td>
                            <asp:TextBox ID="delKichThuoc" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Mã loại xe</th>
                        <td>
                            <asp:TextBox ID="delMaLoaiXe" runat="server" ReadOnly="true" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnDelete" runat="server" Text="xóa dữ liệu" CssClass="button" OnClick="btnDelete_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View3" runat="server">
                <table class="table">
                    <tr>
                        <th>Mã xe</th>
                        <td colspan="2">
                            <asp:DropDownList ID="upMaXe" runat="server" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="upMaXe_SelectedIndexChanged"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th>Tên xe</th>
                        <td colspan="2">
                            <asp:TextBox ID="upTenXe" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Biển số</th>
                        <td colspan="2">
                            <asp:TextBox ID="upBienSo" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Trọng tải</th>
                        <td colspan="2">
                            <asp:TextBox ID="upTrongTai" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Kích thước thùng</th>
                        <td colspan="2">
                            <asp:TextBox ID="upKichThuoc" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Mã loại xe</th>
                        <td>
                            <asp:TextBox ID="upMaLoai_old" runat="server" ReadOnly="true" CssClass="textbox"></asp:TextBox>
                        </td>
                        <td style="width:50%;">
                            <asp:CheckBox ID="cbMaLoai" runat="server" Text="cập nhật mã loại xe" />
                            <br />
                            <br />
                            <asp:DropDownList ID="upMaLoai_new" runat="server" CssClass="dropdownlist"></asp:DropDownList>
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
