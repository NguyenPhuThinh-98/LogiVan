<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="trang-chu.aspx.cs" Inherits="LogiVan.trang_chu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #div-1 ul {
            text-align: center;
        }

            #div-1 ul li {
                display: inline-block;
                padding-left: 20px;
            }

        #div-2 {
            text-align: center;
        }

        #div-2-table-1 {
            width: 100%;
            margin-bottom: 100px;
        }

        #div-4 {
            background-color: seashell;
            clear: both;
        }

            #div-4 a {
                text-decoration: none;
                color: orange;
                font-weight: bold;
            }

        #div-4-table-2 {
            font-size: xx-large;
        }

            #div-4-table-2 td {
                background-color: white;
                padding-left: 20px;
                border: 10px solid seashell;
            }

            #div-4-table-2 h1 {
                color: orange;
            }

        #div-5 {
            text-align: center;
        }

        #div-5-table-1 {
            width: 100%;
        }

        #div-5-ol-1 {
            list-style: none;
        }

            #div-5-ol-1 li {
                display: inline-block;
            }

        #div-5-table-1-table {
            width: 100%;
        }

        #div-5-table-1-table-2 {
            width: 100%;
        }

        #div-6{
            background-color:#f3f4f8;
            background-image:url(/HinhAnh/HinhAnhTrangChu/img13.png);
            background-repeat:no-repeat;
            background-size:cover;
        }
        #div-6-table-1 {
            margin-top: 100px;
            margin-bottom: 100px;
            width: 100%;
            height: 200px;
        }

            #div-6-table-1 th {
                color: blue;
                font-size: xx-large;
                width: 60%;
                text-align: left;
                padding-left: 50px;
            }

        #div-8 a {
            text-decoration: none;
            color: black;
        }

            #div-8 a:hover {
                color: orange;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="div-1">
        <asp:ScriptManager ID="ScriptManager1" runat="server" ></asp:ScriptManager>
        <asp:Timer ID="Timer1" runat="server" Interval="10000" OnTick="Timer1_Tick"></asp:Timer>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/loginow2h.jpg" Width="100%" Height="500px" />
            </asp:View>
            <asp:View ID="View2" runat="server">
                <asp:ImageButton ID="ImageButton8" runat="server" 
                    ImageUrl="~/HinhAnh/HinhAnhTrangChu/cam-nang-bac-tai-5-sao-banner.jpg" Width="100%" Height="500px" />
            </asp:View>
            <asp:View ID="View3" runat="server">
                <asp:ImageButton ID="ImageButton9" runat="server" 
                    ImageUrl="~/HinhAnh/HinhAnhTrangChu/loginow-banner-web-1.jpg" Width="100%" Height="500px" />
            </asp:View>
            <asp:View ID="View4" runat="server">
                <asp:ImageButton ID="ImageButton10" runat="server" Width="100%" Height="500px" 
                    ImageUrl="~/HinhAnh/HinhAnhTrangChu/dong-nai.png" />
            </asp:View>
            <asp:View ID="View5" runat="server">
                <asp:ImageButton ID="ImageButton11" runat="server" Width="100%" Height="500px" 
                    ImageUrl="~/HinhAnh/HinhAnhTrangChu/binh-duong.png" />
            </asp:View>
            <asp:View ID="View6" runat="server">
                <asp:ImageButton ID="ImageButton12" runat="server" Width="100%" Height="500px" 
                    ImageUrl="~/HinhAnh/HinhAnhTrangChu/HUONG-DAN-CHO-TX-SU-DUNG-APP-LOGIVAN-CHU-XE-FILE-TONG-1.png" />
            </asp:View>
        </asp:MultiView>
        <ul>
            <li>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/HinhAnh/HinhAnhTrangChu/circle.png" Width="20px" OnClick="ImageButton1_Click" BackColor="Gray" 
                    style="border-radius:50%;" />
            </li>
            <li>
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/HinhAnh/HinhAnhTrangChu/circle.png" Width="20px" OnClick="ImageButton2_Click" BackColor="Gray" 
                    style="border-radius:50%;" />
            </li>
            <li>
                <asp:ImageButton ID="ImageButton3" runat="server" 
                    ImageUrl="~/HinhAnh/HinhAnhTrangChu/circle.png" Width="20px" OnClick="ImageButton3_Click" BackColor="Gray" 
                    style="border-radius:50%;" />
            </li>
            <li>
                <asp:ImageButton ID="ImageButton4" runat="server" 
                    ImageUrl="~/HinhAnh/HinhAnhTrangChu/circle.png" Width="20px" OnClick="ImageButton4_Click" BackColor="Gray" 
                    style="border-radius:50%;" />
            </li>
            <li>
                <asp:ImageButton ID="ImageButton5" runat="server" 
                    ImageUrl="~/HinhAnh/HinhAnhTrangChu/circle.png" Width="20px" OnClick="ImageButton5_Click" BackColor="Gray" 
                    style="border-radius:50%;" />
            </li>
            <li>
                <asp:ImageButton ID="ImageButton6" runat="server" 
                    ImageUrl="~/HinhAnh/HinhAnhTrangChu/circle.png" 
                    Width="20px" 
                    OnClick="ImageButton6_Click" 
                    BackColor="Gray" 
                    style="border-radius:50%;" />
            </li>
        </ul>
    </div>
    <div id="div-2">
        <h1>Thuê xe tải chở hàng nhanh nhất với LOGIVAN</h1>
        <h3>Tính năng nổi bật</h3>
        <table id="div-2-table-1">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Width="200px" Height="200px" 
                        ImageUrl="~/HinhAnh/HinhAnhTrangChu/tim-chu-hang-voi-gia-nhu-y.jpg" style="border-radius:50%" />
                </td>
                <td>
                    <asp:Image ID="Image2" runat="server" Width="200px" Height="200px" 
                        ImageUrl="~/HinhAnh/HinhAnhTrangChu/lien-tuc-kiem-tra-an-toan.jpg" style="border-radius:50%" />
                </td>
                <td>
                    <asp:Image ID="Image3" runat="server" Width="200px" Height="200px" 
                        ImageUrl="~/HinhAnh/HinhAnhTrangChu/chi-phi-dich-vu-cong-khai.jpg" style="border-radius:50%" />
                </td>
            </tr>
            <tr>
                <td>
                    Tra giá cước xe tải
                    <br />
                    một cách nhanh nhất
                </td>
                <td>
                    Liên tục kiểm tra an toàn
                    <br />
                    cho chuyến hàng của bạn
                </td>
                <td>
                    Chi phí dịch vụ
                    <br />
                    công khai và minh bạch
                </td>
            </tr>
        </table>
    </div>
    <div id="div-3">
        <table id="div-3-table">
            <tr>
                <td style="width:50%;">
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/chuhang-copy-1.png" Width="500px" />
                </td>
                <td style="vertical-align:top;">
                    <table>
                        <tr>
                            <td colspan="3">
                                <h1>Ứng dụng thuê xe tải <br /> LOGIVAN Chủ hàng</h1>
                                <p>Giải pháp công nghệ giúp kết nối trực tiếp các doanh nghiệp với mạng lưới đối tác vận tải trên toàn quốc.</p>
                                <p>LOGIVAN luôn sẵn sàng đáp ứng mọi nhu cầu vận chuyển hàng, hỗ trợ tìm kiếm và quản lý xe tải chở hàng với độ tin cậy và chất lượng cao nhất.</p>
                                <a href="chu-hang.aspx" style="color: orange; text-decoration: none;">Tìm hiểu thêm ></a>
                                <p>Tải ứng dụng LOGIVAN Chủ hàng</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image5" runat="server" Width="100px" Height="100px" 
                                    ImageUrl="~/HinhAnh/HinhAnhMasterPage/qrcode.png" />
                            </td>
                            <td>hoặc</td>
                            <td>
                                <asp:ImageButton ID="ImageButton13" runat="server" 
                                    ImageUrl="~/HinhAnh/HinhAnhMasterPage/app_ios.png" 
                                    PostBackUrl="https://apps.apple.com/us/app/logivan-ch%E1%BB%A7-h%C3%A0ng/id1386678770" />
                                <br />
                                <br />
                                <a href="https://play.google.com/store/apps/details?id=com.logivan.shipper">
                                <asp:Image ID="Image22" runat="server" ImageUrl="~/HinhAnh/HinhAnhMasterPage/app_android.png" />
                                </a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div id="div-4">
        <table>
            <tr>
                <td style="vertical-align:top; width:40%; padding-left: 50px; padding-right: 50px;">
                    <h3>Về LOGIVAN</h3>
                    <p style="text-align: justify">
                        LOGIVAN cung cấp dịch vụ vận tải 4.0 dựa trên nền tảng kết nối trực tiếp chủ hàng và mạng lưới xe tải trên toàn quốc. Sứ mệnh của LOGIVAN là số hóa ngành công nghiệp vận tải đường bộ, cung cấp hệ thống kết hợp tự động chất lượng cao và dịch vụ logistic uy tín đến mọi doanh nghiệp Việt Nam.</p>
                    <br />
                    <a href="gioi-thieu.aspx">Tìm hiểu thêm ></a>
                </td>
                <td>
                    <table id="div-4-table-2">
                        <tr>
                            <td>
                                <h1>65.000</h1>
                                <p>chủ hàng</p>
                            </td>
                            <td>
                                <h1>69.000</h1>
                                <p>chủ xe</p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <h1>14 triệu</h1>
                                <p>(USD) Tổng giá trị <br /> dịch vụ vận chuyển</p>
                            </td>
                            <td>
                                <h1>7,9 triệu</h1>
                                <p>(USD) Tổng số tiền <br /> được đầu tư</p>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div id="div-5">
        <h1>Quá trình hình thành và phát triển</h1>
        <table id="div-5-table-1">
            <tr>
                <td>
                    <table id="div-5-table-1-table">
                        <tr>
                            <th colspan="7" style="background-image:url(HinhAnh/HinhAnhTrangChu/truck-background.png); background-repeat:no-repeat; background-size:cover; height:180px; width:100%; border-bottom:1px dashed black; vertical-align:bottom; text-align:left;">
                                <asp:Image ID="imgTruck" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/truck.svg" Width="150px" />
                            </th>
                        </tr>
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton15" runat="server" Width="50px" Height="50px" 
                                    ImageUrl="~/HinhAnh/HinhAnhTrangChu/khoi-nghiep.svg" 
                                    BorderStyle="Solid" BorderWidth="1px" OnClick="ImageButton15_Click" Style="border-radius: 50%" />
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton16" runat="server" Width="50px" Height="50px" 
                                    ImageUrl="~/HinhAnh/HinhAnhTrangChu/but-pha.svg" 
                                    BorderStyle="Solid" BorderWidth="1px" Style="border-radius: 50%" OnClick="ImageButton16_Click" />
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton17" runat="server" Width="50px" Height="50px" 
                                    ImageUrl="~/HinhAnh/HinhAnhTrangChu/tang-toc.svg" 
                                    BorderStyle="Solid" BorderWidth="1px" Style="border-radius: 50%" OnClick="ImageButton17_Click" />
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton18" runat="server" Width="50px" Height="50px" 
                                    ImageUrl="~/HinhAnh/HinhAnhTrangChu/dinh-vi.svg" 
                                    BorderStyle="Solid" BorderWidth="1px" Style="border-radius: 50%" OnClick="ImageButton18_Click" />
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton19" runat="server" Width="50px" Height="50px" 
                                    ImageUrl="~/HinhAnh/HinhAnhTrangChu/nang-tam.svg" 
                                    BorderStyle="Solid" BorderWidth="1px" Style="border-radius: 50%" OnClick="ImageButton19_Click" />
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton20" runat="server" Width="50px" Height="50px" 
                                    ImageUrl="~/HinhAnh/HinhAnhTrangChu/chinh-phuc.svg" 
                                    BorderStyle="Solid" BorderWidth="1px" Style="border-radius: 50%" OnClick="ImageButton20_Click" />
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton21" runat="server" Width="50px" Height="50px" 
                                    ImageUrl="~/HinhAnh/HinhAnhTrangChu/lan-toa.svg" 
                                    BorderStyle="Solid" BorderWidth="1px" Style="border-radius: 50%" OnClick="ImageButton21_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Khởi nghiệp" 
                                    BorderStyle="None" BackColor="White" Font-Bold="true" OnClick="Button1_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" Text="Bứt phá" 
                                    BorderStyle="None" BackColor="White" Font-Bold="true" OnClick="Button2_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button3" runat="server" Text="Tăng tốc" 
                                    BorderStyle="None" BackColor="White" Font-Bold="true" OnClick="Button3_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button4" runat="server" Text="Định vị" 
                                    BorderStyle="None" BackColor="White" Font-Bold="true" OnClick="Button4_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button5" runat="server" Text="Nâng tầm" 
                                    BorderStyle="None" BackColor="White" Font-Bold="true" OnClick="Button5_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button6" runat="server" Text="Chinh phục" 
                                    BorderStyle="None" BackColor="White" Font-Bold="true" OnClick="Button6_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button7" runat="server" Text="Lan tỏa" 
                                    BorderStyle="None" BackColor="White" Font-Bold="true" OnClick="Button7_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button8" runat="server" Text="Tháng 9 - 2017" BackColor="White" BorderStyle="None" OnClick="Button8_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button9" runat="server" Text="Tháng 3 - 2018" BackColor="White" BorderStyle="None" OnClick="Button9_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button10" runat="server" Text="Tháng 4 - 2018" BackColor="White" BorderStyle="None" OnClick="Button10_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button11" runat="server" Text="Tháng 7 - 2018" BackColor="White" BorderStyle="None" OnClick="Button11_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button12" runat="server" Text="Tháng 8 - 2018" BackColor="White" BorderStyle="None" OnClick="Button12_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button13" runat="server" Text="Tháng 12 - 2018" BackColor="White" BorderStyle="None" OnClick="Button13_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button14" runat="server" Text="Tháng 2 - 2019" BackColor="White" BorderStyle="None" OnClick="Button14_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table id="div-5-table-1-table-2">
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton22" runat="server" Width="50px" Height="50px" ImageUrl="~/HinhAnh/HinhAnhTrangChu/arrow-left.png" BackColor="Gray" OnClick="ImageButton22_Click" Style="border-radius: 50%" />
                            </td>
                            <td style="width: 50%; border: 1px solid blue;">
                                <asp:MultiView ID="MultiView2" runat="server">
                                    <asp:View ID="View7" runat="server">
                                        <h3>Khởi nghiệp
                                            <br />
                                            (Tháng 9 - 2017)</h3>
                                        <p>Khởi đầu sứ mệnh số hóa ngành công nghiệp vận tải đường bộ Việt Nam. LOGIVAN tập trung giải quyết bài toán kết nối thị trường vận tải, giúp chủ xe và chủ hàng tìm được đến nhau thông qua một nền tảng công nghệ cao.</p>
                                    </asp:View>
                                    <asp:View ID="View8" runat="server">
                                        <h3>Bứt phá
                                            <br />
                                            (Tháng 3 - 2018)</h3>
                                        <p>Chiến thắng cuộc thi khởi nghiệp Uber Exchange. LOGIVAN là start – up duy nhất giành tấm vé để tới Thung lũng Silicon, Mỹ và nhận được sự cố vấn trực tiếp từ Tổng Giám đốc công nghệ toàn cầu UBER Thuận Phạm.</p>
                                    </asp:View>
                                    <asp:View ID="View9" runat="server">
                                        <h3>Tăng tốc
                                            <br />
                                            (Tháng 4 - 2018)</h3>
                                        <p>Gọi thành công 600.000 USD từ quỹ đầu tư Insignia Ventures Partners. LOGIVAN bắt đầu mở rộng hoạt động tại Thành phố Hồ Chí Minh và các trung tâm kinh tế lớn khác tại Việt Nam, phục vụ các công ty có nhu cầu vận tải cao.</p>
                                    </asp:View>
                                    <asp:View ID="View10" runat="server">
                                        <h3>Định vị
                                            <br />
                                            (Tháng 7 - 2018)</h3>
                                        <p>Giành giải Công ty khởi nghiệp tốt nhất trong PITCH 2018 tại RISE 2018. Vượt qua hơn 800 đội thi trên toàn thế giới, LOGIVAN mang về chiến thắng đầu tiên cho các công ty khởi nghiệp Việt Nam tại Hội nghị công nghệ thượng đỉnh Châu Á.</p>
                                    </asp:View>
                                    <asp:View ID="View11" runat="server">
                                        <h3>Nâng tầm
                                            <br />
                                            (Tháng 8 - 2018)</h3>
                                        <p>Được đầu tư thêm 1.75 triệu USD vòng Series A do Ethos Partners, Insignia Venture Partners và VinaCapital Ventures đứng đầu. LOGIVAN tiếp tục nâng cấp sản phẩm công nghệ để phục vụ nhu cầu vận chuyển hàng hóa của doanh nghiệp và tạo điều kiện minh bạch trong việc theo dõi và quản lý xe tải.</p>
                                    </asp:View>
                                    <asp:View ID="View12" runat="server">
                                        <h3>Chinh phục
                                            <br />
                                            (Tháng 12 - 2018)</h3>
                                        <p>Giải nhất Pitch@Palace Global 2018 do Hoàng tử Anh Andrew – Công tước xứ York tổ chức. Ngoài việc đem lại giải pháp đột phá trong lĩnh vực logistics, LOGIVAN được Hội đồng giải thưởng đánh giá có tác động tích cực đến xã hội, nền kinh tế và môi trường sống tại Việt Nam.</p>
                                    </asp:View>
                                    <asp:View ID="View13" runat="server">
                                        <h3>Lan tỏa
                                            <br />
                                            (Tháng 2 - 2019)</h3>
                                        <p>Gọi thành công 5.5 triệu USD từ Alpha JWC và các nhà đầu tư danh tiếng Châu Á khác. Với số tiền đầu tư lần này, LOGIVAN hướng đến phân tích và tích hợp dữ liệu nhằm tăng hiệu quả chuỗi cung ứng, mở rộng mạng lưới 40,000 đối tác vận tải với hàng trăm đơn hàng mỗi ngày.</p>
                                    </asp:View>
                                </asp:MultiView>
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton23" runat="server" Width="50px" Height="50px" ImageUrl="~/HinhAnh/HinhAnhTrangChu/arrow-right.png" BackColor="Gray" OnClick="ImageButton23_Click" Style="border-radius: 50%" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <div id="div-6">
        <table id="div-6-table-1">
            <tr>
                <th>Những điều cần biết cho lần chuyển hàng đầu tiên của bạn với LOGIVAN</th>
                <td style="text-align:center;">
                    <asp:Button ID="Button15" runat="server" Text="Tìm hiểu thêm" BackColor="Orange" ForeColor="White" Height="50px" Width="200px" PostBackUrl="~/chu-hang.aspx" />
                </td>
            </tr>
        </table>
    </div>
    <div id="div-7" style="text-align: center; margin-bottom:100px;">
        <h1>Đối tác của chúng tôi</h1>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton24" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/arrow-left.png" Height="50px" BackColor="Gray" style="border-radius:50%;" OnClick="ImageButton24_Click" />
                </td>
                <td style="width:80%;">
                    <asp:MultiView ID="MultiView3" runat="server">
                        <asp:View ID="View14" runat="server">
                            <div style="width:40%; float:left; border:1px solid gray; height:300px;">
                                <asp:Image ID="Image6" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                                <p style="color: blue;">"LOGIVAN rất dễ sử dụng và tìm xe tải chở hàng nhanh hơn nhiều so với việc gọi cho các công ty vận tải truyền thống"</p>
                                <asp:Image ID="Image7" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/ms-do-phuong-thao.jpg" style="border-radius:50%;" />
                                <h3>Ms. Đỗ Phương Thảo</h3>
                                <p>Giám đốc công ty Thảo Nguyên Top 3 Doanh nghiệp xuất khẩu điều. Top 500 Doanh nghiệp lớn ở Việt Nam</p>
                            </div>
                            <div style="width:40%; float:right; border:1px solid gray; height:300px;">
                                <asp:Image ID="Image8" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                                <p style="color: blue;">"Sử dụng LOGIVAN giúp cho khâu thuê xe tải chở hàng của chúng tôi linh hoạt nhẹ nhàng hơn rất nhiều mà vẫn đảm bảo chất lượng, tiến độ"</p>
                                <asp:Image ID="Image9" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/ms-bui-truc-quynh.jpg" style="border-radius:50%;" />
                                <h3>Ms. Bùi Trúc Quỳnh</h3>
                                <p>Giám đốc Công ty cổ phần Nông nghiệp HP</p>
                            </div>
                        </asp:View>
                        <asp:View ID="View15" runat="server">
                            <div style="width:40%; float:left; border:1px solid gray; height:300px;">
                                <asp:Image ID="Image10" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                                <p style="color: blue;">"Sử dụng LOGIVAN giúp cho khâu thuê xe tải chở hàng của chúng tôi linh hoạt nhẹ nhàng hơn rất nhiều mà vẫn đảm bảo chất lượng, tiến độ"</p>
                                <asp:Image ID="Image11" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/ms-bui-truc-quynh.jpg" style="border-radius:50%;" />
                                <h3>Ms. Bùi Trúc Quỳnh</h3>
                                <p>Giám đốc Công ty cổ phần Nông nghiệp HP</p>
                            </div>
                            <div style="width:40%; float:right; border:1px solid gray; height:300px;">
                                <asp:Image ID="Image12" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                                <p style="color: blue;">"LOGIVAN làm việc chuyên nghiệp, trẻ trung. Miwon luôn nhận được sự hỗ trợ và phối hợp xử lý của LOGIVAN khi có phát sinh, thậm chí cả ngày nghỉ."</p>
                                <asp:Image ID="Image13" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/mr-ta-quoc-loi.png" />
                                <h3>Mr. Tạ Quốc Lội</h3>
                                <p>Giám đốc Logistics Công ty TNHH Miwon Việt Nam</p>
                            </div>
                        </asp:View>
                        <asp:View ID="View16" runat="server">
                            <div style="width:40%; float:left; border:1px solid gray; height:300px;">
                                <asp:Image ID="Image14" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                                <p style="color: blue;">"LOGIVAN làm việc chuyên nghiệp, trẻ trung. Miwon luôn nhận được sự hỗ trợ và phối hợp xử lý của LOGIVAN khi có phát sinh, thậm chí cả ngày nghỉ."</p>
                                <asp:Image ID="Image15" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/mr-ta-quoc-loi.png" />
                                <h3>Mr. Tạ Quốc Lội</h3>
                                <p>Giám đốc Logistics Công ty TNHH Miwon Việt Nam</p>
                            </div>
                            <div style="width:40%; float:right; border:1px solid gray; height:300px;">
                                <asp:Image ID="Image16" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                                <p style="color: blue;">"Ứng dụng thuê xe tải chở hàng LOGIVAN dễ sử dụng và tìm xe nhanh hơn nhiều so với nhà cung cấp cũ của tôi."</p>
                                <asp:Image ID="Image17" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/mr-tran-van-tuan.png" />
                                <h3>Mr. Trần Văn Tuấn</h3>
                                <p>Giám đốc Công ty Cổ phần Kết cấu Thép và Thiết bị Nâng Việt Nam (Vinalift)</p>
                            </div>
                        </asp:View>
                        <asp:View ID="View17" runat="server">
                            <div style="width:40%; float:left; border:1px solid gray; height:300px;">
                                <asp:Image ID="Image18" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                                <p style="color: blue;">"Ứng dụng thuê xe tải chở hàng LOGIVAN dễ sử dụng và tìm xe nhanh hơn nhiều so với nhà cung cấp cũ của tôi."</p>
                                <asp:Image ID="Image19" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/mr-tran-van-tuan.png" />
                                <h3>Mr. Trần Văn Tuấn</h3>
                                <p>Giám đốc Công ty Cổ phần Kết cấu Thép và Thiết bị Nâng Việt Nam (Vinalift)</p>
                            </div>
                            <div style="width:40%; float:right; border:1px solid gray; height:300px;">
                                <asp:Image ID="Image20" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                                <p style="color: blue;">"LOGIVAN rất dễ sử dụng và tìm xe tải chở hàng nhanh hơn nhiều so với việc gọi cho các công ty vận tải truyền thống"</p>
                                <asp:Image ID="Image21" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/ms-do-phuong-thao.jpg" style="border-radius:50%;" />
                                <h3>Ms. Đỗ Phương Thảo</h3>
                                <p>Giám đốc công ty Thảo Nguyên Top 3 Doanh nghiệp xuất khẩu điều. Top 500 Doanh nghiệp lớn ở Việt Nam</p>
                            </div>
                        </asp:View>
                    </asp:MultiView>
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton25" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/arrow-right.png" Height="50px" BackColor="Gray" style="border-radius:50%;" OnClick="ImageButton25_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div id="div-8">
        <h1 style="text-align:center;">Tin tức</h1>
        <div style="width:30%; float:left;">
            <a href="https://www.logivan.com/logivan-news-tong-hop-tin-tuc-tuan-1-thang-10-2021/">
                <asp:Image ID="Image23" runat="server" Width="100%" Height="200px" ImageUrl="~/HinhAnh/HinhAnhTrangChu/nen-tang-cua-khau-so.png" />
                <h3>LOGIVAN News: Tổng hợp tin tức Tuần 1 - Tháng 10/2021</h3>
            </a>
            <p>Bảng tin Covid-19 - Tính đến hết ngày 03/10/2021, số ca dương tính trên toàn quốc đã đạt đến con số 808,500 ca tăng 51,000 ca trong 1 tuần vừa qua. Trong đó, Số ca đã khỏi bệnh là 696,800…</p>
        </div>
        <div style="width:30%; float:left; margin-left:5%; margin-right:5%;">
            <a href="https://www.logivan.com/logivan-news-tong-hop-tin-tuc-tuan-4-thang-9-2021/">
                <asp:Image ID="Image24" runat="server" Width="100%" Height="200px" ImageUrl="~/HinhAnh/HinhAnhTrangChu/new-normal4.png" />
                <h3>LOGIVAN News: Tổng hợp tin tức Tuần 4 - Tháng 9/2021</h3>
            </a>
            <p>Về số liệu tiêm vắc xin thì tính đến ngày 26/09/2021, chúng ta đã về được tổng cộng 44,7 triệu liều vắc xin, và đã tiêm chủng cho 30.4 triệu người trên toàn quốc, đạt 31,5% dân số. Trong đó,…</p>
        </div>
        <div style="width:30%; float:left;">
            <a href="https://www.logivan.com/logivan-news-tong-hop-tin-tuc-tuan-3-thang-9-2021/">
                <asp:Image ID="Image25" runat="server" Width="100%" Height="200px" ImageUrl="~/HinhAnh/HinhAnhTrangChu/2021927-111325.png" />
                <h3>LOGIVAN News: Tổng hợp tin tức Tuần 3 - Tháng 9/2021</h3>
            </a>
            <p>Về số liệu tiêm vắc xin thì tính đến ngày 19/09/2021, chúng ta đã về được tổng cộng 31,7 triệu liều vắc xin, và đã tiêm chủng cho 27,6 triệu người trên toàn quốc, đạt 28,6% dân số. Trong đó,…</p>
        </div>
        <div style="text-align:right; margin-bottom:20px; clear:both;">
            <a href="#" style="color:orange; font-weight:bold;">Xem Thêm ></a>
        </div>
    </div>
</asp:Content>
