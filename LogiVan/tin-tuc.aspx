<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="tin-tuc.aspx.cs" Inherits="LogiVan.tin_tuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #tbl-main{
            width:100%;
        }
        .td{
            width:50%;
            vertical-align:top;
            text-align:left;
        }
        .td a{
            text-decoration:none;
            color:inherit;
        }
        .td a:hover{
            text-decoration:underline;
        }
        .auto-style1 {
            width: 100%;
        }
        #divider{
            border-bottom:1px solid gray;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main">
        <table id="tbl-main">
            <tr>
                <td class="td">
                    <asp:DataList ID="DataList1" runat="server" Width="99%" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# "data:image/jpg;base64,"+Convert.ToBase64String((byte[])Eval("AnhBia")) %>' />
                            <br />
                            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("TieuDe") %>' Font-Bold="True" href="#"></asp:HyperLink>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LogivanWebConnectionString %>" SelectCommand="SELECT TOP (1) AnhBia, TieuDe FROM TinTuc ORDER BY NgayTao DESC"></asp:SqlDataSource>
                </td>
                <td class="td">
                    <h3>TIN MỚI NHẤT</h3>
                    <asp:DataList ID="DataList2" runat="server" Width="99%" DataSourceID="SqlDataSource2">
                        <ItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td rowspan="2">
                                        <asp:Image ID="Image3" runat="server" Height="100px" ImageUrl='<%# "data:image/jpg;base64,"+Convert.ToBase64String((byte[])Eval("anhbia")) %>' Width="100px" />
                                    </td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink2" runat="server" Text='<%# Eval("tieude") %>' Font-Bold="true" href="#"></asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("tomtat") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LogivanWebConnectionString %>" SelectCommand="SELECT anhbia, tieude, substring(tomtat,0,72) AS tomtat FROM tintuc ORDER BY ngaytao DESC offset 1 rows FETCH next 3 rows only"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="td">
                    <p>
                        <strong>
                            TIN TỨC HOẠT ĐỘNG
                        </strong>
                        <a href="#" style="margin-left:50%; color:orange">Xem thêm ></a>
                    </p>
                    <div id="divider"></div>
                    <table>
                        <tr>
                            <td class="td">
                                <asp:DataList ID="DataList3" runat="server" Width="99%" DataKeyField="MaTinTuc" DataSourceID="SqlDataSource3">
                                    <ItemTemplate>
                                        <table class="auto-style1">
                                            <tr>
                                                <td>
                                                    <asp:Image ID="Image4" runat="server" ImageUrl='<%# "data:image/jpg;base64,"+Convert.ToBase64String((byte[])Eval("AnhBia")) %>' Height="200px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:HyperLink ID="HyperLink3" runat="server" Text='<%# Eval("TieuDe") %>' Font-Bold="true" href="#"></asp:HyperLink>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("NgayTao", "{0:d}") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("TomTat") %>' Style="text-align:justify;"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                        <br />
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:LogivanWebConnectionString %>" SelectCommand="SELECT TOP (1) tt.MaTinTuc, tt.AnhBia, tt.TieuDe, tt.TomTat, tt.NgayTao, ct.MaTinTuc AS Expr1, ct.MaLoai FROM TinTuc AS tt INNER JOIN ChiTietLoaiTinTuc AS ct ON tt.MaTinTuc = ct.MaTinTuc WHERE (ct.MaLoai = 1) ORDER BY tt.NgayTao DESC"></asp:SqlDataSource>
                            </td>
                            <td class="td">
                                <asp:DataList ID="DataList4" runat="server" Width="99%" DataSourceID="SqlDataSource4">
                                    <ItemTemplate>
                                        <table class="auto-style1">
                                            <tr>
                                                <td rowspan="2">
                                                    <asp:Image ID="Image5" runat="server" ImageUrl='<%# "data:image/jpg;base64,"+Convert.ToBase64String((byte[])Eval("AnhBia")) %>' Width="100px" Height="100px" />
                                                </td>
                                                <td>
                                                    <asp:HyperLink ID="HyperLink4" runat="server" Text='<%# Eval("TieuDe") %>' Font-Bold="true" href="#"></asp:HyperLink>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("TomTat") %>' style="text-align:justify;"></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                        <br />
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:LogivanWebConnectionString %>" SelectCommand="SELECT AnhBia, TieuDe, substring(TomTat,0,72) AS TomTat FROM TinTuc AS TT, ChiTietLoaiTinTuc AS CT WHERE TT.MaTinTuc = CT.MaTinTuc AND CT.MaLoai = 1 ORDER BY NgayTao DESC offset 1 rows FETCH next 3 rows only"></asp:SqlDataSource>
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="td">
                    <h3>TIN TỨC THỊ TRƯỜNG VẬN TẢI</h3>
                    <asp:DataList ID="DataList5" runat="server" Width="99%" DataSourceID="SqlDataSource5">
                        <ItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td rowspan="2">
                                        <asp:Image ID="Image6" runat="server" ImageUrl='<%# "data:image/jpg;base64,"+Convert.ToBase64String((byte[])Eval("AnhBia")) %>' Width="100px" Height="100px" />
                                    </td>
                                    <td>
                                        <asp:HyperLink ID="HyperLink5" runat="server" Text='<%# Eval("TieuDe") %>' Font-Bold="true" href="#"></asp:HyperLink>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("TomTat") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:LogivanWebConnectionString %>" SelectCommand="SELECT TOP (4) TT.AnhBia, TT.TieuDe, SUBSTRING(TT.TomTat, 0, 72) AS TomTat FROM TinTuc AS TT INNER JOIN ChiTietLoaiTinTuc AS CT ON TT.MaTinTuc = CT.MaTinTuc WHERE (CT.MaLoai = 2) ORDER BY TT.NgayTao DESC"></asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
