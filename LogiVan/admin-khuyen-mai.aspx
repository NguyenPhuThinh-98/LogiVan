<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="admin-khuyen-mai.aspx.cs" Inherits="LogiVan.admin_khuyen_mai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #main{
            width:100%;
        }
        .button{
            width:100%;
            margin-bottom:20px;
            margin-top:20px;
        }
        .table{
            width:100%;
        }
        .table th{
            width:20%;
            text-align:left;
        }
        .text{
            width:99%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main">
        <asp:GridView ID="GridView1" runat="server" Width="100%" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false" OnRowDataBound="GridView1_RowDataBound">
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
            <Columns>
                <asp:TemplateField HeaderText="Ảnh">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Width="200px" Height="100px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="TieuDe" HeaderText="Tiêu đề" />
                <asp:BoundField DataField="TomTat" HeaderText="Tóm tắt" />
                <asp:BoundField DataField="Ngaytao" HeaderText="Ngày tạo" />
            </Columns>
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
            <asp:View ID="ViewInsert" runat="server">
                <table class="table">
                    <tr>
                        <th>Hình ảnh</th>
                        <td>
                            <asp:FileUpload ID="insertAnh" runat="server" Width="100%" />
                        </td>
                    </tr>
                    <tr>
                        <th>Tiêu đề</th>
                        <td>
                            <asp:TextBox ID="insertTieuDe" runat="server" CssClass="text" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Tóm tắt</th>
                        <td>
                            <asp:TextBox ID="insertTomtat" runat="server" CssClass="text" TextMode="MultiLine" Height="100px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <th>Ngày tạo</th>
                        <td>
                            <asp:TextBox ID="insertNgayTao" runat="server" CssClass="text" TextMode="Date"></asp:TextBox>
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

            </asp:View>
            <asp:View ID="ViewUpdate" runat="server">

            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>
