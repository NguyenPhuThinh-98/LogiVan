<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="ho-tro.aspx.cs" Inherits="LogiVan.ho_tro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #left {
            float: left;
            width: 15%;
            padding-left: 5%;
            padding-top: 50px;
        }

        #right {
            float: right;
            width: 80%;
        }

        #footer {
            clear: both;
        }

        #left h3 {
            border-bottom: 1px dashed gray;
            margin-bottom: 50px;
        }

        #left a {
            text-decoration: none;
            color: lightgray;
            margin-bottom: 50px;
        }

            #left a:hover {
                text-decoration: underline;
            }
            #right{
                padding-top:50px;
                text-align:center;
            }
            #right h1{
                text-align:center;
            }
            #search-box{
                width:80%;
                margin-left:10%;
                border:1px solid black;
            }
            .txtTimKiem{
                width:450px;
                border:none;
                color:lightgray;
                font-size:xx-large;
            }
            .txtTimKiem:focus{
                border:none;
            }
            .btnTimKiem{
                border:none;
                background-color:inherit;
                color:orange;
                font-weight:bold;
                border-left:1px solid black;
                font-size:xx-large;
            }
            #tbl-select{
                width:50%;
                margin-left:25%;
                font-weight:bold;
            }
            .hinh{
                border-radius:50%;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="left">
        <h3>THÔNG TIN</h3>
        <a href="dieu-khoan-su-dung.aspx">
            Điều khoản sử dụng
        </a>
        <br />
        <br />
        <a href="#">
            Quy tắc ứng xử
        </a>
        <br />
        <br />
        <a href="chinh-sach-bao-mat.aspx">
            Chính sách bảo mật
        </a>
        <br />
        <br />
        <a href="ho-tro.aspx" style="color:black; text-decoration:underline;">
            Những câu hỏi thường gặp
        </a>
    </div>
    <div id="right">
        <h1>Bạn có thắc mắc</h1>
        <table id="search-box">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/HinhAnh/HinhAnhHoTro/698627.png" />
                </td>
                <td>
                    <asp:TextBox ID="txtTimKiem" runat="server" Text="Nhập thông tin muốn tìm" CssClass="txtTimKiem"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnTimKiem" runat="server" Text="Tìm kiếm" CssClass="btnTimKiem" />
                </td>
            </tr>
        </table>
        <p>Hoặc bạn có thể chọn 1 trong những mục dưới đây để tìm kiếm câu trả lời cho mình nhanh hơn.</p>
        <table id="tbl-select">
            <tr>
                <td>
                    <asp:ImageButton ID="btnChuHang" runat="server" Height="100px" Width="100px" CssClass="hinh" ImageUrl="~/HinhAnh/HinhAnhChuHang/chu-hang-on.svg" OnClick="btnChuHang_Click" />
                    <br />
                    <asp:Label ID="lbChuHang" runat="server" Text="Bạn là chủ hàng" ForeColor="Blue"></asp:Label>
                </td>
                <td>
                    <asp:ImageButton ID="btnChuXe" runat="server" Height="100px" Width="100px" CssClass="hinh" ImageUrl="~/HinhAnh/HinhAnhChuHang/chu-xe-off.svg" OnClick="btnChuXe_Click" />
                    <br />
                    <asp:Label ID="lbChuXe" runat="server" Text="Bạn là chủ xe" ForeColor="lightgray"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="viewChuHang" runat="server">
                <h1>Bạn là chủ hàng</h1>
                <p>
                    LOGIVAN giải đáp mọi thắc mắc về dịch vụ và ứng dụng tìm xe tải vận 
                    <br />
                    chuyển dành riêng cho chủ hàng.
                </p>
            </asp:View>
            <asp:View ID="viewChuXe" runat="server">
                <h1>Bạn là chủ xe</h1>
                <p>
                    LOGIVAN giải đáp mọi thắc mắc về dịch vụ và ứng dụng tìm kiếm đơn
                    <br />
                    hàng cho chủ xe.
                </p>
            </asp:View>
        </asp:MultiView>
    </div>
    <div id="footer"></div>
</asp:Content>
