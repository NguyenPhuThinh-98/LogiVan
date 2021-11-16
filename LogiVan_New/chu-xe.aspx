<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="chu-xe.aspx.cs" Inherits="LogiVan_New.chu_xe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #div-1 {
            text-align: center;
        }

        #div-2 a {
            text-decoration: none;
        }

        #div-5 table p {
            text-align: justify;
        }

        #div-5 table td {
            padding-right: 5%;
        }

        #div-6 {
            text-align: center;
            background-color: #1d60bf;
            background-image: url("/HinhAnh/HinhAnhChuXe/img10.png");
            background-repeat:no-repeat;
            background-size:cover;
            color: white;
            padding: 20px 0 20px 0;
            margin-bottom: 0;
        }

            #div-6 p {
                color: orange;
                font-size: xx-large;
            }

                #div-6 p span {
                    border-bottom: 1px dashed orange;
                }

        #div-7 {
            background-image: url(/HinhAnh/HinhAnhGioiThieu/cover.jpg);
            background-repeat: no-repeat;
            background-size: auto;
            text-align: center;
            color: white;
            padding: 20px 0 20px 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="div-1">
        <video src="HinhAnh/HinhAnhChuXe/chu-xe.mp4" autoplay="autoplay" loop="loop" muted="muted" height="500"></video>
    </div>
    <div style="text-align:center; margin-top:50px;" id="div-2">
        <table style="width:50%; margin-left:25%;">
            <tr>
                <td>
                    <a href="chu-hang.aspx" style="color:lightgray;">
                        <asp:Image ID="Image1" runat="server" Width="100px" Height="100px" ImageUrl="~/HinhAnh/HinhAnhChuXe/chu-hang-off.svg" />
                        <h3>Bạn là chủ hàng</h3>
                    </a>
                </td>
                <td>
                    <a href="chu-xe.aspx" style="color: orange;">
                        <asp:Image ID="Image2" runat="server" Width="100px" Height="100px" ImageUrl="~/HinhAnh/HinhAnhChuXe/chu-xe-on.svg" />
                        <h3>Bạn là chủ xe</h3>
                    </a>
                </td>
            </tr>
        </table>
    </div>
    <div id="div-3">
        <table style="width:100%;">
            <tr>
                <td style="width:50%; padding-left:50px; padding-right:50px; vertical-align:top;">
                    <h1 style="text-align:center;">
                        Ứng dụng
                        <br />
                        LOGIVAN Chủ xe
                    </h1>
                    <p>
                        Giải pháp công nghệ giúp kết nối trực tiếp các doanh nghiệp với mạng lưới đối tác vận tải trên toàn quốc.
                        <br />
                         LOGIVAN luôn sẵn sàng đáp ứng mọi nhu cầu vận chuyển hàng, hỗ trợ tìm kiếm và quản lý xe tải chở hàng với độ tin cậy và chất lượng cao nhất.
                    </p>
                    <table style="width:100%;">
                        <tr>
                            <td>Quét mã QR</td>
                            <td></td>
                            <td>Tải trên thiết bị di động</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image4" runat="server" Width="150px" ImageUrl="~/HinhAnh/HinhAnhChuXe/qr-chu-xe.png" />
                            </td>
                            <td>hoặc</td>
                            <td>
                                <a href="https://apps.apple.com/us/app/logivan/id1333598414?ign-mpt=uo%3D4">
                                    <asp:Image ID="Image5" runat="server" ImageUrl="~/HinhAnh/HinhAnhMasterPage/app_ios.png" />
                                </a>
                                <br />
                                <br />
                                <a href="https://play.google.com/store/apps/details?id=com.logivan&hl=vi">
                                    <asp:Image ID="Image6" runat="server" ImageUrl="~/HinhAnh/HinhAnhMasterPage/app_android.png" />
                                </a>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <asp:Image ID="Image3" runat="server" width="550px" Height="600px" ImageUrl="~/HinhAnh/HinhAnhChuXe/Chu-Xe-Android.png" />
                </td>
            </tr>
        </table>
    </div>
    <div id="div-4" style="background-color: lightgray; padding: 50px 0 50px 0;">
        <p style="text-align: center; color: blue; font-size: xx-large;">
            Tính năng nổi bật
        </p>
        <table style="width: 100%; text-align: center;">
            <tr>
                <td>
                    <asp:Image ID="Image7" runat="server" Width="200px" Height="200px" Style="border-radius: 50%;" ImageUrl="~/HinhAnh/HinhAnhChuXe/chu-xe-can-la-co-don.png" />
                    <p>Yêu cầu là có đơn</p>
                </td>
                <td>
                    <asp:Image ID="Image8" runat="server" Width="200px" Height="200px" Style="border-radius: 50%;" ImageUrl="~/HinhAnh/HinhAnhChuXe/chu-xe-thoai-mai-chon-lua.png" />
                    <p>Thoải mái chọn chuyến hàng</p>
                </td>
                <td>
                    <asp:Image ID="Image9" runat="server" Width="200px" Height="200px" Style="border-radius: 50%;" ImageUrl="~/HinhAnh/HinhAnhChuXe/chu-xe-tang-thu-nhap.png" />
                    <p>Tăng 30% thu nhập</p>
                </td>
            </tr>
        </table>
    </div>
    <div id="div-5">
        <h3 style="text-align:center; font-size:xx-large;">Vì những chuyến hàng an toàn và <br /> nhanh chóng</h3>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Image ID="Image10" runat="server" ImageUrl="~/HinhAnh/HinhAnhChuXe/1-1-1.jpg" Width="525px" />
                </td>
                <td>
                    <h3>Xác định đúng hàng và chủ hàng</h3>
                    <p>Đảm bảo chính xác thông tin người giao – nhận hàng và loại hàng cần vận chuyển. Đừng quên kiếm tra số lượng và chất lượng hàng hóa trước khi xếp lên xe có khớp với các thông tin đơn hàng đã nhận.</p>
                </td>
            </tr>
            <tr>
                <td>
                    <h3>Trao đổi với chủ hàng trước khi chuyển hàng</h3>
                    <p>Hãy thảo luận kỹ với chủ hàng về những lưu ý đặc biệt khi vận chuyển hàng hóa. Nhận đầy đủ các chứng từ đi đường cần thiết theo quy định lưu thông hàng hóa bằng đường bộ.</p>
                </td>
                <td>
                    <asp:Image ID="Image11" runat="server" ImageUrl="~/HinhAnh/HinhAnhChuXe/IMG_0053-1.jpg" Width="525px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image12" runat="server" ImageUrl="~/HinhAnh/HinhAnhChuXe/IMG_1353.jpg" Width="525px" />
                </td>
                <td>
                    <h3>Chu đáo và tận tình</h3>
                    <p>Luôn giữ thái độ vui vẻ và nếu có thể, hãy giúp đỡ chủ hàng khi cần bốc xếp hàng hóa lên xuống xe. Những ấn tượng tốt sẽ giúp cho chuyến hàng trở nên thoải mái và bạn sẽ xây dựng được mối quan hệ hợp tác gắn kết trong tương lai.</p>
                </td>
            </tr>
        </table>
    </div>
    <div id="div-6">
        <h1>
            Thất lạc, hư hỏng hàng hóa?
        </h1>
        <h3>Liên lạc ngay với LOGIVAN để được hỗ trợ</h3>
        <p>
            Hotline:
            <span>0333 131618</span>
        </p>
    </div>
    <div id="div-7">
        <h1>
            Ứng dụng LOGIVAN
            <br />
            dành riêng cho Chủ hàng
        </h1>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Tìm hiểu thêm" BackColor="Orange" BorderStyle="None" ForeColor="White" Font-Size="Large" Height="50px" PostBackUrl="~/chu-hang.aspx" />
    </div>
</asp:Content>
