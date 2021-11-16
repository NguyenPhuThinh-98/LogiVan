<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="admin-chi-tiet-loai-tin-tuc.aspx.cs" Inherits="LogiVan_New.admin_chi_tiet_loai_tin_tuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #tblViewControl{
            width:100%;
            margin-top:20px;
            margin-bottom:20px;
        }
        #tblViewControl td{
            width:33%;
        }
        #tblInsert, #tblDelete, #tblUpdate{
            width:100%;
        }
        .col_50{
            width:50%;
        }
        .col_33{
            width:33%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" Width="100%" Font-Size="XX-Large" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging">
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
        <asp:Button ID="btnSelect" runat="server" Text="xem dữ liệu" Width="100%" Font-Size="XX-Large" OnClick="btnSelect_Click" />
        <br />
        <table id="tblViewControl">
            <tr>
                <td>
                    <asp:Button ID="btnViewInsert" runat="server" Text="view thêm dữ liệu" Width="100%" Font-Size="XX-Large" OnClick="btnViewInsert_Click" />
                </td>
                <td>
                    <asp:Button ID="btnViewDelete" runat="server" Text="view xóa dữ liệu" Width="100%" Font-Size="XX-Large" OnClick="btnViewDelete_Click" />
                </td>
                <td>
                    <asp:Button ID="btnViewUpdate" runat="server" Text="view cập nhật dữ liệu" Width="100%" Font-Size="XX-Large" OnClick="btnViewUpdate_Click" />
                </td>
            </tr>
        </table>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="ViewInsert" runat="server">
                <table id="tblInsert">
                    <tr>
                        <th class="col_50">Mã Tin Tức</th>
                        <th class="col_50">Mã Loại Tin Tức</th>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="ddlMaTinTuc_insert" runat="server" Width="99%" Font-Size="XX-Large"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlMaLoai_insert" runat="server" Width="99%" Font-Size="XX-Large"></asp:DropDownList>
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
                        <th class="col_50">Mã Tin Tức</th>
                        <th>Mã Loại Tin Tức</th>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="ddlMaTinTuc_delete" runat="server" Width="99%" Font-Size="XX-Large"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlMaLoai_delete" runat="server" Width="99%" Font-Size="XX-Large"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnDelete" runat="server" Text="xóa dữ liệu" Width="100%" Font-Size="XX-Large" OnClick="btnDelete_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>

            <asp:View ID="ViewUpdate" runat="server">
                <table id="tblUpdate">
                    <tr>
                        <th class="col_33">Mã Tin Tức</th>
                        <th>Mã Loại Tin Tức Cũ</th>
                        <th>Mã Loại Tin Tức Mới</th>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="ddlMaTinTuc_update" runat="server" Width="99%" Font-Size="XX-Large"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlMaLoai_update_old" runat="server" Width="99%" Font-Size="XX-Large"></asp:DropDownList>
                        </td>
                        <td>
                            <asp:DropDownList ID="ddlMaLoai_update_new" runat="server" Width="99%" Font-Size="XX-Large"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:Button ID="btnUpdate" runat="server" Text="cập nhật dữ liệu" Width="100%" Font-Size="XX-Large" OnClick="btnUpdate_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
