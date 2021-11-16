<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="admin-dich-vu.aspx.cs" Inherits="LogiVan_New.admin_dich_vu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #main {
            
        }

        .btn {
            
            margin-bottom: 20px;
            margin-top: 20px;
            width: 100%;
        }

        .tbl {
            width: 100%;
        }

            .tbl th {
                width: 20%;
                text-align:left;
            }

        .txt {
            
            width: 98%;
        }

        .ddl {
            width: 99%;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main">
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
        <asp:Button ID="btnSelect" runat="server" Text="xem dữ liệu" Width="100%" CssClass="btn" OnClick="btnSelect_Click" />
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
                        <th>Tên Dịch Vụ</th>
                        <td>
                            <asp:TextBox ID="txtTenDV_insert" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Giá Dịch Vụ</th>
                        <td>
                            <asp:TextBox ID="txtGiaDV_insert" runat="server" CssClass="txt" TextMode="Number"></asp:TextBox>
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
                        <th>Mã Dịch Vụ</th>
                        <td>
                            <asp:DropDownList ID="ddlMaDV_delete" runat="server" CssClass="ddl" AutoPostBack="True" OnSelectedIndexChanged="ddlMaDV_delete_SelectedIndexChanged"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th>Tên Dịch Vụ</th>
                        <td>
                            <asp:TextBox ID="txtTenDV_delete" runat="server" CssClass="txt" ReadOnly="true"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Giá Dịch Vụ</th>
                        <td>
                            <asp:TextBox ID="txtGiaDV_delete" runat="server" CssClass="txt" ReadOnly="true"></asp:TextBox>
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
                        <th>Mã Dịch Vụ</th>
                        <td colspan="3">
                            <asp:DropDownList ID="ddlMaDV_update" runat="server" CssClass="ddl" AutoPostBack="True" OnSelectedIndexChanged="ddlMaDV_update_SelectedIndexChanged"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th>Tên Cũ</th>
                        <td>
                            <asp:TextBox ID="txtTenDV_update_old" runat="server" CssClass="txt" ReadOnly="true"></asp:TextBox>
                        </td>
                        <th>Tên Mới</th>
                        <td>
                            <asp:TextBox ID="txtTenDV_update_new" runat="server" CssClass="txt"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Giá Cũ</th>
                        <td>
                            <asp:TextBox ID="txtGiaDV_update_old" runat="server" CssClass="txt" ReadOnly="true"></asp:TextBox>
                        </td>
                        <th>Giá Mới</th>
                        <td>
                            <asp:TextBox ID="txtGiaDV_update_new" runat="server" CssClass="txt" TextMode="Number"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="4">
                            <asp:Button ID="btnUpdate" runat="server" Text="cập nhật dữ liệu" CssClass="btn" OnClick="btnUpdate_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
