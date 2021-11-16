<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="gioi-thieu.aspx.cs" Inherits="LogiVan_New.gioi_thieu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #content-1 p span {
            color: orangered;
            font-weight: bold;
        }

        #cover {
            background-image: url("HinhAnh/HinhAnhGioiThieu/cover.jpg");
            background-size: auto;
            background-repeat: no-repeat;
            font-size: xx-large;
            color: white;
            text-align: center;
            padding: 100px 0 100px 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="cover" style="margin-bottom:50px;">
        <p>
            "With LOGIVAN,
            <br />
            no truck will ever run empty"
        </p>
    </div>
    <div id="content-1">
        <h1 style="text-align: center;">LOGIVAN là ai ?</h1>
        <div style="width: 50%; float: left; text-align: center; background-color: white; height:400px;">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/HinhAnh/HinhAnhGioiThieu/Mockup-7-copy-1-e1559134259763.png" Width="500px" />
        </div>
        <div style="width: 50%; float: right; background-image: url(HinhAnh/HinhAnhGioiThieu/background.jpg); background-repeat: no-repeat; background-size: 100%; height: 400px;">
            <p>
                <span>LOGIVAN</span>
                cung cấp dịch vụ vận tải 4.0 dựa trên nền tảng kết nối trực tiếp chủ hàng và mạng lưới xe tải trên toàn quốc.
            </p>
            <p>
                Sứ mệnh của
                <span>LOGIVAN</span>
                là số hóa ngành công nghiệp vận tải đường bộ, cung cấp hệ thống kết hợp tự động chất lượng cao và dịch vụ logistic uy tín đến mọi doanh nghiệp Việt Nam.
            </p>
            <p>
                <span>LOGIVAN</span>
                phát triển hai sản phẩm công nghệ vận tải là
                <span>LOGIVAN - Chủ hàng</span>
                và
                <span>LOGIVAN - Chủ xe</span>
                .
            </p>
            <p>
                <span>Ứng dụng LOGIVAN</span>
                mang đến giải pháp công nghệ giúp doanh nghiệp tìm kiếm và quản lý xe tải online.
            </p>
        </div>
    </div>
    <div id="content-2" style="clear:both; margin-top:50px; margin-bottom:50px;">
        <h1 style="text-align:center;">Quá trình hình thành và phát triển</h1>
        <table style="width:100%; text-align:center;">
            <tr>
                <td>
                    <table style="width:100%;">
                        <tr>
                            <td colspan="7" style="background-image:url(HinhAnh/HinhAnhTrangChu/truck-background.png); height:180px; width:100%; border-bottom:5px dashed black; vertical-align:bottom;">
                                <table style="width: 100%; margin: 0;">
                                    <tr style="vertical-align: bottom;">
                                        <td>
                                            <asp:Image ID="imgTruck_1" runat="server" Width="100px" ImageUrl="~/HinhAnh/HinhAnhTrangChu/truck.svg" />
                                        </td>
                                        <td>
                                            <asp:Image ID="imgTruck_2" runat="server" Width="100px" />
                                        </td>
                                        <td>
                                            <asp:Image ID="imgTruck_3" runat="server" Width="100px" />
                                        </td>
                                        <td>
                                            <asp:Image ID="imgTruck_4" runat="server" Width="100px" />
                                        </td>
                                        <td>
                                            <asp:Image ID="imgTruck_5" runat="server" Width="100px" />
                                        </td>
                                        <td>
                                            <asp:Image ID="imgTruck_6" runat="server" Width="100px" />
                                        </td>
                                        <td>
                                            <asp:Image ID="imgTruck_7" runat="server" Width="100px" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton15" runat="server" Width="50px" Height="50px" ImageUrl="~/HinhAnh/HinhAnhTrangChu/khoi-nghiep.svg" BorderStyle="Solid" BorderWidth="1px" OnClick="ImageButton15_Click" Style="border-radius: 50%" />
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton16" runat="server" Width="50px" Height="50px" ImageUrl="~/HinhAnh/HinhAnhTrangChu/but-pha.svg" BorderStyle="Solid" BorderWidth="1px" Style="border-radius: 50%" OnClick="ImageButton16_Click" />
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton17" runat="server" Width="50px" Height="50px" ImageUrl="~/HinhAnh/HinhAnhTrangChu/tang-toc.svg" BorderStyle="Solid" BorderWidth="1px" Style="border-radius: 50%" OnClick="ImageButton17_Click" />
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton18" runat="server" Width="50px" Height="50px" ImageUrl="~/HinhAnh/HinhAnhTrangChu/dinh-vi.svg" BorderStyle="Solid" BorderWidth="1px" Style="border-radius: 50%" OnClick="ImageButton18_Click" />
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton19" runat="server" Width="50px" Height="50px" ImageUrl="~/HinhAnh/HinhAnhTrangChu/nang-tam.svg" BorderStyle="Solid" BorderWidth="1px" Style="border-radius: 50%" OnClick="ImageButton19_Click" />
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton20" runat="server" Width="50px" Height="50px" ImageUrl="~/HinhAnh/HinhAnhTrangChu/chinh-phuc.svg" BorderStyle="Solid" BorderWidth="1px" Style="border-radius: 50%" OnClick="ImageButton20_Click" />
                            </td>
                            <td>
                                <asp:ImageButton ID="ImageButton21" runat="server" Width="50px" Height="50px" ImageUrl="~/HinhAnh/HinhAnhTrangChu/lan-toa.svg" BorderStyle="Solid" BorderWidth="1px" Style="border-radius: 50%" OnClick="ImageButton21_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="Button1" runat="server" Text="Khởi nghiệp" BorderStyle="None" BackColor="White" Font-Bold="true" OnClick="Button1_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button2" runat="server" Text="Bứt phá" BorderStyle="None" BackColor="White" Font-Bold="true" OnClick="Button2_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button3" runat="server" Text="Tăng tốc" BorderStyle="None" BackColor="White" Font-Bold="true" OnClick="Button3_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button4" runat="server" Text="Định vị" BorderStyle="None" BackColor="White" Font-Bold="true" OnClick="Button4_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button5" runat="server" Text="Nâng tầm" BorderStyle="None" BackColor="White" Font-Bold="true" OnClick="Button5_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button6" runat="server" Text="Chinh phục" BorderStyle="None" BackColor="White" Font-Bold="true" OnClick="Button6_Click" />
                            </td>
                            <td>
                                <asp:Button ID="Button7" runat="server" Text="Lan tỏa" BorderStyle="None" BackColor="White" Font-Bold="true" OnClick="Button7_Click" />
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
                    <table>
                        <tr>
                            <td>
                                <asp:ImageButton ID="ImageButton22" runat="server" Width="50px" Height="50px" ImageUrl="~/HinhAnh/HinhAnhTrangChu/arrow-left.png" BackColor="Gray" OnClick="ImageButton22_Click" Style="border-radius: 50%" />
                            </td>
                            <td style="width: 80%; border: 1px solid blue;">
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
    <div id="conttent-3" style="background-color:lightcyan; margin-bottom:100px;">
        <h1 style="text-align:center;">Đối tác của chúng tôi</h1>
        <table style="width:100%; text-align:center;">
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton24" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/arrow-left.png" Height="50px" BackColor="Gray" style="border-radius:50%;" OnClick="ImageButton24_Click" />
                </td>
                <td style="width:80%;">
                    <asp:MultiView ID="MultiViewDoiTac" runat="server">
                        <asp:View ID="View14" runat="server">
                            <div>
                                <asp:Image ID="Image6" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                                <p style="color: blue;">"LOGIVAN rất dễ sử dụng và tìm xe tải chở hàng nhanh hơn nhiều so với việc gọi cho các công ty vận tải truyền thống"</p>
                                <asp:Image ID="Image7" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/ms-do-phuong-thao.jpg" style="border-radius:50%;" />
                                <h3>Ms. Đỗ Phương Thảo</h3>
                                <p>Giám đốc công ty Thảo Nguyên Top 3 Doanh nghiệp xuất khẩu điều. Top 500 Doanh nghiệp lớn ở Việt Nam</p>
                            </div>
                        </asp:View>
                        <asp:View ID="View15" runat="server">
                            <div>
                                <asp:Image ID="Image10" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                                <p style="color: blue;">"Sử dụng LOGIVAN giúp cho khâu thuê xe tải chở hàng của chúng tôi linh hoạt nhẹ nhàng hơn rất nhiều mà vẫn đảm bảo chất lượng, tiến độ"</p>
                                <asp:Image ID="Image11" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/ms-bui-truc-quynh.jpg" style="border-radius:50%;" />
                                <h3>Ms. Bùi Trúc Quỳnh</h3>
                                <p>Giám đốc Công ty cổ phần Nông nghiệp HP</p>
                            </div>
                        </asp:View>
                        <asp:View ID="View16" runat="server">
                            <div>
                                <asp:Image ID="Image14" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                                <p style="color: blue;">"LOGIVAN làm việc chuyên nghiệp, trẻ trung. Miwon luôn nhận được sự hỗ trợ và phối hợp xử lý của LOGIVAN khi có phát sinh, thậm chí cả ngày nghỉ."</p>
                                <asp:Image ID="Image15" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/mr-ta-quoc-loi.png" />
                                <h3>Mr. Tạ Quốc Lội</h3>
                                <p>Giám đốc Logistics Công ty TNHH Miwon Việt Nam</p>
                            </div>
                        </asp:View>
                        <asp:View ID="View17" runat="server">
                            <div>
                                <asp:Image ID="Image18" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                                <p style="color: blue;">"Ứng dụng thuê xe tải chở hàng LOGIVAN dễ sử dụng và tìm xe nhanh hơn nhiều so với nhà cung cấp cũ của tôi."</p>
                                <asp:Image ID="Image19" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/mr-tran-van-tuan.png" />
                                <h3>Mr. Trần Văn Tuấn</h3>
                                <p>Giám đốc Công ty Cổ phần Kết cấu Thép và Thiết bị Nâng Việt Nam (Vinalift)</p>
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
    <div id="content-4" style="text-align:center;">
        <h1>Báo chí nói gì về LOGIVAN?</h1>
        <table style="width:100%;">
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" BackColor="Gray" style="border-radius:50%;" ImageUrl="~/HinhAnh/HinhAnhTrangChu/arrow-left.png" OnClick="ImageButton1_Click" />
                </td>
                <td style="width:80%;">
                    <asp:MultiView ID="MultiViewBaoChi" runat="server">
                        <asp:View ID="View1" runat="server">
                            <asp:Image ID="Image3" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                            <p style="color:blue;">"90% công ty vận tải ở Việt Nam là các công ty vừa và nhỏ, có dưới 5 xe. Và làm thế nào để liên kết và thống nhất thị trường này là bài toán mà LOGIVAN đang giải quyết."</p>
                            <a href="https://vtv.vn/video/quoc-gia-khoi-nghiep-24-5-2019-369300.htm">
                                <asp:Image ID="Image9" runat="server" style="border-radius:50%;" ImageUrl="~/HinhAnh/HinhAnhGioiThieu/vtv1.png" />
                            </a>
                            <p>VTV1</p>
                        </asp:View>
                        <asp:View ID="View2" runat="server">
                            <asp:Image ID="Image4" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                            <p style="color:blue;">"There are a lot of costly inefficiencies in Vietnam’s fragmented logistics industry, and LOGIVAN aims to tackle that pain point."</p>
                            <a href="https://e27.co/logivan-aims-tackle-wastage-vietnams-logistics-industry-20180319/">
                                <asp:Image ID="Image8" runat="server" style="border-radius:50%;" ImageUrl="~/HinhAnh/HinhAnhGioiThieu/e27.png" />
                            </a>
                            <p>E27</p>
                        </asp:View>
                        <asp:View ID="View3" runat="server">
                            <asp:Image ID="Image5" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                            <p style="color:blue;">"LOGIVAN is considered to be the company that offers technology solutions which help optimize the cost of road freight transportation by systematizing data usage, boosting high-quality supply and demand linkages to improve the efficiency of vehicles usage, thereby reducing logistics costs for service users."</p>
                            <a href="https://e.theleader.vn/fastgo-and-logivan-to-receive-first-investment-from-vinacapitals-100-million-tech-fund-1535706417033.htm">
                                <asp:Image ID="Image12" runat="server" style="border-radius:50%;" ImageUrl="~/HinhAnh/HinhAnhGioiThieu/the-leader.png" />
                            </a>
                            <p>The Leader</p>
                        </asp:View>
                        <asp:View ID="View4" runat="server">
                            <asp:Image ID="Image13" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                            <p style="color:blue;">"Insignia Ventures, Ethos Partners co-lead $1.75m round in Vietnam’s ‘Uber for trucks’ LOGIVAN."</p>
                            <a href="https://www.dealstreetasia.com/stories/insignia-ventures-ethos-partners-co-lead-1-75m-round-in-vietnams-uber-for-trucks-logivan-105664/">
                                <asp:Image ID="Image16" runat="server" style="border-radius:50%;" ImageUrl="~/HinhAnh/HinhAnhGioiThieu/deal-street-asia.png" />
                            </a>
                            <p>Deal Street Asia</p>
                        </asp:View>
                        <asp:View ID="View5" runat="server">
                            <asp:Image ID="Image17" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                            <p style="color:blue;">"Hanoi-based Logivan is a logistics platform linking businesses that need to ship a few tons of cargo directly to truckers and delivery firms."</p>
                            <a href="https://www.techinasia.com/apac-news-22-03-2018">
                                <asp:Image ID="Image20" runat="server" style="border-radius:50%;" ImageUrl="~/HinhAnh/HinhAnhGioiThieu/tech-in-asia.png" />
                            </a>
                            <p>Tech in Asia</p>
                        </asp:View>
                        <asp:View ID="View6" runat="server">
                            <asp:Image ID="Image21" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                            <p style="color:blue;">"Up to 80 of the most innovative startup firms from the ASEAN region will be featured at the World Economic Forum on ASEAN (WEF ASEAN), of which, three are from Vietnam."</p>
                            <a href="https://e.vcci.com.vn/content/tintuc/banin.php?idtin=18047">
                                <asp:Image ID="Image22" runat="server" style="border-radius:50%;" ImageUrl="~/HinhAnh/HinhAnhGioiThieu/world-economic-forum.png" />
                            </a>
                            <p>World Economic Forum</p>
                        </asp:View>
                        <asp:View ID="View18" runat="server">
                            <asp:Image ID="Image23" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                            <p style="color:blue;">"Logivan is part of Southeast Asia’s new breed of asset-light logistics firms, which have few physical assets, such as vehicles and warehouses. They earn their keep primarily via tech-enabled facilitating of cargo flows for others."</p>
                            <a href="https://forbesvietnam.com.vn/tin-cap-nhat/vinacapital-mo-quy-100-trieu-do-la-my-dau-tu-mao-hiem-vao-startup-cong-nghe-viet-nam-4379.html">
                                <asp:Image ID="Image24" runat="server" style="border-radius:50%;" ImageUrl="~/HinhAnh/HinhAnhGioiThieu/forbes.jpg" />
                            </a>
                            <p>Tạp chí Forbes</p>
                        </asp:View>
                        <asp:View ID="View19" runat="server">
                            <asp:Image ID="Image25" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                            <p style="color:blue;">"Bí quyết thành công đối với một startup công nghệ, quan trọng là phải tìm hiểu kỹ thị trường, tìm được những người đồng đội trung thực, tâm huyết, đồng thời trả lời được câu hỏi tại sao bạn, chứ không phải những người khác, mới là người làm tốt nhất."</p>
                            <a href="https://cafebiz.vn/logivan-uber-xe-tai-cua-viet-nam-goi-von-thanh-cong-175-trieu-usd-tham-vong-xoa-sach-xe-rong-chieu-ve-trong-nganh-logistics-20180829074133341.chn">
                                <asp:Image ID="Image26" runat="server" style="border-radius:50%;" ImageUrl="~/HinhAnh/HinhAnhGioiThieu/cafebiz.jpg" />
                            </a>
                            <p>Cafebiz.vn</p>
                        </asp:View>
                        <asp:View ID="View20" runat="server">
                            <asp:Image ID="Image27" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                            <p style="color:blue;">"Xuất sắc giành giải Nhất chương trình UberEXCHANGE - Khởi nghiệp thông minh, startup Logivan giành chiếc vé duy nhất đến thung lũng Silicon, Mỹ, cùng với gói giải thưởng “Uber cho doanh nghiệp” trị giá lên đến 100.000.000 đồng."</p>
                            <a href="https://tienphong.vn/nhom-startup-logivan-gianh-ve-duy-nhat-den-thung-lung-silicon-post992254.tpo">
                                <asp:Image ID="Image28" runat="server" style="border-radius:50%;" ImageUrl="~/HinhAnh/HinhAnhGioiThieu/bao-tien-phong.png" />
                            </a>
                            <p>Báo Tiền Phong</p>
                        </asp:View>
                        <asp:View ID="View21" runat="server">
                            <asp:Image ID="Image29" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                            <p style="color:blue;">"Vượt qua 9 đối thủ tên tuổi như MoneyLover, Jupviec.vn, Monkey Junior, TaHo… tại vòng chung kết UberExchange ngày 23/11/2017, startup Logivan đã đạt giải cao nhất để giành chiếc vé tới Thung lũng Silicon, Mỹ."</p>
                            <a href="https://genk.vn/startup-logivan-gianh-chiec-ve-duy-nhat-toi-thung-lung-silicon-20171124155253819.chn">
                                <asp:Image ID="Image30" runat="server" style="border-radius:50%;" ImageUrl="~/HinhAnh/HinhAnhGioiThieu/gen-k.png" />
                            </a>
                            <p>GenK.vn</p>
                        </asp:View>
                        <asp:View ID="View22" runat="server">
                            <asp:Image ID="Image31" runat="server" ImageUrl="~/HinhAnh/HinhAnhTrangChu/quotes-png-20050.png" Width="50px" />
                            <p style="color:blue;">
                                "Số vốn đầu tư mới 7,9 triệu USD được LOGIVAN lên kế hoạch để đầu tư vào phân tích dữ liệu và tích hợp đa nền tảng, qua đó tăng hiệu quả chuỗi cung ứng và tối ưu hóa trải nghiệm người dùng.
                                <br />
                                 Ngoài ra, việc ứng dụng trí tuệ nhân tạo (AI), thuật toán so khớp xe tải và giá cả nhằm tối ưu hóa việc sử dụng các xe tải trống cũng sẽ được chú trọng bên cạnh nguồn nhân lực."
                            </p>
                            <a href="https://startup.vnexpress.net/tin-tuc/hanh-trinh-khoi-nghiep/startup-viet-logivan-gianh-ve-den-thung-lung-silicon-3675381.html">
                                <asp:Image ID="Image32" runat="server" style="border-radius:50%;" ImageUrl="~/HinhAnh/HinhAnhGioiThieu/vnexpress.jpg" />
                            </a>
                            <p>Vnexpress</p>
                        </asp:View>
                    </asp:MultiView>
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="50px" BackColor="Gray" style="border-radius:50%;" ImageUrl="~/HinhAnh/HinhAnhTrangChu/arrow-right.png" OnClick="ImageButton2_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div>
        <asp:Image ID="Image33" runat="server" ImageUrl="~/HinhAnh/HinhAnhGioiThieu/anh-team.png" Width="100%" />
        <div style="border:1px solid black; text-align: center; width:80%; margin-left:10%; padding-bottom:50px;">
            <h1>Tham gia cùng LOGIVAN</h1>
            <p style="font-size:x-large;">
                LOGIVAN là một công ty start-up được tài trợ 7,9 triệu đô trong lĩnh vực vận tải. Ứng dụng công nghệ của chúng tôi thay đổi cách mọi người đặt xe tải, giúp nền kinh tế Việt Nam phát triển và quan trọng nhất là cải thiện cuộc sống của 40.000 tài xế xe tải trong hệ thống. 
                <br />
                 LOGIVAN muốn cho bạn cơ hội trở thành một phần của team năng động và dùng khả năng của bạn để góp phần xây dựng một phần tương lai của Việt Nam.
            </p>
            <asp:Button ID="Button15" runat="server" Text="Xem vị trí tuyển dụng" BackColor="Orange" ForeColor="White" Height="50px" PostBackUrl="https://tuyendung.logivan.com/job/" />
        </div>
    </div>
</asp:Content>
