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
            .btnCauHoi{
                border:none;
                background-color: inherit;
                text-align:left;
                width:100%;
                font-size:large;
                border-bottom:1px solid black;
            }
            .CauTraLoi{
                text-align:justify;
                display: none;
                border-bottom:1px solid black;
            }
            .CauTraLoi a{
                text-decoration:none;
                color:orange;
            }
            #GiaiDapThacMacChuHang, #GiaiDapThacMacChuXe{
                width:80%;
                margin-left:10%;
                font-size:large;
            }
            #contact{
                clear:both;
                background-image:url(HinhAnh/HinhAnhHoTro/img1.jpg);
                background-repeat:no-repeat;
                text-align:center;
                padding-top:25px;
                padding-bottom:25px;
            }
            #contact ul{
                list-style:none;
            }
            #contact li{
                text-align:left;
                margin-left:45%;
                margin-top:20px;
            }
            #contact a{
                text-decoration:none;
                color:black;
            }
            #contact a:hover{
                text-decoration:underline;
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
                <div id="GiaiDapThacMacChuHang" style="text-align: left;">
                    <h5>
                        <asp:Button ID="btnCauHoiChuHang_1" runat="server" Text="LOGIVAN hoạt động như thế nào?" CssClass="btnCauHoi" OnClick="btnCauHoiChuHang_1_Click" />
                    </h5>
                    <div class="CauTraLoi" id="CauTraLoi_1" runat="server">
                        <p>
                            LOGIVAN là nền tảng công nghệ kết nối trực tiếp chủ hàng và chủ xe, giúp các doanh nghiệp tối ưu chi phí và thời gian cho dịch vụ Logistics.
                        <br />
                            Bấm vào <a href="chu-hang.aspx">đây</a> để xem chi tiết
                        </p>
                    </div>
                    <h5>
                        <asp:Button ID="btnCauHoiChuHang_2" runat="server" Text="Làm thế nào để đăng ký tài khoản tìm xe cho doanh nghiệp?" CssClass="btnCauHoi" OnClick="btnCauHoiChuHang_2_Click" />
                    </h5>
                    <div class="CauTraLoi" id="CauTraLoi_2" runat="server">
                        <p>
                            Đăng ký tài khoản để bắt đầu tìm xe tải chở hàng
                        </p>
                        <p>
                            Truy cập: <a href="#">web chủ hàng</a> hoặc tải <a href="https://play.google.com/store/apps/details?id=com.logivan.shipper">app chủ hàng</a>
                            <br />
                            Làm theo hướng dẫn để tạo tài khoản và đăng nhập với LOGIVAN.
                        </p>
                    </div>
                    <h5>
                        <asp:Button ID="btnCauHoiChuHang_3" runat="server" Text="LOGIVAN có thu phí gì không?" CssClass="btnCauHoi" OnClick="btnCauHoiChuHang_3_Click" />
                    </h5>
                    <div class="CauTraLoi" id="CauTraLoi_3" runat="server">
                        <p>
                            Sử dụng LOGIVAN là hoàn toàn miễn phí cho cả chủ hàng và chủ xe.
                        </p>
                    </div>
                    <h5>
                        <asp:Button ID="btnCauHoiChuHang_4" runat="server" Text="LOGIVAN hỗ trợ tìm những loại xe nào?" CssClass="btnCauHoi" OnClick="btnCauHoiChuHang_4_Click" />
                    </h5>
                    <div class="CauTraLoi" id="CauTraLoi_4" runat="server">
                        <p>
                            Mạng lưới đối tác vận tải của chúng tôi hiện có nhiều loại xe, tải trọng từ 1,25 – 30 tấn, như: xe tải thùng kín, xe tải thùng mui bạt, xe container, xe tải đông lạnh, xe tải chuyên dụng, xe siêu trường, siêu trọng, v.v...
                        </p>
                        <p>
                            Nhập điểm lấy hàng và dỡ hàng, chọn loại xe, và điền đầy đủ thông tin về hàng hoá để nhận ước tính cước phí của LOGIVAN.
                        </p>
                    </div>
                    <h5>
                        <asp:Button ID="btnCauHoiChuHang_5" runat="server" Text="LOGIVAN hoạt động vào thời gian và tuyến đường nào?" CssClass="btnCauHoi" OnClick="btnCauHoiChuHang_5_Click" />
                    </h5>
                    <div class="CauTraLoi" id="CauTraLoi_5" runat="server">
                        <p>
                            LOGIVAN đã có hệ thống tài xế xe tải vận chuyển hàng hóa các tuyến nội tỉnh, liên tỉnh và Bắc - Nam. Với tài khoản LOGIVAN, bạn có thể yêu cầu tìm xe ở bất kỳ thành phố nào có LOGIVAN hoạt động, 24 giờ một ngày, 7 ngày một tuần.
                        </p>
                    </div>
                    <h5>
                        <asp:Button ID="btnCauHoiChuHang_6" runat="server" Text="Sử dụng LOGIVAN thanh toán như thế nào?" CssClass="btnCauHoi" OnClick="btnCauHoiChuHang_6_Click" />
                    </h5>
                    <div class="CauTraLoi" id="CauTraLoi_6" runat="server">
                        <p>
                            Có 2 cách để thực hiện thanh toán cho dịch vụ đặt xe tải chở hàng:
                            <br />
                            Cách 1: Thực hiện thanh toán qua ứng dụng LOGIVAN - Chủ hàng, bạn sẽ nhận được giá cước vận chuyển tốt nhất và hoàn toàn an tâm về độ minh bạch tài chính.
                            <br />
                            Cách 2: Bạn sẽ trao đổi và chốt đơn trực tiếp với chủ xe, LOGIVAN không thực hiện thu và trả phí trung gian.
                        </p>
                    </div>
                </div>
            </asp:View>
            <asp:View ID="viewChuXe" runat="server">
                <h1>Bạn là chủ xe</h1>
                <p>
                    LOGIVAN giải đáp mọi thắc mắc về dịch vụ và ứng dụng tìm kiếm đơn
                    <br />
                    hàng cho chủ xe.
                </p>
                <div id="GiaiDapThacMacChuXe" style="text-align:left;">
                    <h5>
                        <asp:Button ID="btnCauHoiChuXe_1" runat="server" Text="LOGIVAN hoạt động như thế nào?" CssClass="btnCauHoi" OnClick="btnCauHoiChuXe_1_Click" />
                    </h5>
                    <div class="CauTraLoi" runat="server" id="CauTraLoiChuXe_1">
                        <p>
                            LOGIVAN là một nền tảng công nghệ và ứng dụng giúp kết nối tài xế - đối tác và chủ hàng.
                        </p>
                        <p>
                            Là tài xế - đối tác, bạn sẽ sử dụng xe cá nhân hoặc xe của đối tác nhà xe để thực hiện vận chuyển hàng hoá theo yêu cầu. Bạn được kết nối trực tiếp với chủ hàng ngay khi hoàn tất đăng ký tài khoản lái xe và xem đơn hàng.
                        </p>
                    </div>
                    <h5>
                        <asp:Button ID="btnCauHoiChuXe_2" runat="server" Text="Quá trình đăng ký trở thành đối tác của LOGIVAN" CssClass="btnCauHoi" OnClick="btnCauHoiChuXe_2_Click" />
                    </h5>
                    <div class="CauTraLoi" runat="server" id="CauTraLoiChuXe_2">
                        <p>
                            Bạn có thể đăng ký để lái xe với ứng dụng LOGIVAN trên điện thoại thông minh của bạn.
                            <br />
                            Tải ứng dụng tài xế từ liên kết bên dưới. Là tài xế-đối tác, bạn sẽ tiếp cận được các yêu cầu tìm xe và báo giá nhanh chóng với sự hỗ trợ của LOGIVAN qua ứng dụng và trực tiếp bởi đội ngũ LOGIVAN. Bạn sẽ báo giá và chốt đơn trưc tiếp với chủ hàng.
                            <br />
                            Chúng tôi sẽ cung cấp tất cả những gì bạn cần để tìm đơn hàng phù hợp và giao dịch một cách hiệu quả nhất!
                        </p>
                    </div>
                    <h5>
                        <asp:Button ID="btnCauHoiChuXe_3" runat="server" Text="Tải ứng dụng LOGIVAN - Chủ xe" CssClass="btnCauHoi" OnClick="btnCauHoiChuXe_3_Click" />
                    </h5>
                    <div class="CauTraLoi" runat="server" id="CauTraLoiChuXe_3">
                        <p>
                            Cách 1:
                            <br />
                            Tải ứng dụng cho iOS (IPhone): Truy cập App Store, tìm kiếm ứng dụng LOGIVAN và cài đặt ngay
                            <br />
                            Tải ứng dụng dành cho Android (Samsung, Oppo, Asus, HTC,…): Truy cập Google Play, tìm kiếm ứng dụng LOGIVAN Chủ xe và cài đặt ngay
                        </p>
                        <p>
                            Cách 2: Click vào link sau để được chuyển tiếp thằng đến đường dẫn tải LOGIVAN trên chợ ứng dụng phù hợp cho mọi điện thoại (Android hoặc iOS): www.chuxe.vn
                        </p>
                        <p>
                            Gặp sự cố khi cài đặt ứng dụng LOGIVAN, liên hệ ngay với chúng tôi theo Hotline: 0333 13 16 18
                        </p>
                    </div>
                    <h5>
                        <asp:Button ID="btnCauHoiChuXe_4" runat="server" Text="Yêu cầu về xe và giấy tờ" CssClass="btnCauHoi" OnClick="btnCauHoiChuXe_4_Click" />
                    </h5>
                    <div class="CauTraLoi" runat="server" id="CauTraLoiChuXe_4">
                        <p>
                            Tải lên các giấy tờ xác thực cơ bản:
                            <br />
                            - CMND (mặt trước)
                            <br />
                            - Bằng lái xe (mặt trước)
                            <br />
                            - Đăng kiểm xe (hai trang mặt trong, chụp rõ hình ảnh, thông tin xe, và dấu của cơ quan chức năng) hoặc Đăng ký xe (chụp mặt sau có đầy đủ thông tin xe và biển số xe)
                        </p>
                        <p>
                            Nếu bạn là doanh nghiệp vận tải, bạn cần tải lên:
                            <br />
                            - Giấy đăng ký kinh doanh (trang 1)
                            <br />
                            - Giấy phép kinh doanh vận tải (trang 1)
                        </p>
                        <p>
                            Khi bạn tải ảnh lên, hãy đảm bảo:
                            <br />
                            – Ảnh chụp giấy tờ gốc hoặc bản sao có công chứng
                            <br />
                            – Ảnh giấy tờ rõ nét, không bị mờ, lóa
                            <br />
                            – Tất cả nội dung đều dễ đọc
                            <br />
                            – Thấy được tất cả 4 góc của giấy tờ
                        </p>
                        <p>
                            Quá trình xem xét giấy tờ tải lên thường được LOGIVAN thực hiện trong vòng 24h.
                        </p>
                    </div>
                    <h5>
                        <asp:Button ID="btnCauHoiChuXe_5" runat="server" Text="Cần trợ giúp kích hoạt và hỗ trợ trực tiếp" CssClass="btnCauHoi" OnClick="btnCauHoiChuXe_5_Click" />
                    </h5>
                    <div class="CauTraLoi" runat="server" id="CauTraLoiChuXe_5">
                        <p>
                            Bạn có thể nhận trợ giúp từ nhóm hỗ trợ của LOGIVAN.
                            <br />
                            Thông tin liên hệ:
                            <br />
                            - Hotline: 0333 13 16 18
                            <br />
                            - Email: hotro@logivan.com
                        </p>
                    </div>
                    <h5>
                        <asp:Button ID="btnCauHoiChuXe_6" runat="server" Text="Không liên hệ với chủ hàng" CssClass="btnCauHoi" OnClick="btnCauHoiChuXe_6_Click" />
                    </h5>
                    <div class="CauTraLoi" runat="server" id="CauTraLoiChuXe_6">
                        <p>
                            Nếu bạn gặp sự cố kết nối với chủ hàng khách, liên hệ ngay với LOGIVAN để thông báo vấn đề khó khăn với chủ hàng.
                        </p>
                    </div>
                    <h5>
                        <asp:Button ID="btnCauHoiChuXe_7" runat="server" Text="Quy tắc ứng xử" CssClass="btnCauHoi" OnClick="btnCauHoiChuXe_7_Click" />
                    </h5>
                    <div class="CauTraLoi" runat="server" id="CauTraLoiChuXe_7">
                        <p>
                            Với mong muốn đem đến trải nghiệm LOGIVAN chất lượng và an toàn cho tất cả khách hàng và đối tác. Những quy tắc cơ bản này được xây dựng để đảm bảo rằng chủ hàng và chủ xe/tài xế sẽ luôn có một giao dịch thuận lợi khi được kết nối qua LOGIVAN. Bởi vì dù bạn là chủ hàng muốn tìm xe phù hợp với mức giá tốt nhất – hay là đối tác muốn tăng thu nhập khi lái xe – thì cách ứng xử của bạn cũng có thể tạo nên sự khác biệt.
                        </p>
                    </div>
                    <h5>
                        <asp:Button ID="btnCauHoiChuXe_8" runat="server" Text="LOGIVAN có thu phí không?" CssClass="btnCauHoi" OnClick="btnCauHoiChuXe_8_Click" />
                    </h5>
                    <div class="CauTraLoi" runat="server" id="CauTraLoiChuXe_8">
                        <p>
                            Sử dụng LOGIVAN là hoàn toàn miễn phí cho cả chủ hàng và chủ xe.
                        </p>
                    </div>
                </div>
            </asp:View>
        </asp:MultiView>
    </div>
    <div id="contact">
        <h1>Vẫn không tìm thấy câu trả lời cho mình?</h1>
        <p>Hãy liên hệ ngay với LOGIVAN để nhận được tư vấn trực tiếp và giải đáp mọi thắc mắc!</p>
        <ul>
            <li>
                <asp:Image ID="Image2" runat="server" ImageUrl="~/HinhAnh/HinhAnhLienHe/icon-phone.svg" />
                <a href="tel:0333131618">0333-13-16-18</a>
            </li>
            <li>
                <asp:Image ID="Image3" runat="server" ImageUrl="~/HinhAnh/HinhAnhLienHe/icon-phone.svg" />
                <a href="tel:02473001828">024-7300-1828</a>
            </li>
            <li>
                <asp:Image ID="Image4" runat="server" ImageUrl="~/HinhAnh/HinhAnhLienHe/icon-phone.svg" />
                <a href="tel:02873003828">028-7300-3828</a>
            </li>
            <li>
                <asp:Image ID="Image5" runat="server" ImageUrl="~/HinhAnh/HinhAnhLienHe/icon-mail.svg" />
                <a href="mailto:hotro@logivan.com">hotro@logivan.com</a>
            </li>
        </ul>
    </div>
</asp:Content>
