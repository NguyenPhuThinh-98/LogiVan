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
        #tblInsert{
            width:100%;
            font-size:xx-large;
        }
        #tblInsert th{
            width:20%;
            text-align:left;
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
                        <th>Mã Đơn Hàng</th>
                        <td>
                            <asp:DropDownList ID="ddl_DonHang" runat="server" Width="50%" Font-Size="XX-Large"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th>Mã Hàng</th>
                        <td>
                            <asp:DropDownList ID="ddl_Hang" runat="server" Width="50%" Font-Size="XX-Large"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <th>Mã Dịch Vụ</th>
                        <td>
                            <asp:DropDownList ID="ddl_DichVu" runat="server" Width="50%" Font-Size="XX-Large"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnInsert" runat="server" Text="thêm dữ liệu" Width="100%" Font-Size="XX-Large" />
                        </td>
                    </tr>
                </table>
            </asp:View>

            <asp:View ID="ViewDelete" runat="server">

            </asp:View>

            <asp:View ID="ViewUpdate" runat="server">

            </asp:View>

        </asp:MultiView>
    </div>
</asp:Content>
