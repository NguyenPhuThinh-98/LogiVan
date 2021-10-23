<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="chu-hang.aspx.cs" Inherits="LogiVan.chu_hang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #div-2 a {
            text-decoration: none;
        }

        #div-5 {
            margin-bottom: 50px;
        }

            #div-5 table td p {
                text-align: justify;
            }

            #div-5 table td {
                padding-right: 5%;
            }

        #div-6 {
            text-align: center;
            background-color: #1d60bf;
            background-image: url("/HinhAnh/HinhAnhChuHang/img10.png");
            background-repeat:no-repeat;
            background-size:cover;
            color: white;
            padding: 20px 0 20px 0;
            margin-bottom:0;
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
    <div style="text-align: center;">
        <video src="HinhAnh/HinhAnhChuHang/video-chu-hang.mp4" height="500" autoplay="autoplay" loop="loop" muted="muted"></video>
    </div>
    <div style="text-align:center; margin-top:50px;" id="div-2">
        <table style="width:50%; margin-left:25%;">
            <tr>
                <td>
                    <a href="chu-hang.aspx" style="color:orange;">
                        <asp:Image ID="Image1" runat="server" Width="100px" Height="100px" ImageUrl="~/HinhAnh/HinhAnhChuHang/chu-hang-on.svg" />
                        <h3>Bạn là chủ hàng</h3>
                    </a>
                </td>
                <td>
                    <a href="chu-xe.aspx" style="color: lightgray;">
                        <asp:Image ID="Image2" runat="server" Width="100px" Height="100px" ImageUrl="~/HinhAnh/HinhAnhChuHang/chu-xe-off.svg" />
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
                        LOGIVAN Chủ hàng
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
                                <asp:Image ID="Image4" runat="server" Width="150px" ImageUrl="~/HinhAnh/HinhAnhMasterPage/qrcode.png" />
                            </td>
                            <td>hoặc</td>
                            <td>
                                <a href="https://itunes.apple.com/us/app/logivan-ch%E1%BB%A7-h%C3%A0ng/id1386678770?mt=8">
                                    <asp:Image ID="Image5" runat="server" ImageUrl="~/HinhAnh/HinhAnhMasterPage/app_ios.png" />
                                </a>
                                <br />
                                <br />
                                <a href="https://play.google.com/store/apps/details?id=com.logivan.shipper">
                                    <asp:Image ID="Image6" runat="server" ImageUrl="~/HinhAnh/HinhAnhMasterPage/app_android.png" />
                                </a>
                            </td>
                        </tr>
                    </table>
                </td>
                <td>
                    <asp:Image ID="Image3" runat="server" width="550px" Height="600px" ImageUrl="~/HinhAnh/HinhAnhChuHang/Chu-Hang-Android.png" />
                </td>
            </tr>
        </table>
    </div>
    <div id="div-4" style="background-color: lightgray; padding:50px 0 50px 0;">
        <p style="text-align: center; color: orange; font-size: xx-large;">
            Những tính năng nổi bật của
            <br />
            LOGIVAN Chủ hàng
        </p>
        <table style="width: 100%; text-align: center;">
            <tr>
                <td>
                    <asp:Image ID="Image7" runat="server" Width="200px" Height="200px" Style="border-radius: 50%;" ImageUrl="~/HinhAnh/HinhAnhChuHang/chu-hang-theo-doi.png" />
                    <p>An toàn hàng hóa</p>
                </td>
                <td>
                    <asp:Image ID="Image8" runat="server" Width="200px" Height="200px" Style="border-radius: 50%;" ImageUrl="~/HinhAnh/HinhAnhChuHang/chu-hang-tim-gia-de.png" />
                    <p>Nhanh chóng và tiện lợi</p>
                </td>
                <td>
                    <asp:Image ID="Image9" runat="server" Width="200px" Height="200px" Style="border-radius: 50%;" ImageUrl="~/HinhAnh/HinhAnhChuHang/chu-hang-gia-minh-bach.png" />
                    <p>Tra giá nhanh</p>
                </td>
            </tr>
        </table>
    </div>
    <div id="div-5">
        <h3 style="text-align:center; font-size:xx-large;">Vì những chuyến hàng an toàn và <br /> nhanh chóng</h3>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:Image ID="Image10" runat="server" ImageUrl="~/HinhAnh/HinhAnhChuHang/IMG_0128.jpg" Width="525px" />
                </td>
                <td>
                    <h3>Xác định đúng tài xế và phương tiện</h3>
                    <p>Đảm bảo chính xác hàng hóa của bạn được vận chuyển bởi đúng tài xế và phương tiện phù hợp. Trước khi xếp hàng lên xe, hãy kiểm tra thông tin xe và chủ xe của bạn có khớp với thông tin hiển thị trên ứng dụng.</p>
                </td>
            </tr>
            <tr>
                <td>
                    <h3>Trao đổi với tài xế trước khi chuyển hàng</h3>
                    <p>Chia sẻ với tài xế về những yêu cầu đặc biệt khi vận chuyển hàng hóa. Đừng quên cung cấp các chứng từ đi đường cần thiết cho tài xế để đảm bảo đơn hàng được lưu thông đúng quy định.</p>
                </td>
                <td>
                    <asp:Image ID="Image11" runat="server" ImageUrl="~/HinhAnh/HinhAnhChuHang/HAQ_3577.jpg" Width="525px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image12" runat="server" ImageUrl="~/HinhAnh/HinhAnhChuHang/shutterstock_567105931_huge-2.jpg" Width="525px" />
                </td>
                <td>
                    <h3>Liên tục kiểm tra chuyến hàng của bạn</h3>
                    <p>Thông qua trang quản lý trực tuyến, hãy theo sát hành trình vận chuyển của tài xế và hàng hóa. Mọi thông tin sẽ được cập nhật thường xuyên theo thời gian thực, bạn sẽ an tâm hơn về chuyến hàng của mình.</p>
                </td>
            </tr>
            <tr>
                <td>
                    <h3>Xác nhận hàng đã được chuyển an toàn</h3>
                    <p>Trước khi thanh toán, hãy chắc chắn hàng hóa đã được vận chuyển an toàn đến đúng điểm giao hàng. Việc kiểm tra kỹ lưỡng và xác nhận với tài xế tình trạng đơn hàng sẽ là cơ sở quan trọng để giải quyết các vấn đề có thể nảy sinh sau này.</p>
                </td>
                <td>
                    <asp:Image ID="Image13" runat="server" ImageUrl="~/HinhAnh/HinhAnhChuHang/IMG_1350.jpg" Width="525px" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Image ID="Image14" runat="server" ImageUrl="~/HinhAnh/HinhAnhChuHang/IMG_0768.jpg" Width="525px" />
                </td>
                <td>
                    <h3>Đánh giá xếp hạng chủ xe</h3>
                    <p>Để lại đánh giá xếp hạng chủ xe sau mỗi chuyến hàng được thực hiện. Những góp ý phản hồi của bạn sẽ giúp LOGIVAN cải thiện và nâng cao dịch vụ vận tải, mang lại những trải nghiệm sử dụng tốt nhất cho khách hàng.</p>
                </td>
            </tr>
        </table>
    </div>
    <div id="div-6">
        <h1>
            Hàng hóa của bạn bị thất lạc hoặc
            <br />
            hư hỏng?
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
            dành riêng cho Chủ xe
        </h1>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Tìm hiểu thêm" BackColor="Orange" BorderStyle="None" ForeColor="White" Font-Size="Large" Height="50px" PostBackUrl="~/chu-xe.aspx" />
    </div>
</asp:Content>
