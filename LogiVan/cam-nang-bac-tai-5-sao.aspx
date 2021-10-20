<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="cam-nang-bac-tai-5-sao.aspx.cs" Inherits="LogiVan.cam_nang_bac_tai_5_sao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #table-1 {
            width: 100%;
        }

        #banner {
            padding-left: 50px;
            padding-right: 50px;
            padding-bottom: 25px;
        }

        #sidebar {
            width: 30%;
            padding-left: 25px;
            vertical-align: top;
        }

            #sidebar h3 {
                color: orange;
                border-bottom: 1px dashed black;
            }

        #info {
            padding-right: 50px;
            text-align: justify;
        }

            #info h1, h2 {
                color: orangered;
            }

            #info a {
                text-decoration: none;
                color: orange;
            }

            #info table {
                border-collapse: collapse;
            }

            #info th, #info td {
                border: 1px solid black;
                padding: 10px;
            }

        .divider {
            border-bottom: 1px dashed black;
            width: 50%;
            margin-left: 25%;
        }

        .quote {
            font-weight: normal;
            font-style: italic;
            list-style: none;
        }

        .btn {
            width: 400px;
            height: 50px;
            border: none;
            border-bottom: 1px solid gray;
            background-color: whitesmoke;
            color: white;
            font-size: large;
        }

            .btn:hover {
                text-decoration: underline;
                color: blue;
            }

        #sidebar ul li a {
            text-decoration: none;
            color: orange;
        }

        .btn2 {
            border: none;
            border-bottom: 1px solid gray;
            background-color: whitesmoke;
            color: white;
            font-size: large;
            height: 70px;
            width: 100%;
        }

            .btn2:hover {
                text-decoration: underline;
                color: blue;
            }

        #tblQuanCom td, #tblQuanCom th {
            border: none;
            padding: 0;
        }

        #tblTramXang td, #tblTramXang th {
            border: none;
            padding: 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="banner">
        <asp:Image ID="Image1" runat="server" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/cam-nang-bac-tai-5-sao-banner.jpg" Width="100%" />
    </div>
    <table id="table-1">
        <tr>
            <td id="sidebar">
                <h3>NỘI DUNG</h3>
                <a href="#loi-mo-dau">
                    <asp:Button ID="Button1" runat="server" Text="Lời mở đầu" CssClass="btn" />
                </a>
                <br />
                <a href="#gioi-thieu">
                    <asp:Button ID="Button2" runat="server" Text="Giới thiệu chương trình Bác tài 5★" CssClass="btn" OnClick="Button2_Click" />
                </a>
                <div id="div_gt" style="display:none;" runat="server">
                    <ul>
                        <li>
                            <a href="#bac-tai-5-sao-la-gi">Chương trình bác tài 5★ là gì?
                            </a>
                        </li>
                        <li>
                            <a href="#quyen-loi-bac-tai-5-sao">Quyền lợi bác tài 5★
                            </a>
                        </li>
                        <li>
                            <a href="#lam-sao">Làm sao để trở thành bác tài 5★?
                            </a>
                        </li>
                    </ul>
                </div>
                <br />
                <a href="#ung-xu">
                    <asp:Button ID="Button3" runat="server" Text="Ứng xử của Bác tài 5★ gương mẫu" CssClass="btn" OnClick="Button3_Click" />
                </a>
                <div id="div_ux" style="display:none;" runat="server">
                    <ul>
                        <li>
                            <a href="#cach-ung-xu">
                                Cách ứng xử của Bác tài 5★
                            </a>
                        </li>
                        <li>
                            <a href="#nguyen-tac-lam-viec">
                                Nguyên tắc làm việc của Bác tài 5★
                            </a>
                        </li>
                        <li>
                            <a href="#dao-duc-nghe-nghiep">
                                Đạo đức nghề nghiệp của Bác tài 5★
                            </a>
                        </li>
                        <li>
                            <a href="#nhung-vi-pham">
                                Những vi phạm về tiêu chuẩn dịch vụ của LOGIVAN
                            </a>
                        </li>
                    </ul>
                </div>
                <br />
                <a href="#meo-vat">
                    <asp:Button ID="Button4" runat="server" Text="Mẹo vặt & câu hỏi thường gặp" CssClass="btn" OnClick="Button4_Click" />
                </a>
                <div id="div_meo" style="display:none;" runat="server">
                    <ul>
                        <li>
                            <a href="#meo-hay">
                                Mẹo hay cho Bác tài
                            </a>
                        </li>
                        <li>
                            <a href="#cac-vi-pham">
                                Các vi phạm thường gặp và mức phạt
                            </a>
                        </li>
                        <li>
                            <a href="#cau-hoi-thuong-gap">
                                Câu hỏi thường gặp
                            </a>
                        </li>
                        <li>
                            <a href="#quan-com">
                                Quán cơm có bãi đỗ xe tải
                            </a>
                        </li>
                        <li>
                            <a href="#tram-xang">
                                Trạm xăng dọc quốc lộ
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                Đố chút thôi
                            </a>
                        </li>
                    </ul>
                </div>
                <br />
                <a href="#loi-ket">
                    <asp:Button ID="Button5" runat="server" Text="Lời kết" CssClass="btn" />
                </a>
            </td>
            <td id="info">
                <h1 style="text-align: center;">CẨM NANG
                    <br />
                    BÁC TÀI 5★
                </h1>
                <h2 style="text-align: center;" id="loi-mo-dau">LỜI MỞ ĐẦU</h2>
                <p>
                    Chào mừng đến với thế giới Bác Tài 5★ của LOGIVAN!
                    <br />
                    <br />
                    Lâu nay, nhiều người vẫn nghĩ rằng để làm nghề tài xế chỉ cần biết lái xe là đủ rồi, có gì khó đâu. Nghĩ như vậy thì thiệt thòi cho cánh tài xế quá phải không ạ? Ngoài việc điều khiển tốt những "cỗ xe tải" cồng kềnh, chúng ta luôn phải đối mặt với rất nhiều khó khăn mỗi ngày trên những cung đường. Thế đấy, chẳng công việc nào là dễ cả và nghề tài xế cũng đòi hỏi kinh nghiệm và cái tâm của người làm nghề không thua gì bác sĩ đâu các bác tài nhỉ?
                    <br />
                    <br />
                    Đã bao giờ các bác gặp tình huống oái ăm với những chủ hàng khó tính? Các bác thường làm gì khi chuyến hàng gặp sự cố và không đến kịp giờ hẹn? Có khi nào bác tài tự hỏi rằng tại sao chủ hàng không gọi mình nữa? Làm sao tiết kiệm chi phí mỗi chuyến hàng và tăng thu nhập?... Vậy thì cẩm nang này sẽ giúp bác tài giải đáp những thắc mắc này đó.
                    <br />
                    <br />
                    Với những hướng dẫn chi tiết từ đội ngũ vận hành LOGIVAN cùng các kinh nghiệm được tập hợp từ các đồng nghiệp tài xế lâu năm trong nghề, hy vọng cuốn cẩm nang nhỏ này sẽ mang đến những thông tin hữu ích để các bác tài có thể vững tin cầm lái.
                    <br />
                    <br />
                    Ngoài ra, cuốn Cẩm nang này cũng đưa ra những tiêu chuẩn dịch vụ riêng của LOGIVAN. Tuy nhiên, hãy yên tâm rằng những tiêu chuẩn này được đặt ra không nằm ngoài mục đích giúp các bác tài nâng cao chất lượng dịch vụ, từ đó gia tăng thu nhập của mình.
                    <br />
                    <br />
                    Mong rằng "Cẩm nang Bác Tài 5★" cũng như ứng dụng LOGIVAN Chủ Xe sẽ luôn là những người bạn đồng hành thân thiết của các bác tài trên những cung đường xa.
                    <br />
                    <br />
                    Xin cám ơn.
                </p>
                <div class="divider"></div>
                <h2 style="text-align: center;" id="gioi-thieu">A. GIỚI THIỆU CHƯƠNG TRÌNH "BÁC TÀI 5 SAO"
                </h2>
                <div>
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/WEB_A.jpg" Height="500px" />
                </div>
                <h2 id="bac-tai-5-sao-la-gi">I. CHƯƠNG TRÌNH BÁC TÀI 5★ LÀ GÌ ?
                </h2>
                <p>
                    Bác Tài 5★ là chương trình tìm kiếm tài xế chất lượng cao được LOGIVAN triển khai với mục tiêu cùng nhau xây dựng cộng đồng tài xế chất lượng cao, vững về tay lái, đẹp trong ứng xử. Tham gia chương trình sẽ giúp các bác tài xế nâng cao năng lực để đáp ứng nhu cầu của ngành vận tải nói chung và dịch vụ vận chuyển hàng hóa nói riêng.
                </p>
                <h2 id="quyen-loi-bac-tai-5-sao">II. QUYỀN LỢI CỦA BÁC TÀI 5★
                </h2>
                <p>
                    Khi trở thành Bác Tài 5★, quyền lợi đầu tiên là các bác tài được trang bị một nguồn kiến thức khổng lồ về cách ứng xử, thái độ khi làm việc và những tiêu chuẩn dịch vụ trong ngành vận tải. Từ đó, dù chở hàng cho LOGIVAN hay cho các khách hàng khác, các bác tài xế cũng có thể dễ dàng vận dụng những kiến thức này để có một chuyến hàng trọn vẹn và nâng cao uy tín của mình trong mắt chủ hàng.
                    <br />
                    <br />
                    Đồng thời, Bác Tài 5★ còn nhận được những quyền lợi thiết thực như sau:
                </p>
                <ul>
                    <li>
                        <strong>Được chủ hàng ưu tiên chọn để vận chuyển đơn hàng.</strong>
                        <p>LOGIVAN sẽ chủ động thông báo danh sách các Bác tài đã nhận chứng nhận Bác tài 5* tới chủ hàng, cũng như cập nhật thường xuyên danh sách các Bác tài 5* tại <a href="#">đây</a>. Nhờ đó, các bác tài có thể dễ dàng hơn trong việc nhận được sự tin tưởng và lựa chọn để chuyển hàng từ chủ hàng.</p>
                    </li>
                    <li>
                        <strong>Được nhận 01 bộ quà tặng VIP của LOGIVAN trị giá 1.500.000VNĐ.</strong>
                        <p>Bộ quà tặng này gồm cặp áo thun LOGIVAN, nón LOGIVAN, tem phản quang, áo mưa LOGIVAN kèm một số quà tặng hữu dụng khác dành cho các bác tài xe tải.</p>
                    </li>
                    <li>
                        <strong>Được nhận giấy chứng nhận Tài Xế 5★ từ LOGIVAN.</strong>
                        <p>Trong các chuyến hàng của LOGIVAN, giấy chứng nhận sẽ là bằng chứng rõ ràng nhất cho năng lực và độ tin cậy của các bác. Bên cạnh đó, trong từng đơn hàng, LOGIVAN cũng sẽ chủ động giới thiệu với chủ hàng người phụ trách đơn hàng chính là Bác Tài 5★. Thật "xịn" phải không ạ?</p>
                    </li>
                    <li>
                        <strong>Nhiều quyền lợi khác như giảm giá bảo dưỡng xe, sửa xe, đổ xăng...</strong>
                        <p>Tùy từng loại xe, LOGIVAN sẽ phối hợp với đối tác để mang đến những ưu đãi cho các bác tài trong việc sửa chữa hay bảo dưỡng xe của mình, qua đó, góp phần giúp các chuyến hàng được vận chuyển suôn sẻ, an toàn và thuận lợi hơn.</p>
                    </li>
                </ul>
                <h2 id="lam-sao">III. ĐIỀU KIỆN TRỞ THÀNH BÁC TÀI 5★?</h2>
                <p>Để nhận danh hiệu Bác Tài 5★, các bác tài chỉ cần đủ 03 yếu tố sau:</p>
                <ul>
                    <li>
                        <strong>Trước tiên bác tài phải là tài xế hoạt động trên ứng dụng LOGIVAN Chủ Xe.</strong>
                        <p>Đây là ứng dụng dành cho tài xế xe tải, xe container trên toàn quốc với các loại xe đa dạng có trọng tải từ 1 tấn đến trên 30 tấn, như: xe tải thùng kín, xe tải thùng mui bạt, xe đầu kéo container. Các bác tài có thể xem cách tải và sử dụng ứng dụng tại <a href="https://www.youtube.com/watch?v=e5NJhM7l00Y&t=10s">đây</a> hoặc xem tại phần C – mục III.</p>
                    </li>
                    <li>
                        <strong>Bác tài phải Tối thiểu 5 đơn có giá cước LOGINOW/ tháng trong 2 tháng liên tiếp, tính từ 1/4/2020 trên ứng dụng LOGIVAN Chủ Xe.</strong>
                        <p>LOGIVAN không quy định cụ thể tuyến chạy hay tổng giá cước bao nhiêu nên các bác tài xế có thể dễ dàng đạt được điều kiện này bằng cách tích cực nhận đơn hàng trên ứng dụng LOGIVAN Chủ Xe nhé! Nếu các bác chưa biết LOGINOW là gì có thể xem thêm tại <a href="loginow-dich-vu-chuyen-hang-5-sao-da-xuat-hien.aspx">đây</a>.</p>
                    </li>
                    <li>
                        <strong>Bác tài cần đảm bảo chất lượng dịch vụ vận chuyển của mình.</strong>
                        <p>Cụ thể, bác tài cần tránh bị chủ hàng đánh giá xấu trên Ứng dụng Chủ xe, hay phạm vào các vi phạm nghiêm trọng của LOGIVAN (mục IV-1) hoặc bị nhắc nhở quá 03 lần khi vi phạm các nguyên tắc ứng xử của Bác Tài 5 (mục B).</p>
                    </li>
                </ul>
                <p>
                    LOGIVAN không quy định cụ thể tuyến chạy hay tổng giá cước bao nhiêu nên các bác tài xế có thể dễ dàng đạt được điều kiện này bằng cách tích cực nhận đơn hàng trên ứng dụng LOGIVAN Chủ Xe nhé! Nếu các bác chưa biết LOGINOW là gì có thể xem thêm tại <a href="loginow-dich-vu-chuyen-hang-5-sao-da-xuat-hien.aspx">đây</a>.
                    <br />
                    <br />
                    Thật đơn giản, chỉ cần đủ 03 điều kiện trên, hệ thống sẽ tự động thêm logo Bác Tài 5★ vào tài khoản của bác tài trên hệ thống!
                </p>
                <div class="divider"></div>
                <h2 style="text-align: center;" id="ung-xu">B. ỨNG XỬ CỦA BÁC TÀI 5★ GƯƠNG MẪU
                </h2>
                <div>
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/WEB_B.jpg" Height="500px" />
                </div>
                <p>
                    Nhận và hoàn thành được nhiều đơn hàng chưa hẳn đã là đảm bảo chất lượng dịch vụ chuyển hàng. LOGIVAN luôn khuyến khích các bác tài nâng cao chất lượng dịch vụ thông qua tác phong phục vụ lịch sự, ân cần và chuyên nghiệp. Dưới đây là những quy tắc ứng xử, nguyên tắc nghề nghiệp được chúng tôi tổng hợp lại từ các bác tài nhận được nhiều đơn hàng nhất tại LOGIVAN.
                    <br />
                    <br />
                    Ngoài ra chúng tôi cũng nêu ra một số nội quy, quy tắc của LOGIVAN để giúp các bác tài nắm thông tin và tránh vi phạm. Tất cả những hành vi vi phạm quy định đều sẽ ảnh hưởng đến mối quan hệ cộng tác mà chúng tôi luôn trân trọng.
                </p>
                <h2 id="cach-ung-xu">I. CÁCH ỨNG XỬ CỦA "BÁC TÀI 5★"</h2>
                <p>
                    Để luôn có hàng chạy, nghĩ ngay đến "thần chú" 3 nhớ – 4 đừng – 5 hãy – 6 nên!
                    <br />
                    <br />
                    <strong>1. "3 Nhớ"</strong>
                    <br />
                    <br />
                    Nhớ những điều đơn giản này để tạo thiện cảm với chủ hàng nha các bác tài ơi!
                </p>
                <ul class="quote">
                    <li>
                        <strong>NHỚ</strong> mang theo một <strong>NỤ CƯỜI</strong>
                    </li>
                    <li>Tươi vui niềm nở, mọi người thích ngay!</li>
                </ul>
                <p>Dù chở hàng cho LOGIVAN hay chở cho mối quen, dù chuyến dài hay chuyến ngắn, chỉ cần bác tài cười tươi khi gặp chủ hàng, cộng thêm thật nhiều sự niềm nở và nhiệt tình, đảm bảo là chủ hàng sẽ vui ngay, có khi họ còn dễ tính với mình hơn nhiều luôn đó bác tài. Tin LOGIVAN đi!</p>
                <ul class="quote">
                    <li>
                        <strong>NHỚ</strong> trao nhau một <strong>LỜI CHÀO</strong>
                    </li>
                    <li>Chào nhau một tiếng, thế nào cũng vui!</li>
                </ul>
                <p>
                    Ông bà ta có câu "Lời chào cao hơn mâm cỗ", thế nên, tiếc gì một lời chào nồng nhiệt khi gặp khách hàng bác tài ơi. Chở xong chuyến này mà khách hàng hài lòng thì khả năng cao chuyến sau gặp lại nữa đó! À, bác tài cũng nên nhớ, nếu gặp những khách hàng khó tính thì luôn giữ bình tĩnh và thái độ tích cực nhất nha!
                </p>
                <ul class="quote">
                    <li>
                        <strong>NHỚ</strong> luôn ăn mặc <strong>GỌN GÀNG</strong>
                    </li>
                    <li>Tinh tươm sạch sẽ chủ hàng mến ngay!
                    </li>
                </ul>
                <p>LOGIVAN biết rằng các bác tài nhà mình đều thích phong cách bụi bặm, phong trần. Giờ chỉ cần ăn mặc gọn gàng thêm chút nữa là "ngầu ngất ngây" luôn các bác ơi! Ngoài ra, LOGIVAN cũng khuyến khích bác tài nên mặc quần dài, áo có cổ và đi giày. Với những đơn hàng đặc biệt, khi nhân viên LOGIVAN yêu cầu thêm đồ bảo hộ như mũ, áo, giày bảo hộ... các bác tài vui lòng thực hiện để đảm bảo an toàn nhé!</p>
                <p>
                    <strong>2. "4 Đừng"</strong>
                </p>
                <p>Đây là 4 điều các bác tài nhà mình cần ghi nhớ để luôn có tinh thần tốt nhất trên những chuyến hàng xa nha!</p>
                <ul class="quote">
                    <li>
                        <strong>ĐỪNG QUÊN sức khỏe bản thân.</strong>
                    </li>
                    <li>Ăn no, ngủ kỹ, tinh thần mới cao!</li>
                </ul>
                <p>Biết là các bác tài nhà mình thường thích nhâm nhi nhưng dù sao thì cũng đừng coi thường giấc ngủ nha. Ngủ ít nhất 5 – 6 tiếng mỗi ngày để luôn tỉnh táo và có thể gắn bó lâu dài với nghề nha các bác tài.</p>
                <ul class="quote">
                    <li>
                        <strong>ĐỪNG QUÊN tra trước tuyến đường.</strong>
                    </li>
                    <li>Có đường cấm tải, có đường đông xe.</li>
                </ul>
                <p>Làm nghề cầm lái, hẳn là các bác tài đều rành đường rồi. Tuy nhiên, các bác tài cũng đừng quên cập nhật thông tin về tuyến đường mình sắp chở hàng nha. Biết đâu có những tuyến đường đang bị cấm hay sửa chữa thì sao?</p>
                <ul class="quote">
                    <li>
                        <strong>ĐỪNG QUÊN trật tự giao thông.</strong>
                    </li>
                    <li>Ít còi, không lạng, cũng không vượt làn.</li>
                </ul>
                <p>Không chỉ tuân thủ luật giao thông trên những tuyến đường chính, các bác tài cũng hãy để ý những quy định riêng tại các khu công nghiệp, kho bãi công ty hay các khu đông dân nữa đó. Mỗi nơi có một quy định riêng nên mình tôn trọng người ta vẫn là điều nên làm nè.</p>
                <ul class="quote">
                    <li>
                        <strong>ĐỪNG VỘI nhấn mạnh chân ga.</strong>
                    </li>
                    <li>An toàn trên hết, cả nhà đều mong.</li>
                </ul>
                <p>
                    Nếu xe có thể đến trễ thì các bác tài nhà mình có thể gọi thông báo cho chủ hàng là được. Đừng vì sợ trễ hẹn mà nhấn ga chạy nhanh nha. Nhanh một phút mà có thể chậm cả đời đấy
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/2639.svg" Height="15px" />
                    Vì một chuyến hàng an toàn và văn minh, các bác tài luôn nhớ điều này nhé!
                </p>
                <p>
                    <strong>3. "5 Hãy"</strong>
                </p>
                <p>
                    Chỉ với 5 hành động đơn giản này, các bác tài đã tạo được thiện cảm và đánh giá tích cực từ chủ hàng rồi đó!
                </p>
                <ul class="quote">
                    <li>
                        <strong>HÃY ĐÚNG HẸN</strong> với chủ hàng.
                    </li>
                    <li>Nhận hàng đúng lúc, giao hàng đúng nơi.</li>
                </ul>
                <p>
                    Bác tài đừng quên giao hàng đúng giờ và đúng địa điểm đã trao đổi để chủ hàng đỡ sốt ruột ngóng trông, tránh lỡ việc của họ, và cũng là để nâng cao hình ảnh chuyên nghiệp của mình trong mắt chủ hàng đó bác tài ơi!
                </p>
                <ul class="quote">
                    <li>
                        <strong>HÃY</strong> chất hàng hóa <strong>GỌN GÀNG.</strong>
                    </li>
                    <li>Chẳng sợ rơi vỡ, tránh hàng hư hao.</li>
                </ul>
                <p>
                    Thông thường, mỗi khi nhận hàng, bác tài và đội ngũ nhân viên của chủ hàng sẽ cùng chất hàng hóa lên xe. Lúc này, các bác lưu ý những kỹ thuật bảo quản đối với từng mặt hàng cụ thể để hạn chế tình trạng hàng hóa bị hư hỏng hay vỡ trong quá trình vận chuyển. Từ đó, tránh những thiệt hại và đền bù không đáng có cho các bác tài.
                </p>
                <ul class="quote">
                    <li>
                        <strong>HÃY LIÊN HỆ</strong> trước khi giao.
                    </li>
                    <li>Để khi xe đến khỏi chờ đợi lâu!
                    </li>
                </ul>
                <p>
                    Bác tài ơi, chỉ cần một cuộc gọi báo trước thôi, chủ hàng sẽ chủ động chuẩn bị, giúp cả bác tài lẫn chủ hàng rút ngắn thời gian chờ đợi, nhất là những chuyến hàng giao vào khung giờ nghỉ trưa hay sau giờ làm việc.
                </p>
                <ul class="quote">
                    <li>
                        <strong>HÃY</strong> dỡ hàng hóa <strong>NHẸ NHÀNG.</strong>
                    </li>
                    <li>Tránh bị hỏng hóc, chuyến hàng vẹn nguyên.
                    </li>
                </ul>
                <p>
                    Thử hình dung nếu bác tài nhận được thông báo các khoản thiệt hại từ việc hàng hư hỏng do không dỡ hàng cẩn thận, vậy thì thật đáng tiếc? Thế nên, cẩn tắc vô áy náy. Nếu chuyến hàng vẹn nguyên, Chủ hàng sẽ tin tưởng hơn và có thể giao tiếp những đơn khác đấy!
                </p>
                <ul class="quote">
                    <li>
                        <strong>HÃY</strong> mang theo sự <strong>NHIỆT TÌNH.</strong>
                    </li>
                    <li>Chủ hàng cần giúp, thì mình phụ ngay!
                    </li>
                </ul>
                <p>
                    Đừng ngại giúp chủ hàng một tay trong lúc chất hàng hay dỡ hàng các bác tài nhé. Có thể lúc đầu mình thiệt công một chút nhưng bù lại chủ hàng sẽ thích và đánh giá cao sự nhiệt tình này đó.
                </p>
                <p>
                    <strong>4. "6 Nên"
                    </strong>
                </p>
                <p>
                    Đây là những điều mà bác tài cần thực hiện đầy đủ để trở thành Bác Tài 5★ của LOGIVAN nha.
                </p>
                <ul class="quote">
                    <li>
                        <strong>NÊN</strong>
                        cung cấp
                        <strong>RÕ THÔNG TIN.</strong>
                    </li>
                    <li>Giấy tờ đầy đủ, Hình in rõ ràng.
                    </li>
                </ul>
                <p>
                    Một trong những yêu cầu đầu tiên khi đăng nhập ứng dụng LOGIVAN Chủ Xe là các bác tài cần cung cấp đầy đủ thông tin của mình theo hướng dẫn. Điều này sẽ giúp bác tài dễ dàng nhận được đơn hàng vì LOGIVAN chỉ phân phối đơn hàng cho những bác tài có đầy đủ thông tin đó ạ!
                </p>
                <ul class="quote">
                    <li>
                        <strong>NÊN</strong>
                        lựa chọn đơn kỹ càng.
                    </li>
                    <li>Một khi đã nhận là hàng phải giao.
                    </li>
                </ul>
                <p>
                    Bác tài hãy chọn đơn chở hàng thật kỹ dựa trên cước phí mong muốn, tuyến đường phù hợp, tình trạng xe của mình.... nha. Vì khi bác tài đã nhận đơn thì hệ thống của LOGIVAN sẽ tự động thực hiện các bước tiếp theo. Nếu "lỡ" chọn đơn nhưng không chuyển hàng được, bác tài hãy liên hệ ngay với LOGIVAN để được trợ giúp nhé!
                </p>
                <ul class="quote">
                    <li>
                        <strong>NÊN</strong>
                        đi
                        <strong>ĐÚNG XE</strong>
                        nhận hàng.
                    </li>
                    <li>Nếu biển số khác, chủ hàng chẳng giao.
                    </li>
                </ul>
                <p>
                    Trong trường hợp có đổi xe so với xe ban đầu, bác tài đừng quên báo với LOGIVAN để tránh tình trạng bị chủ hàng từ chối chuyển hàng nha!
                </p>
                <ul class="quote">
                    <li>
                        <strong>NÊN BÁO TÌNH TRẠNG</strong>
                        chuyến hàng.
                    </li>
                    <li>Cập nhật chi tiết, chủ hàng an tâm!
                    </li>
                </ul>
                <p>
                    Bác tài đừng quên liên tục cập nhật trạng thái đơn hàng trên ứng dụng LOGIVAN Chủ Xe để LOGIVAN và Chủ Hàng có thể cùng cập nhật thông tin chuyến hàng và chủ động phối hợp khi hàng đến nhé!
                </p>
                <ul class="quote">
                    <li>
                        <strong>NÊN GỌI TRỢ GIÚP</strong>
                        khi cần.
                    </li>
                    <li>LOGIVAN đến thật gần, thật nhanh!
                    </li>
                </ul>
                <p>
                    Việc chuyển hàng đường dài sẽ khó tránh khỏi những sự cố ngoài ý muốn. Tuy nhiên, bác tài an tâm, khi gặp sự cố, ngoài việc chủ động xử lý tại hiện trường, bác tài cũng đừng quên liên hệ với LOGIVAN qua Hotline 0333.13.16.18 để nhận được sự hỗ trợ kịp thời từ LOGIVAN nhé!
                </p>
                <ul class="quote">
                    <li>
                        <strong>NÊN NHỜ</strong>
                        chủ hàng
                        <strong>XÁC NHẬN.</strong>
                    </li>
                    <li>Hàng đã đầy đủ, chỉ cần thế thôi!
                    </li>
                </ul>
                <p>
                    Sau khi giao hàng đến nơi, bác tài nên yêu cầu Chủ Hàng ký vào biên bản xác nhận khi giao – nhận hàng hóa để tránh những trường hợp đáng tiếc xảy ra, mà lại không phải do lỗi mình nha.
                </p>
                <h2 id="nguyen-tac-lam-viec">II. NGUYÊN TẮC LÀM VIỆC CỦA "BÁC TÀI 5★"
                </h2>
                <p>
                    LOGIVAN luôn mong muốn và hỗ trợ bác tài tối đa để mỗi chuyến xe chở hàng đều thành công tốt đẹp. Thế nhưng, để có được điều đó, chỉ mình nỗ lực của LOGIVAN thôi là chưa đủ, mà luôn cần có sự đóng góp lớn lao của các bài tài. Dưới đây là những nguyên tắc nghiệp vụ mà Bác Tài 5★ cần nhớ để tạo nên những hành trình chở hàng tốt đẹp nhất nhé!
                </p>
                <p>
                    <strong>1. Nhận đơn hàng
                    </strong>
                </p>
                <p>
                    Là bước đầu tiên trong hành trình vận chuyển 1 đơn hàng, việc cẩn thận ngay từ việc trao đổi thông tin đơn hàng là rất cần thiết. Để có một khởi đầu suôn sẻ, các bác tài lưu ý những điều sau:
                </p>
                <ul>
                    <li>Chỉ đồng ý nhận đơn hàng khi có đủ năng lực vận chuyển và đảm bảo hoàn thành đơn hàng theo đúng yêu cầu: Có đúng loại xe, có thể bốc hàng đúng thời gian, địa điểm.
                    </li>
                    <li>Các nhân viên điều xe tại LOGIVAN luôn cung cấp đầy đủ và chính xác thông tin đơn hàng cho bác tài ngay khi trao đổi. Tuy nhiên, để đảm bảo không có sai sót nào, bác tài nên xác nhận lại thông tin bằng việc trao đổi qua điện thoại và tin nhắn. Đặc biệt, bác tài phải nắm rõ các yêu cầu về thùng xe, loại xe, giấy tờ, trang phục, thời gian, địa điểm bốc dỡ hàng.
                    </li>
                    <li>Cung cấp đầy đủ và chính xác thông tin xe và thông tin cá nhân của bác tài cho nhân viên LOGIVAN.
                    </li>
                    <li>Không được nhận đơn hàng giùm bạn bè, người thân, đồng nghiệp hoặc nhận đơn hàng xong lại chuyển cho người khác vận chuyển. Trong trường hợp đó, hãy báo lại với nhân viên LOGIVAN và kết nối thông tin để bác tài được chỉ định thay thế nhận đơn trao đổi trực tiếp với LOGIVAN.
                    </li>
                </ul>
                <p>
                    <strong>2. Bốc hàng
                    </strong>
                </p>
                <p>
                    Sau khi xác nhận đầy đủ các thông tin ban đầu và chấp nhận vận chuyển đơn hàng, bác tài đừng quên đến bốc hàng theo đúng thời gian và địa điểm đã hẹn trước. Nếu có bất cứ điều gì phát sinh hoặc thay đổi so với thông tin thỏa thuận ban đầu, bác tài hãy gọi ngay cho nhân viên LOGIVAN để được hỗ trợ giải quyết kịp thời.
                </p>
                <p>
                    Đồng thời, bác tài cũng hãy chủ động chuẩn bị thật tốt theo các bước sau:
                </p>
                <ul>
                    <li>Gọi điện cho chủ hàng trước khi đến bốc hàng để đảm bảo chủ hàng nắm được thông tin, chuẩn bị hàng hóa và tránh những thay đổi đột xuất về thông tin đơn hàng. Nếu có bất kỳ sự thay đổi nào, bác tài không nên tự ý trao đổi, xử lý với chủ hàng mà hãy báo với nhân viên LOGIVAN để đảm bảo được hỗ trợ xử lý tốt nhất.
                    </li>
                    <li>Bác tài đến nhận hàng đi đúng xe đã thông báo với LOGIVAN. Nếu cần đổi xe hoặc không thể mang đúng xe thỏa thuận ban đầu, hãy thông báo trước với nhân viên LOGIVAN trước khi đi lấy hàng. Bởi vì chủ hàng sẽ từ chối giao hàng nếu xe không đúng biển số, khi đó, bác tài phải tự chịu trách nhiệm.
                    </li>
                    <li>Duy trì hình ảnh chuyên nghiệp đúng với Quy tắc ứng xử của Bác Tài 5★ LOGIVAN khi đến bốc hàng cũng như trong suốt chuyến đi: Trang phục lịch sự, luôn đúng giờ, giao tiếp nhẹ nhàng, ứng xử văn minh.
                    </li>
                    <li>Trước khi bốc hàng lên xe, bác tài hãy chủ động kiểm đếm hàng hóa theo thông tin LOGIVAN cung cấp. Sau khi đảm bảo hàng hóa đúng như thông tin đơn hàng, bác tài hãy yêu cầu người giao hàng ký nhận biên bản giao hàng (BBGH). Trường hợp người giao hàng không có mẫu BBGH của riêng họ thì bác tài sử dụng mẫu chuẩn do LOGIVAN cung cấp.
                    </li>
                    <li>Trong quá trình bốc hàng, nếu bác tài cảm thấy hàng hóa không được xếp an toàn, hãy tạm dừng việc bốc hàng và liên lạc với nhân viên LOGIVAN để được hướng dẫn. Tránh trường hợp hàng hóa bị hư hỏng khi vận chuyển thì bác tài phải chịu trách nhiệm.
                    </li>
                    <li>Sau khi bốc hàng, bác tài cần xác nhận đã bốc hàng thành công qua Ứng dụng LOGIVAN Chủ Xe hoặc qua Điều phối viên phụ trách và bắt đầu xuất phát.
                    </li>
                    <li>Nếu thời gian chờ đến lượt, xếp hàng lâu hơn hơn thời gian thỏa thuận thì hãy bình tĩnh, liên lạc với nhân viên LOGIVAN để được hỗ trợ kịp thời. Tránh những xung đột không đáng có tại nơi bốc hàng.
                    </li>
                </ul>
                <p>
                    <strong>3. Vận chuyển hàng
                    </strong>
                </p>
                <p>
                    Đây là phần quan trọng nhất trong quá trình vận chuyển đơn hàng. Nếu việc nhận đơn hàng và bốc dỡ hàng được bác tài thực hiện cẩn thận rồi thì khi vận chuyển hàng hóa sẽ không có gì phải lo lắng nhiều, chỉ cần đảm bảo một số điều sau:
                </p>
                <ul>
                    <li>Chuyển hàng đúng lộ trình, đến đúng điểm dỡ hàng đã thỏa thuận.
                        <br />
                        Nếu trong quá trình vận chuyển, bác tài gặp sự cố dẫn đến hư hỏng hàng, ảnh hưởng tiến độ giao hàng..., bác tài cần báo ngay cho nhân viên LOGIVAN để có phương án khắc phục và xử lý kịp thời.
                    </li>
                    <li>Thường xuyên kiểm tra hàng hóa trong quá trình vận chuyển: Kiểm tra dây chằng, cửa thùng xe, kiểm tra và điều chỉnh nhiệt độ thùng xe nếu đi container lạnh...
                    </li>
                    <li>Lái xe an toàn cũng là một yếu tố quan trọng nhất khi chuyển hàng. Hãy luôn tuân thủ luật giao thông, tránh việc cua gấp hay thắng gấp và đừng vội vàng phóng nhanh, vượt ẩu. Nếu thời gian giao hàng yêu cầu quá gấp so với thời gian thực tế cần, đừng ngại trao đổi thẳng thắn với nhân viên LOGIVAN để được hỗ trợ.
                    </li>
                    <li>Nếu trên tuyến đường giao hàng có một đoạn đường cấm phát sinh với dự kiến ban đầu, bác tài nên bình tĩnh trao đổi với chủ hàng và báo lại cho nhân viên LOGIVAN để được hỗ trợ giải quyết, đảm bảo quyền lợi cho cả 2 bên.
                    </li>
                </ul>
                <p>
                    <strong>4. Dỡ hàng
                    </strong>
                </p>
                <p>
                    Nếu thực hiện đúng 3 bước trên, bác tài sắp có một đơn hàng thành công rồi. Tại bước dỡ hàng, bác tài cần lưu ý:
                </p>
                <ul>
                    <li>Khi xe gần đến nơi dỡ hàng (trước 1 tiếng), bác tài cần thông báo cho nhân viên LOGIVAN để LOGIVAN báo cho chủ hàng. Tuyệt đối không giao hàng trước khi có sự đồng ý của LOGIVAN.
                    </li>
                    <li>Khi giao hàng, hãy chủ động kiểm tra hàng một lần nữa và so sánh với thông tin hàng hóa nhận ban đầu để đảm bảo hành trình vận chuyển an toàn và chất lượng. Sau khi đảm bảo không có sai sót nào, bác tài phải yêu cầu người dỡ hàng kiểm tra và ký nhận vào biên bản giao hàng. Nếu có sự cố hư hỏng hay mất hàng, bác tài cũng cần xác nhận và chú thích vào biên bản.
                    </li>
                    <li>Nếu thời gian chờ dỡ hàng lâu hơn thời gian đã hẹn trước, bác tài hãy báo cho nhân viên LOGIVAN hỗ trợ xử lý, không nên tự ý giải quyết hoặc tỏ thái độ tiêu cực.
                    </li>
                    <li>Sau khi dỡ hàng, bác tài vui lòng gọi điện cho nhân viên LOGIVAN xác nhận hoàn thành đơn hàng.
                    </li>
                </ul>
                <p>
                    <strong>5. Thanh toán
                    </strong>
                </p>
                <p>
                    Sau khi hoàn tất đơn hàng, để làm thủ tục thanh toán tiền cước, bác tài hãy gửi về công ty LOGIVAN các giấy tờ sau: Biên bản giao nhận, hóa đơn xăng dầu, vé cầu đường và các chứng từ khác nếu có. Nhân viên LOGIVAN sẽ tiến hành kiểm tra và thanh toán cước cho bác tài sau khi xác nhận mọi thông tin đều đã chính xác.
                </p>
                <h2 id="dao-duc-nghe-nghiep">III. ĐẠO ĐỨC NGHỀ NGHIỆP CỦA "BÁC TÀI 5★"
                </h2>
                <p style="font-style: italic;">
                    Thật buồn khi nhiều người vẫn cứ nghĩ rằng nghề tài xế là "hung thần xa lộ", là "thằng này thằng nọ"... dù rằng các bác tài xế có vai trò thực sự quan trọng trong việc lưu thông hàng hóa, đóng góp vào sự phát triển của nền kinh tế quốc dân.
                </p>
                <p>
                    Nhưng, nói đi cũng phải nói lại...
                </p>
                <p>
                    ...nhiều bác tài đôi khi không tự chủ được hành động của mình khi cầm lái, dẫn đến những thiệt hại nghiêm trọng, ảnh hưởng đến hình ảnh chung của các bác tài.
                </p>
                <p>
                    Do đó, để nâng cao hình ảnh nghề "cầm lái" cũng như giúp mọi người có cái nhìn thiện cảm hơn với nghề, các bác tài xế nhà mình "bỏ túi nhẹ" 8 điều này nhé!
                </p>
                <p>
                    <strong>Nắm vững các quy định của Pháp luật có liên quan đến trật tự an toàn giao thông và kinh doanh vận tải, tự giác chấp hành đúng các quy định đó.
                    </strong>
                </p>
                <p>
                    Khi lưu thông xe tải hay các loại phương tiện khác, bác tài cần nắm rõ các quy định về an toàn giao thông nha. Lời khuyên này tưởng chừng như thừa nhưng thực ra việc chấp hành tốt các quy định của Pháp Luật vừa đảm bảo an toàn cho chính bác tài và chuyến hàng, vừa đảm bảo an toàn cho người khác đó các bác ạ.
                </p>
                <p>
                    <strong>Có thái độ thân thiện, hợp tác, sẵn sàng giúp đỡ đồng nghiệp trong mọi hoàn cảnh khó khăn.
                    </strong>
                </p>
                <p>
                    Sự cố là điều khó tránh khỏi trên mỗi chặng đường, nhất là với các bác tài chạy tuyến dài. Lúc đó, thêm một cánh tay giúp đỡ thì khó khăn được vơi đi nửa phần. Vì vậy, các bác tài xế nhà mình luôn giữ tinh thần tương trợ đồng nghiệp nhé! Chính tinh thần tương trợ lẫn nhau sẽ góp phần xây dựng một cộng đồng tài xế văn minh và ấm tình bạn hữu.
                </p>
                <p>
                    <strong>Có mối quan hệ đúng mực, nghiêm túc với người thi hành công vụ. Có thái độ tôn trọng, cầu thị, nếu sai nhìn nhận sửa sai, chấp hành xử phạt. Nếu đúng thì trình bày, giải thích rõ ràng; không tiếp tay cho tiêu cực.
                    </strong>
                </p>
                <p>
                    Thật chẳng vui nếu đang cầm lái mà bị công an "thổi" vào. Lúc đó, bác tài nhà mình cứ bình tĩnh, cư xử văn minh và linh hoạt giải quyết sự việc nhé. Tuy nhiên, bản thân bác tài cũng nên cẩn thận trước vẫn tốt hơn đó ạ. Luôn chuẩn bị đầy đủ giấy tờ, thông tin hàng hóa và lái xe cẩn thận, tôn trọng luật giao thông nha các bác tài ơi!
                </p>
                <p>
                    <strong>Tôn trọng người tham gia giao thông đường bộ và ý thức bảo vệ môi trường.
                    </strong>
                </p>
                <p>
                    Văn minh giao thông không chỉ đến từ việc tôn trọng và nhường nhịn các xe khác trên đường mà còn thể hiện trong việc sử dụng còi xe. Bác tài chỉ sử dụng còi trong trường hợp cần thiết và hạn chế bấm còi khi đi qua khu dân cư, trường học, bệnh viện nhé. Cũng đừng sử dụng đèn chiếu xa khi tránh nhau vào ban đêm tại khu dân cư nha bác tài.
                </p>
                <p>
                    <strong>Thực hiện đầy đủ trách nhiệm với khách hàng và đơn vị vận tải đang hợp tác.
                    </strong>
                </p>
                <p>
                    Là một Bác Tài 5★, hẳn các bác sẽ luôn lưu ý điều này đúng không ạ? Không chỉ hoàn thành tốt nhiệm vụ của mình mà còn góp phần nâng cao hình ảnh của bản thân cũng như công ty vận tải mà mình đang hợp tác nữa đó bác tài.
                </p>
                <p>
                    <strong>Có ý thức tổ chức kỷ luật và trách nhiệm xây dựng đối với doanh nghiệp.
                    </strong>
                </p>
                <p>
                    Doanh nghiệp nói riêng và chủ hàng nói chung chính là những người đã, đang và sẽ gắn bó cùng bác tài lâu dài trong sự nghiệp "cầm lái". Nhiều bác tài vẫn nói đùa rằng "Chủ hàng là người mang cơm đến cho các bác tài xế". Thế nên, có trách nhiệm với họ cũng chính là có trách nhiệm với cuộc sống của chính mình nha các bác tài!
                </p>
                <p>
                    <strong>"Yêu xe như yêu con. Quý xăng như quý máu".
                    </strong>
                </p>
                <p>
                    Xe và xăng là nguồn sống nên bác tài nào cũng yêu xe và bảo quản xe mình đúng không ạ? Đừng quên bảo dưỡng xe định kỳ để xe luôn vận hành tốt nhất nhé. Ngoài ra, để tiết kiệm xăng, nhất là hạn chế chạy rỗng chiều về, các bác nên tích cực mở app LOGIVAN Chủ Xe để nhận đơn hàng, lấp đầy xe nha.
                </p>
                <p>
                    <strong>Có lối sống lành mạnh, khiêm tốn, có văn hoá, có tác phong làm việc chuyên nghiệp, không tham gia vào các tệ nạn xã hội.
                    </strong>
                </p>
                <p>
                    Biết là các bác tài sẽ có những sở thích và đam mê riêng trên hành trình "cầm lái" nhưng dù sao đi nữa, hướng đến một lối sống lành mạnh và tích cực không chỉ có ích cho bản thân mình mà còn góp phần nâng cao hình ảnh của nghề tài xế nữa ạ.
                </p>
                <p>
                    8 điều này được LOGIVAN đưa ra dựa trên chương trình đào tạo giấy phép lái xe ô tô của Tổng cục đường bộ Việt Nam nhằm hướng đến một cộng đồng tài xế văn minh và lành mạnh, chuyên nghiệp. Là các Bác Tài 5★, các bác tài nhà mình đừng bỏ qua những điều này nhé!
                </p>
                <h2 id="nhung-vi-pham">IV. NHỮNG VI PHẠM VỀ TIÊU CHUẨN DỊCH VỤ CỦA LOGIVAN
                </h2>
                <p>
                    Tham gia vào mạng lưới LOGIVAN, bên cạnh được hưởng những quyền lợi dành cho Bác Tài 5★, bác tài cũng cần tuân thủ những quy định riêng dưới đây để hướng đến một cộng đồng tài xế chuyên nghiệp, minh bạch và cùng phát triển.
                </p>
                <p>
                    <strong>1. Những hành vi bác tài cần lưu ý
                    </strong>
                </p>
                <p>
                    <strong>Hành vi đặc biệt nghiêm cấm
                    </strong>
                </p>
                <ul>
                    <li>Lợi dụng chương trình khuyến mãi hợp tác với chủ hàng tạo đơn hàng ảo để hưởng chênh lệch.
                    </li>
                    <li>Giả mạo thông tin của người khác để đăng ký tài khoản trên LOGIVAN nhằm mục đích bất chính.
                    </li>
                    <li>Làm giả giấy tờ để đăng ký tài khoản trên LOGIVAN và/hoặc đăng ký nhiều tài khoản nhằm mục đích trục lợi.
                    </li>
                    <li>Sử dụng ứng dụng "LOGIVAN Chủ Hàng" để tạo đơn hàng ảo mà không có nhu cầu vận hành thực tế.
                    </li>
                    <li>Sử dụng phần mềm hoặc ứng dụng khác để can thiệp vào hệ thống LOGIVAN nhằm lấy cắp, phá hủy thông tin, thay đổi, tác động đến giá cước của chuyến hàng.
                    </li>
                    <li>Có hành vi tác động trực tiếp hoặc gián tiếp đến thể chất và tinh thần (gạ gẫm, quấy rối, thô tục, bạo lực) với nhân viên LOGIVAN, chủ hàng hoặc những người có liên quan.
                    </li>
                    <li>Lái xe nguy hiểm gây tai nạn nghiêm trọng hoặc gây thiệt hại về hàng hóa, tài sản, con người.
                    </li>
                    <li>Cho người khác sử dụng tài khoản LOGIVAN hoặc tự ý sử dụng tài khoản của người khác gây ảnh hưởng xấu đến chủ hàng và LOGIVAN.
                    </li>
                    <li>Có hành vi vi phạm Pháp Luật nghiêm trọng theo kết luận của cơ quan Công an hoặc cơ quan có thẩm quyền nào khác.
                    </li>
                    <li>Có tranh chấp liên quan đến cơ quan quản lý Nhà nước như: tranh chấp xe, bị chủ hàng kiện cáo lên cơ quan nhà nước...
                    </li>
                </ul>
                <p>
                    <strong>Thái độ, hành vi trong giao tiếp
                    </strong>
                </p>
                <ul>
                    <li>Không cố ý báo giá sai lệch quá lớn so với thực tế.
                    </li>
                    <li>Không cư xử thô lỗ, cộc cằn, xúc phạm, đe dọa, khiêu khích quấy rối với chủ hàng, nhân viên LOGIVAN hoặc những người có liên quan.
                    </li>
                    <li>Không than vãn, gợi ý nhận thêm tiền bồi dưỡng từ chủ hàng.
                    </li>
                    <li>Không đánh nhau/ gây gổ, lớn tiếng với người khác ngay trước mặt chủ hàng hoặc ở nơi công cộng.
                    </li>
                    <li>Không xuyên tạc, truyền bá, phát tán các thông tin sai sự thật hoặc có hành vi gây ảnh hưởng đến uy tín và hình ảnh của LOGIVAN.
                    </li>
                    <li>Không ngăn cản hoặc gây khó khăn cho chủ xe khác trong quá trình vận chuyển hàng hóa.
                    </li>
                    <li>Không lái xe nguy hiểm, vi phạm quy định về an toàn giao thông.
                    </li>
                </ul>
                <p>
                    <strong>Thái độ, hành vi khi vận hành đơn hàng
                    </strong>
                </p>
                <ul>
                    <li>Không đến trễ so với giờ thỏa thuận mà không có lý do hợp lý
                    </li>
                    <li>Không tự ý thay đổi lịch trình vận hành đơn hàng mà không thông báo với chủ hàng hoặc LOGIVAN mà không có lý do hợp lý.
                    </li>
                    <li>Không tự ý yêu cầu chủ hàng hủy đơn mà không có lý do hợp lý.
                    </li>
                    <li>Không tự ý ghép hàng khác khi chưa đạt được sự đồng thuận với chủ hàng và/ hoặc LOGIVAN.
                    </li>
                    <li>Không nhờ bác tài khác, sử dụng xe khác để vận chuyển đơn hàng khi chưa đạt được sự đồng thuận với chủ hàng và/ hoặc LOGIVAN.
                    </li>
                    <li>Không môi giới, chuyển đơn hàng cho bác tài khác.
                    </li>
                    <li>Không giữ hàng của chủ hàng quá lâu mà không có sự thỏa thuận trước.
                        <br />
                        Không tự ý tăng giá cước, kê khai thêm chi phí phát sinh không hợp lý.
                    </li>
                </ul>
                <p>
                    <strong>2. Chế tài đối với những hành vi vi phạm
                    </strong>
                </p>
                <p>
                    Mọi hành vi vi phạm quy tắc ứng xử của chủ xe, LOGIVAN sẽ toàn quyền đưa ra quyết định cuối cùng tùy thuộc vào mức độ nghiêm trọng của sự việc để áp dụng các biện pháp chế tài tương ứng dưới đây. Ngoài những chế tài của LOGIVAN, chủ xe và chủ hàng vẫn phải chịu trách nhiệm trước pháp luật nếu có.
                </p>
                <table>
                    <tr>
                        <th colspan="3">Mức độ vi phạm*
                        </th>
                    </tr>
                    <tr>
                        <th>Vi phạm
                        </th>
                        <th>Mức độ 1
                        </th>
                        <th>Mức độ 2
                        </th>
                    </tr>
                    <tr>
                        <td>Hành vi đặc biệt nghiêm cấm
                        </td>
                        <td>Dừng hợp tác vận tải tạm thời, đền bù các chi phí phát sinh nếu có
                        </td>
                        <td>Dừng hợp tác vận tải vĩnh viễn, đền bù các chi phí phát sinh nếu có
                        </td>
                    </tr>
                    <tr>
                        <td>Thái độ, hành vi khi vận hành đơn hàng
                        </td>
                        <td>Cảnh cáo và hạn chế hợp tác vận tải, đền bù các chi phí phát sinh nếu có
                        </td>
                        <td>Dừng hợp tác vận tải tạm thời hoặc vĩnh viễn, đền bù các chi phí phát sinh nếu có
                        </td>
                    </tr>
                    <tr>
                        <td>Thái độ, hành vi trong giao tiếp
                        </td>
                        <td>Cảnh cáo và hạn chế hợp tác vận tải
                        </td>
                        <td>Dừng hợp tác vận tải tạm thời hoặc vĩnh viễn
                        </td>
                    </tr>
                </table>
                <p style="text-align: right; font-style: italic;">
                    (*Căn cứ theo số lần vi phạm và phạm vi ảnh hưởng)
                </p>
                <div class="divider"></div>
                <h2 style="text-align: center;" id="meo-vat">C. MẸO VẶT CHO BÁC TÀI & CÁC CÂU HỎI THƯỜNG GẶP
                </h2>
                <div>
                    <asp:Image ID="Image5" runat="server" Height="500px" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/WEB_C.jpg" />
                </div>
                <h2 id="meo-hay">I. MẸO HAY CHO BÁC TÀI
                </h2>
                <p>
                    <strong>1. "Bí kíp" nhận được nhiều đơn trên LOGIVAN
                    </strong>
                </p>
                <p>
                    Được chia sẻ bởi chị Võ Thị Bảo Ngọc – Người phụ nữ đã giúp chồng "săn" đến hàng trăm đơn hàng trên LOGIVAN.
                </p>
                <p>
                    <strong>Bí kíp số 1: Năng nhặt chặt bị
                    </strong>
                </p>
                <p>
                    "Chăm chỉ" là từ khóa đầu tiên được chị Ngọc nhắc đến trong "bí kíp" săn đơn hàng giúp chồng trên ứng dụng LOGIVAN Chủ Xe. Với hơn 50.0000 Chủ xe trên ứng dụng, nên các đơn hàng có thể tìm được xe rất nhanh. Đó là lý do các bác tài nên "trực app" thường xuyên và nhớ mở thông báo của ứng dụng để nhận được các đơn hàng mới. Một bí quyết nhỏ là bác tài nên cập nhật thật chính xác các thông tin của mình trên ứng dụng và cho phép ứng dụng gửi thông báo. Từ đó, mỗi khi có đơn hàng đăng lên, bác tài sẽ nhận được thông báo ngay.
                </p>
                <p>
                    <strong>Bí kíp số 2: Báo giá hợp lý
                    </strong>
                </p>
                <p>
                    Việc báo giá hợp lý cho đơn hàng có thể giúp bác tài nhanh chóng chốt được đơn với Chủ hàng. Từ đó, có thể tiết kiệm thời gian thương lượng giá, dành thời gian để tìm các đơn hàng tiếp theo.
                </p>
                <p>
                    <strong>Bí kíp số 3: Sắp xếp và lựa chọn đơn hàng
                    </strong>
                </p>
                <p>
                    Nếu nhận được nhiều đơn hàng, bác tài cần sắp xếp các đơn hàng sao cho phù hợp với lịch trình và lộ trình của mình để có hành trình vận chuyển hợp lý, vừa tiết kiệm thời gian chạy, dầu xe, vừa có thể nhận được nhiều đơn trong cùng một khoảng thời gian nhất!
                </p>
                <p>
                    <strong>Bí kíp số 4: Tạo dựng uy tín với Chủ hàng và LOGIVAN
                    </strong>
                </p>
                <p>
                    Không riêng ngành vận tải mà ngành nào cũng vậy, uy tín là điều quan trọng nhất trong công việc. Vì vậy, các bác tài nên tạo dựng uy tín cho bản thân theo quy tắc ứng xử của Bác Tài 5★ như giao hàng đúng giờ, di chuyển an toàn, đảm bảo tình trạng hàng hóa, luôn giữ thái độ lịch sự, tạo sự an tâm cho chủ hàng... Việc có được đánh giá tốt từ Chủ hàng sẽ giúp các bác tài được ưu tiên trong việc nhận các đơn hàng tiếp theo trên LOGIVAN.
                </p>
                <p>
                    <strong>2. Mẹo hay giúp tối ưu không gian khi chất hàng lên xe
                    </strong>
                </p>
                <p>
                    <strong>Nguyên tắc 1: Phân loại hàng
                    </strong>
                </p>
                <p>
                    Điều đầu tiên là bác tài cần phân loại hàng hóa trước khi xếp lên xe như: Hàng cồng kềnh, hàng nặng, hàng nhẹ, máy móc thiết bị, hàng dễ vỡ, các kiện hàng nhỏ...
                </p>
                <p>
                    <strong>Nguyên tắc 2: Biết nặng biết nhẹ
                    </strong>
                </p>
                <p>
                    Bác tài nên biết những nguyên tắc xếp hàng hóa sau để bố trí hàng hợp lý trên xe nhé. Nên xếp hàng cồng kềnh
                    <asp:Image ID="Image6" runat="server" Height="10px" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/arrow.png" />
                    hàng nặng
                    <asp:Image ID="Image7" runat="server" Height="10px" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/arrow.png" />
                    hàng nhẹ nhất theo thứ tự từ dưới lên trên. Hàng nặng hơn thì xếp dưới, hàng nhẹ hơn xếp chồng lên trên. Hàng chất lỏng nặng xếp dưới, hàng chất rắn nhẹ xếp lên trên.
                </p>
                <p>
                    <strong>Nguyên tắc 3: Cẩn thận với đồ dễ vỡ
                    </strong>
                </p>
                <ul>
                    <li>Yêu cầu chủ hàng đóng gói cẩn thận những hàng hóa dễ vỡ như hàng thủy tinh, sứ.
                    </li>
                    <li>Ưu tiên xếp những thùng hàng dễ vỡ ở nơi thích hợp nhất, nơi bằng phẳng không có va chạm, đảm bảo không có vật nặng đè lên...
                    </li>
                    <li>Máy móc lớn, cấu tạo phức tạp nên để sát phía trong, gần cabin vì vị trí này ít bị tác động, giúp đồ đạc được cố định tốt.
                    </li>
                    <li>Không xếp chồng các máy lên nhau để tránh hư hại.
                    </li>
                    <li>Dùng dây chằng hoặc các miếng đề để gia cố máy móc chắc chắn.
                    </li>
                </ul>
                <p>
                    <strong>Nguyên tắc 4: Phân bổ đều
                    </strong>
                </p>
                <p>
                    Sắp xếp hàng sao cho thùng xe cân bằng, không để nghiêng về một phía. Thùng đồ lớn nặng nên để ở phần giữa xe. Quy trình sắp xếp này giúp tiết kiệm diện tích chở hàng, đồng thời giúp chủ hàng dễ dàng kiểm soát số lượng khi giao – nhận.
                </p>
                <p>
                    <strong>Nguyên tắc 5: Tận dụng không gian
                    </strong>
                </p>
                <p>
                    Các túi đồ nhỏ nên được nhét vào các không gian trống còn lại của thùng xe. Tận dụng tối đa diện tích trống, lấp đầy các khoảng không để đồ đạc không bị xê dịch
                </p>
                <p>
                    <strong>Nguyên tắc 6: Tối ưu cho việc dỡ hàng
                    </strong>
                </p>
                <p>
                    Hãy sắp xếp lô hàng cần giao ngay sát cửa xe – lô hàng giao cuối ở trong cùng thùng xe để thuận lợi cho việc tháo dỡ và giao nhận nếu vận chuyển hai lô hàng khác nhau bác tài nhé!
                </p>
                <p>
                    <strong>3. Lưu ý khi vận chuyển một số hàng hóa đặc biệt
                    </strong>
                </p>
                <p>
                    <strong>Hàng dễ vỡ, có giá trị cao
                    </strong>
                </p>
                <ul>
                    <li>Bác tài nên kiểm tra thật kỹ chất lượng hàng hóa trước khi bốc hàng. Có nhiều trường hợp hàng hóa bị trầy xước, hư hỏng ngay từ đầu nhưng bác tài chưa kiểm tra kỹ nên bị "bắt đền oan".
                    </li>
                    <li>Hàng dễ vỡ nên được đóng gói và cuộn kín bằng các tấm bọt khí đàn hồi, giúp chống va đập.
                    </li>
                    <li>Để tránh việc hàng hóa bị xê dịch, gây hỏng hóc, bác tài nên sắp xếp hàng hóa lên xe theo nguyên tắc: hàng nặng lên trước, nhẹ lên sau. Xem thêm MẸO SỐ 2 nhé bác tài.
                    </li>
                    <li>Cố định hàng hóa bằng băng dính, đóng khóa cửa cẩn thận hoặc chằng dây vừa khít để giữ nguyên vị trí hàng hóa khi di chuyển.
                    </li>
                </ul>
                <p>
                    <strong>Hàng điện tử, điện lạnh
                    </strong>
                </p>
                <ul>
                    <li>Đây là mặt hàng giá trị lớn nên thùng xe phải là thùng kín để đảm bảo an toàn.
                    </li>
                    <li>Sàn xe phải sạch sẽ, khô thoáng tránh ẩm ướt ngấm vào khiến hỏng đồ điện tử.
                    </li>
                    <li>Kê và đệm hàng cẩn thận bằng chất liệu như mút, xốp, bọt mềm..., đồng thời đóng thùng carton bên ngoài để bảo vệ hàng hóa không bị vỡ khi va chạm.
                    </li>
                    <li>Phải kê hàng lên pallet, tránh tiếp xúc với nước và ánh nắng mặt trời.
                        <br />
                        Không chồng, đè các hàng nặng khác lên trên.
                    </li>
                    <li>Tuyệt đối không được xếp chung với hàng dễ cháy nổ, hàng hóa chất.
                    </li>
                </ul>
                <p>
                    <strong>Hoa quả, thực phẩm tươi sống chuyển bằng xe tải, xe container lạnh
                    </strong>
                </p>
                <ul>
                    <li>Đóng gói bao bì hàng hóa thích hợp. Tránh làm rách bao bì, luồng không khí lạnh lưu thông sẽ làm ảnh hưởng tới hàng hóa bên trong.
                    </li>
                    <li>Không xếp hàng hóa quá vạch đỏ (red line) trong container.
                    </li>
                    <li>Bảng điều khiển container lạnh phải luôn được đóng kín và tránh nước.
                        <br />
                        Mỗi loại sản phẩm có điều kiện nhiệt độ và không khí khác nhau, vì thế nếu có quá nhiều sản phẩm để chung thì hãy đảm bảo không ảnh hưởng đến an toàn chất lượng hàng hóa.
                    </li>
                    <li>Trong quá trình vận chuyển, bác tài nên thường xuyên kiểm tra để đảm bảo điều hòa lạnh trong xe chạy ổn định và phù hợp với hàng hóa. Ngoài ra cần lưu ý tới sự mất nước, sấy khô, xâm nhập của nước, vết lấm tấm đen, thay đổi màu sắc, mùi vị.
                    </li>
                </ul>
                <p>
                    <strong>Thép
                    </strong>
                </p>
                <ul>
                    <li>Chỉ nên nhận chở thép khi bác tài có những loại xe chuyên chở như: xe đầu kéo, các loại xe tải lớn, xe siêu trường, siêu trọng.
                    </li>
                    <li>Cần chú ý đến trọng tải thực chở của xe, tránh việc xếp quá nhiều hàng dẫn tới không lưu thông được trên đường hoặc bị hư hại phương tiện.
                    </li>
                    <li>Thép phải được xếp song song hoặc xếp chồng lền nhau tạo thành các ô vuông. Cần xếp đều dàn trải trọng lực cho hàng trên xe, tránh tình trạng mất cân bằng trọng lực. Ngoài ra, không xếp hàng quá cao.
                    </li>
                    <li>Sàn xe phải khô thoáng, không ẩm ướt
                    </li>
                    <li>Tránh để thép tiếp xúc với nước, hay hóa chất
                    </li>
                    <li>Cố định hàng cẩn thận để tránh rơi xuống đường trong quá trình vận chuyển.
                    </li>
                    <li>Cần có các vật chèn lót hoặc đệm lên để tiện cho việc luồn cáp hạ thép xuống khỏi xe sau này.
                    </li>
                </ul>
                <p>
                    <strong>Chai lọ chứa chất lỏng
                    </strong>
                </p>
                <ul>
                    <li>Chai lọ phải được bịt kín để chất lỏng không chảy ra ngoài dù bị dốc ngược.
                    </li>
                    <li>Nếu có nhiều chai lọ trong một thùng, chúng phải được ngăn cách bởi các vật liệu có độ đàn hồi như tấm bọt khí, mút, xốp, hạt nở chèn kín giữa các khoảng trống để chai lọ không bị xê dịch.
                    </li>
                </ul>
                <p>
                    <strong>Nội thất
                    </strong>
                </p>
                <ul>
                    <li>Đảm bảo sàn xe phải sạch, không ẩm ướt, thùng xe phải là thùng kín.
                        <br />
                        Sàn xe phải lót một lớp mút xốp hoặc bìa carton để tránh việc dằn sốc.
                    </li>
                    <li>Đóng gói hoặc quấn màng co cẩn thận đối với hàng gỗ nội thất tự nhiên để tránh bị trầy xước.
                    </li>
                    <li>Các đầu, cạnh, góc của hàng hóa cần dùng giấy hoặc mút xốp dày bọc lại để tránh va chạm, trầy xước khi các đồ vật cọ sát với nhau và với thùng xe.
                    </li>
                    <li>Đối với hàng nội thất bằng gỗ công nghiệp, tuyệt đối không để nơi ẩm ướt hoặc tiếp xúc trực tiếp với nước. Đồng thời, không để dưới ánh nắng trực tiếp hoặc để tiếp xúc với dung môi hữu cơ sẽ gây biến dạng bề mặt.
                    </li>
                    <li>Không được chồng xếp các hàng nặng khác lên trên vì dễ gây gãy hoặc trầy xước hàng.
                    </li>
                    <li>Sử dụng các dụng cụ chuyên dụng để cố định hàng nội thất như dây nịt, khung cố định,...
                    </li>
                </ul>
                <p>
                    <strong>4. Dừng và đỗ xe tải khi bốc, dỡ hàng thế nào để đúng luật?
                    </strong>
                </p>
                <p>
                    <strong>Quy định dừng và đỗ xe tải
                    </strong>
                </p>
                <ul>
                    <li>Khi dừng hoặc đỗ xe tải, bác tài cần lưu ý những quy định dưới đây nha:
                        <br />
                        Có tín hiệu báo cho người điều khiển phương tiện khác biết.
                    </li>
                    <li>Cho xe dừng, đỗ ở nơi có lề đường rộng hoặc khu đất ở bên ngoài phần đường xe chạy. Nếu lề đường hẹp hoặc không có lề đường, bác tài nhớ cho xe dừng, đỗ sát mép đường phía bên phải theo chiều đi của mình nha.
                    </li>
                    <li>Trường hợp trên đường đã quy định các điểm dừng, đỗ xe thì các bác tài nhớ là phải dừng, đỗ xe tại các vị trí đó nha.
                    </li>
                    <li>Sau khi đỗ xe, bác tài cần thực hiện các biện pháp an toàn trước khi rời khỏi xe. Nếu đỗ xe chiếm một phần đường xe chạy thì bác tài phải đặt ngay biển báo hiệu nguy hiểm ở phía trước và phía sau xe để người điều khiển phương tiện khác biết.
                    </li>
                    <li>Bác tài cũng nhớ là không mở cửa xe, để cửa xe mở hoặc bước xuống xe khi chưa bảo đảm điều kiện an toàn.
                    </li>
                    <li>Trong trường hợp chỉ dừng xe, bác tài không được tắt máy và không được rời khỏi vị trí lái.
                    </li>
                    <li>Nếu đỗ xe trên đoạn đường dốc, bác tài phải chèn bánh xe nha.
                    </li>
                </ul>
                <p>
                    <strong>Không được dừng xe, đỗ xe tại các vị trí
                    </strong>
                </p>
                <ul>
                    <li>Bên trái đường một chiều;
                    </li>
                    <li>Trên các đoạn đường cong và gần đầu dốc tầm nhìn bị che khuất;
                    </li>
                    <li>Trên cầu, gầm cầu vượt;
                    </li>
                    <li>Song song với một xe khác đang dừng, đỗ;
                    </li>
                    <li>Trên phần đường dành cho người đi bộ qua đường;
                    </li>
                    <li>Nơi đường giao nhau và trong phạm vi 5 mét tính từ mép đường giao nhau;
                    </li>
                    <li>Nơi dừng của xe buýt;
                    </li>
                    <li>Trước cổng và trong phạm vi 5 mét hai bên cổng trụ sở cơ quan, tổ chức;
                    </li>
                    <li>Tại nơi phần đường có bề rộng chỉ đủ cho một làn xe;
                    </li>
                    <li>Trong phạm vi an toàn của đường sắt;
                    </li>
                    <li>Che khuất biển báo hiệu đường bộ.
                    </li>
                </ul>
                <p>
                    <strong>5. Lưu ý khi gặp thời tiết xấu trong lúc lái xe
                    </strong>
                </p>
                <p>
                    <strong>Lái xe trong điều kiện thời tiết sương mù
                    </strong>
                </p>
                <ul>
                    <li>Trong sương mù, khi tầm nhìn bị hạn chế, cách tốt nhất là đi chậm lại để có thể phản ứng nhanh nếu có vật cản bất ngờ xuất hiện trong màn sương mù dày đặc.
                    </li>
                    <li>Hãy giữ khoảng cách gấp đôi so với xe phía trước. Việc nối đuôi nhau khi đi trong sương rất khiến tai nạn liên hoàn xảy ra.
                    </li>
                    <li>Không sử dụng đèn pha (đèn chiếu xa) để đi trong sương mù. Đèn pha sẽ khiến màn sương mù tạo thành một lớp tường ánh sáng ngay trước mặt, làm giảm tầm nhìn nghiêm trọng.
                    </li>
                    <li>Sử dụng đèn chiếu thấp (đèn cốt) để di chuyển trong sương mù. Bật thêm đèn sương mù nếu đi ô tô, và nếu sương mù dày đặc hãy sử dụng đèn khẩn cấp (nháy 2 đèn xi-nhan liên tục) để cảnh báo các xe đi sau.
                    </li>
                </ul>
                <p>
                    <strong>Lái xe trong điều kiện trời mưa, đường trơn
                    </strong>
                </p>
                <ul>
                    <li>Kiểm tra điều kiện của xe và lốp: Để giữ lốp xe luôn tốt, bác tài nên thường xuyên kiểm tra áp suất lốp và độ mòn mặt hoa lốp. Nếu lớp bề mặt lốp mòn quá mức cho phép thì bác tài nên thay lốp mới. Lốp bị mài mòn có thể dẫn đến bám đường kém, xử lý không nhạy, xe dễ bị trơn trượt, mất lái.
                    </li>
                    <li>Cần gạt nước cần phải ở trong điều kiện hoạt động tốt, vì nó ảnh hưởng trực tiếp đến tầm nhìn của bác tài.
                    </li>
                    <li>Tập trung cao độ: Khi trời mưa, bác tài nên giảm tốc độ, vừa điều khiển xe vừa quan sát bao quát mọi tình hình diễn ra xung quanh. Không nên tăng tốc đột ngột và phanh gấp bởi khi trời mưa, mặt đường trơn sẽ dễ bị trượt.
                    </li>
                    <li>Khi vào cua, bác tài nên bình tĩnh đưa lái với tốc độ chậm để vượt qua khúc quanh an toàn. Đặc biệt, nếu trời mưa to và đường ngập nước, bác tài nên lưu ý tình trạng bị thủy kích tấn công.
                    </li>
                </ul>
                <p>
                    <strong>6. "Bí kíp" giữ tập trung và tỉnh táo khi lái xe đường dài
                    </strong>
                </p>
                <p>
                    Dù là những bác tài dày dặn kinh nghiệm nhất cũng không tránh khỏi những lúc rơi vào tình trạng mệt mỏi, buồn ngủ khi lái xe. Khi buồn ngủ, bác tài thường giảm độ tỉnh táo, và phản ứng chậm với những sự việc diễn ra, đồng thời xử lý tình huống thiếu chuẩn xác. Dưới đây là một số mẹo nhỏ mà LOGIVAN gửi đến các các bác tài:
                </p>
                <ul>
                    <li>Chợp mắt trước khi lên đường: Một giấc ngủ ngắn 15 – 20 phút trước khi lái xe sẽ giúp não bộ có thời gian nghỉ ngơi, sẵn sàng giữ sự tập trung tỉnh táo trong nhiều giờ lái xe tiếp theo.
                    </li>
                    <li>Ăn uống đủ chất: Trước khi lái xe, hãy ăn đủ chất. Chú trọng vào thức ăn giàu carbohydrate và protein giúp các bác tài xế có thể tập trung trong nhiều giờ. Các bác tài lưu ý là tránh đồ ăn nhanh hoặc những thứ nhiều đường. Loại thức ăn này khiến năng lượng giảm nhanh chóng sau khi ăn.
                    </li>
                    <li>Uống cà phê: Một ly cà phê chứa khoảng 75 milligram caffeine vừa đủ để giúp các bác tài tỉnh táo và tập trung hơn khi lái xe. Do đó, hãy uống 1 ly cà phê khi các bác tài cảm thấy mệt nhưng cũng đừng lạm dụng cà phê quá nhiều vì dễ ảnh hưởng tới sức khoẻ của bác tài.
                    </li>
                </ul>
                <p>
                    <strong>7. "Bí kíp" lái xe an toàn ban đêm
                    </strong>
                </p>
                <ul>
                    <li>Nắm rõ cung đường, lộ trình: Trước khi khởi hành chuyến đi vào ban đêm, với những cung đường mới, bác tài nên nắm rõ lộ trình để tránh đi nhầm đường. Khi chở hàng cho LOGIVAN, bác tài có thể sử dụng tính năng chỉ đường giao hàng ngay trên Ứng dụng để tra trước đường đi và tính toán hành trình vận chuyển.
                    </li>
                    <li>Di chuyển với tốc độ phù hợp, giữ khoảng cách an toàn: Tầm quan sát ban đêm không tốt như ban ngày, do vậy, các bác tài xế luôn tuân thủ nguyên tắc "Chậm mà chắc". Dù đường ban đêm thường vắng thì các bác cũng nên đi đúng làn đường của mình.
                    </li>
                    <li>Khi lái đêm, bác tài nên tăng khoảng cách an toàn với xe đi phía trước để kịp phản ứng trước những tình huống bất ngờ. Để căn khoảng cách, nhiều bác tài thường áp dụng nguyên tắc 4 giây. Giả sử bác tài đang lái xe với tốc độ 60km/giờ tương đương 16,6m/giây. Với tốc độ này, nếu áp dụng nguyên tắc 4 giây, cần phải giữ khoảng cách an toàn với xe đi phía trước khoảng 16,6 x 4 = 66m.
                    </li>
                    <li>Sử dụng hợp lý chế độ đèn chiếu cốt: Đèn cốt là đèn chiếu gần, góc chiếu thấp giúp bác tài quan sát được tình trạng mặt đường. Khi lái xe vào ban đêm qua các tuyến đường nội thành, khu dân cư, bác tài nên giảm tốc độ và bật chế độ đèn cốt.
                    </li>
                    <li>Sử dụng hợp lý đèn pha: Đèn pha có cường độ ánh sáng mạnh, chiếu xa hơn giúp bác tài thấy được chướng ngại và các biển báo từ xa. Bác tài lưu ý chỉ nên sử dụng chế độ đèn pha khi lái xe trên các đoạn đường cao tốc, đường trường ít phương tiện và không có xe đi ngược chiều.
                    </li>
                    <li>Dừng xe nghỉ ngơi khi buồn ngủ: Buồn ngủ được xem là mối nguy lớn nhất khi lái xe ban đêm. Vì vậy, trong quá trình lái xe nếu cảm thấy buồn ngủ hay mệt mỏi bác tài nên đỗ xe vào nơi an toàn, chợp mắt một lát cho tỉnh táo hơn rồi mới lái xe tiếp.
                    </li>
                    <li>Luôn có bảng phản quang: Khi chạy đêm, bác tài nên mang theo bảng báo hiệu có phản quang để sử dụng trong trường hợp phải đỗ xe bên đường.
                    </li>
                </ul>
                <ul>
                    <li>Bác tài tuyệt đối không nhận chở các loại hàng cấm, hàng buôn lậu không rõ nguồn gốc xuất xứ.
                    </li>
                    <li>Các đơn hàng trên LOGIVAN là những đơn hàng có giá cước LOGINOW và đã được xác thực nguồn gốc uy tín, tuân thủ quy định của Pháp luật. Do đó, nếu nhận các đơn hàng bên ngoài, bác tài nên kiểm tra các giấy tờ của hàng hóa, giấy phép kinh doanh của Chủ hàng... để đảm bảo đó là hàng hóa có nguồn gốc xuất xứ rõ ràng, không vi phạm các quy định của Pháp luật.
                    </li>
                    <li>Tuyệt đối không chia sẻ thông tin tài khoản cho người khác, cho người khác dùng tài khoản của mình để nhận đơn bác tài nhé!
                    </li>
                    <li>Luôn cảnh giác với các tin nhắn, thư điện tử hay cuộc gọi đáng ngờ hỏi về các thông tin cá nhân của mình nha bác tài.
                    </li>
                    <li>Các cuộc gọi của LOGIVAN đến từ Hotline 0333.13.16.18 hoặc số của nhân viên làm việc trực tiếp với bác tài. Số điện thoại của nhân viên điều phối đơn hàng của LOGIVAN được ghi trong phần thông tin đơn hàng. Các bác tài có thể kiểm tra để tránh các trường hợp lừa đảo từ những số lạ, giả danh là nhân viên LOGIVAN.
                    </li>
                </ul>
                <div style="text-align: center;">
                    <asp:Image ID="Image8" runat="server" Height="500px" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/1-1.jpg" />
                </div>
                <h2 id="cac-vi-pham">II. CÁC VI PHẠM THƯỜNG GẶP VÀ MỨC PHẠT ĐỐI VỚI XE TẢI
                </h2>
                <p>
                    Các bác tài nhà mình chắc chắn biết là bảo đảm an toàn giao thông không chỉ là tuân thủ pháp luật mà còn là bảo vệ an toàn cho bản thân và những người xung quanh. Tuy nhiên, các bác tài hẳn không tránh khỏi những lúc sơ ý và bị mời "tấp vào lề". Dưới đây là những lỗi vi phạm phổ biến và mức phạt để các bác tài nắm rõ nhé!
                </p>
                <table>
                    <tr>
                        <th>Vi phạm
                        </th>
                        <th>Mức phạt
                        </th>
                    </tr>
                    <tr>
                        <td>Lỗi chở hàng trên nóc thùng xe; chở hàng vượt quá bề rộng thùng xe; chở hàng vượt phía trước, phía sau thùng xe trên 10% chiều dài xe
                        </td>
                        <td>
                            <p>
                                Phạt từ 800.000 đồng – 1.000.000 đồng kèm tước Giấy phép lái xe từ 01 tháng đến 03 tháng.
                            </p>
                            <p>
                                Trong trường hợp chủ xe giao cho tài xế chở hàng hóa vượt quá chiều dài xe thì sẽ bị phạt tiền từ 4.000.000 đồng đến 8.000.000 đồng đối với tổ chức. Đối với chủ xe là cá nhân thì sẽ bị phạt tiền 2.000.000 đồng đến 4.000.000 đồng.
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>Lỗi ô tô tải chuyển hướng không xi-nhan
                        </td>
                        <td>Phạt tiền từ 800.000 đồng đến 1.000.000 đồng.
                        </td>
                    </tr>
                    <tr>
                        <td>Chuyển làn đường không xi-nhan
                        </td>
                        <td>Phạt tiền từ 400.000 đến 600.000 đồng
                        </td>
                    </tr>
                    <tr>
                        <td>Chuyển làn đường không xi-nhan khi chạy trên đường cao tốc
                        </td>
                        <td>Phạt tiền từ 3.000.000 đồng đến 5.000.000 đồng kèm tước Giấy phép lái xe từ 01 tháng đến 03 tháng
                        </td>
                    </tr>
                    <tr>
                        <td>Lỗi chở người trên thùng xe ô tô tải
                        </td>
                        <td>Phạt tiền từ 800.000 đồng đến 1.000.000 đồng kèm tước quyền sử dụng Giấy phép lái xe từ 01 tháng đến 03 tháng
                        </td>
                    </tr>
                    <tr>
                        <td>Lỗi điều khiển xe ô tô tải chở hàng quá trọng tải thiết kế của xe trên 150%
                        </td>
                        <td>
                            <p>
                                Phạt tiền từ 8.000.000 đồng đến 12.000.000 đồng kèm tước quyền sử dụng Giấy phép lái xe từ 03 đến 05 tháng.
                            </p>
                            <p>
                                Trong trường hợp chủ xe giao xe chở hàng quá trọng tải sẽ bị phạt tiền từ 18.000.000 đồng đến 20.000.000 đồng đối với cá nhân, từ 36.000.000 đồng đến 40.000.000 đồng đối với tổ chức.
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>Lỗi điều khiển xe vào đường có giới hạn tải trọng nhỏ hơn tải trọng xe
                        </td>
                        <td>
                            <p>
                                Quá tải trọng của cầu, đường 20 – 50% người điều khiển sẽ bị phạt từ 3.000.000 đồng đến 5.000.000 đồng; 
                            </p>
                            <p>
                                Chủ phương tiện là cá nhân sẽ bị phạt từ 6.000.000 đồng đến 8.000.000 đồng, từ 12.000.000 đồng đến 16.000.000 đồng đối với tổ chức.
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>Lỗi chở hàng quá chiều cao cho phép
                        </td>
                        <td>
                            <p>
                                Phạt tiền từ 2.000.000 đồng đến 3.000.000 đồng kèm tước quyền sử dụng Giấy phép lái xe từ 01 tháng đến 03 tháng.
                            </p>
                            <p>
                                Chủ phương tiện là cá nhân sẽ bị phạt từ 4.000.000 đồng đến 6.000.000 đồng, từ 8.000.000 đồng đến 12.000.000 đồng đối với tổ chức.
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>Lỗi điều khiển xe ô tô tải không đóng cố định cửa sau thùng xe
                        </td>
                        <td>Phạt tiền từ 600.000 đồng đến 800.000 đồng.
                        </td>
                    </tr>
                    <tr>
                        <td>Không chấp hành hiệu lệnh, chỉ dẫn của biển báo, vạch kẻ đường (trừ một số trường hợp)
                        </td>
                        <td>Phạt tiền từ 200.000 đồng đến 400.000 đồng.
                        </td>
                    </tr>
                    <tr>
                        <td>Chở người trên buồng lái quá số lượng định
                        </td>
                        <td>Phạt tiền từ 400.000 đồng đến 600.000 đồng.
                        </td>
                    </tr>
                    <tr>
                        <td>Không thắt dây an toàn khi điều khiển xe
                        </td>
                        <td rowspan="2">Phạt tiền từ 800.000 đồng – 01 triệu đồng.
                        </td>
                    </tr>
                    <tr>
                        <td>Chở người trên xe không thắt dây an toàn khi xe đang chạy
                        </td>
                    </tr>
                    <tr>
                        <td>Bấm còi, rú ga liên tục, sử dụng đèn chiếu xa trong khu dân cư (trừ xe ưu tiên)
                        </td>
                        <td>Phạt tiền từ 800.000 đồng đến 01 triệu đồng
                        </td>
                    </tr>
                    <tr>
                        <td>Dùng tay sử dụng điện thoại di động khi đang lái xe
                        </td>
                        <td>Phạt tiền 01 – 02 triệu đồng
                        </td>
                    </tr>
                    <tr>
                        <td>Lái xe không đủ điều kiện để thu phí tự động không dừng đi vào làn đường dành riêng thu phí theo hình thức tự động không dừng tại các trạm thu phí
                        </td>
                        <td>Phạt tiền 01 – 02 triệu đồng
                        </td>
                    </tr>
                    <tr>
                        <td>Vượt đèn đỏ, đèn vàng
                        </td>
                        <td rowspan="2">
                            <p>
                                Phạt tiền 03 – 05 triệu đồng kèm
                            </p>
                            <p>
                                tước quyền sử dụng Giấy phép lái xe 01 – 03 tháng
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td>Không chấp hành hiệu lệnh của CSGT
                        </td>
                    </tr>
                    <tr>
                        <td>Chạy quá tốc độ từ 05 – 10km
                        </td>
                        <td>Phạt tiền từ 800.000 – 01 triệu đồng
                        </td>
                    </tr>
                    <tr>
                        <td>Chạy quá tốc độ từ 10 – 20km
                        </td>
                        <td>Phạt tiền từ 03 – 05 triệu đồng kèm tước quyền sử dụng Giấy phép lái xe 01 – 03 tháng
                        </td>
                    </tr>
                    <tr>
                        <td>Chạy quá tốc độ từ 20 – 35km
                        </td>
                        <td>Phạt tiền từ 06 – 08 triệu đồng kèm tước quyền sử dụng Giấy phép lái xe 02 – 04 tháng
                        </td>
                    </tr>
                    <tr>
                        <td>Chạy quá tốc độ từ 35km trở lên
                        </td>
                        <td>Phạt tiền từ 10 – 20 triệu đồng kèm tước quyền sử dụng Giấy phép lái xe 02 – 04 tháng
                        </td>
                    </tr>
                    <tr>
                        <td>Có nồng độ cồn nhưng chưa vượt quá 50 mg/100 ml máu hoặc 0,25 mg/1l khí thở;
                        </td>
                        <td>Phạt tiền từ 06 – 08 triệu đồng kèm tước quyền sử dụng Giấy phép lái xe từ 10 – 12 tháng
                        </td>
                    </tr>
                    <tr>
                        <td>Nồng độ cồn vượt quá 50 mg đến 80 mg/100 ml máu hoặc vượt quá 0,25 mg đến 0,4 mg/1l khí thở
                        </td>
                        <td>Phạt tiền từ 16 – 18 triệu đồng kèm tước quyền sử dụng Giấy phép lái xe từ 16 – 18 tháng
                        </td>
                    </tr>
                    <tr>
                        <td>Nồng độ cồn vượt quá 80 mg/100 ml máu hoặc vượt quá 0,4 mg/1 l khí thở;
                        </td>
                        <td>Phạt tiền từ 30 – 40 triệu đồng kèm tước quyền sử dụng Giấy phép lái xe từ 22 – 24 tháng
                        </td>
                    </tr>
                </table>
                <h2 id="cau-hoi-thuong-gap">III. CÁC CÂU HỎI THƯỜNG GẶP
                </h2>
                <p>
                    <strong>1. Đăng ký ứng dụng LOGIVAN Chủ xe như thế nào?
                    </strong>
                </p>
                <p>
                    Sau khi tải miễn phí ứng dụng LOGIVAN Chủ xe trên CH Play (đối với điện thoại Android) hay App Store (đối với điện thoại iOS), các bác tài đăng ký tài khoản như sau:
                </p>
                <ul>
                    <li>Đăng ký và điền thông tin tài khoản gồm: Số điện thoại, họ và tên, ảnh đại diện, địa chỉ bãi đậu xe và các tỉnh hay chạy.
                    </li>
                    <li>Tải lên các chứng từ xác thực bản thân là tài xế: Ảnh chụp mặt trước của chứng minh nhân dân, bằng lái xe và mặt trọng của giấy đăng kiểm xe. Bản gốc của các loại giấy tờ này phải còn hạn nhé bác tài.
                    </li>
                    <li>Lưu ý: Nếu bạn là doanh nghiệp vận tải muốn tham gia mạng lưới của LOGIVAN Chủ xe, ngoài 3 loại giấy tờ trên, cần cập nhật thêm giấy phép vận tải và giấy phép kinh doanh.
                    </li>
                    <li>Sau khi đăng ký, LOGIVAN sẽ xác thực và kích hoạt tài khoản của tài xế trong vòng 24h. Nếu có khó khăn trong quá trình xác thực tài khoản, các bác tài có thể vào phần "Tài khoản" trên ứng dụng LOGIVAN Chủ Xe, chọn Hỗ trợ để được trợ giúp ngay.
                    </li>
                </ul>
                <p>
                    <strong>2. LOGIVAN có ưu điểm gì so với cách tìm hàng truyền thống?
                    </strong>
                </p>
                <p>
                    So với cách tìm hàng truyền thống, LOGIVAN có những ưu điểm sau:
                </p>
                <ul>
                    <li>Đề xuất đơn hàng tự động: Ứng dụng LOGIVAN Chủ xe còn có thể tự đề xuất đơn hàng cho tài xế dựa vào tuyến đường hay chạy, loại xe và trọng lượng chuyên chở của bác tài. Bên cạnh đó cũng như đề xuất đơn hàng chiều về khi bác tài đã hoàn tất đơn hàng trước đó.
                    </li>
                    <li>Kết nối được với nhiều chủ hàng: Với mạng lưới hơn 40.000 chủ hàng trên toàn quốc với nhiều loại hàng khác nhau sẽ giúp bạn tìm được đơn hàng tốt nhất và thuận tiện nhất. Ngoài ra, LOGIVAN còn tổ chức nhiều chương trình, sự kiện giúp bạn tìm được nguồn hàng ổn định.
                    </li>
                    <li>Đơn hàng đảm bảo an toàn: Những chủ hàng tham gia trên hệ thống LOGIVAN đều cung cấp đủ giấy tờ pháp lý của cá nhân, được kiểm duyệt nghiêm ngặt để đảm bảo tiêu chuẩn vận hành.
                    </li>
                    <li>Được hỗ trợ xuyên suốt chuyến hàng: Nhân viên điều vận của LOGIVAN theo dõi thường xuyên những đơn hàng vận chuyển thông qua LOGIVAN nhằm hỗ trợ tối đa những vấn đề phát sinh trong suốt quá trình vận chuyển.
                    </li>
                    <li>Trực tiếp báo tình trạng chuyến hàng cho chủ Hàng: LOGIVAN tiên phong trong việc áp dụng công nghệ định vị vệ tinh GPS, giúp chủ hàng dễ dàng nắm được lộ trình và tiến độ của xe đang vận chuyển. Các bác tài có thể tập trung lái xe mà không còn bị chủ hàng gọi điện kiểm tra, làm phiền.
                    </li>
                </ul>
                <p>
                    <strong>3. Hướng Dẫn Cách Tìm Kiếm & Nhận Đơn Hàng Trên Ứng Dụng LOGIVAN Chủ Xe
                    </strong>
                </p>
                <p>
                    Khi truy cập vào ứng dụng, bác tài sẽ tìm thấy những đơn hàng cần xe tại mục "Đơn Hàng" ở phía dưới màn hình. Tại đây, bác tài có thể lựa chọn đơn theo các tiêu chí:
                </p>
                <ul>
                    <li>Cho tôi: Đây là đơn hàng được LOGIVAN chọn lọc riêng cho từng bác tài dựa trên những thông tin về tuyến đường/loại xe/ngành hàng mà bác tài cung cấp khi tạo tài khoản. Do đó, để tăng khả năng tìm được đơn hàng thì các bác tài hãy điền chính xác và đầy đủ thông tin.
                    </li>
                    <li>Tuyến ngắn – Tuyến dài: Đây là đơn hàng cần xe được chia theo chiều dài tuyến đường, tùy vào nhu cầu mà bác tài có thể lựa chọn đơn hàng với khu vực mình mong muốn.
                    </li>
                </ul>
                <div style="text-align: center;">
                    <asp:Image ID="Image9" runat="server" Height="500px" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/2.jpg" />
                </div>
                <p>
                    Hiện nay, có hai dạng đơn hàng trên ứng dụng LOGIVAN:
                </p>
                <p>
                    Có sẵn báo giá: bác tài chỉ cần chấp nhận mức giá có sẵn và nhân viên LOGIVAN sẽ điều phối đơn nhanh chóng để bác tài có thể chuyển hàng đúng thời hạn. Những đơn hàng này được LOGIVAN hỗ trợ và theo dõi suốt quá trình vận chuyển.
                </p>
                <p>
                    Thương lượng giá: bác tài sẽ phải dành thời gian liên hệ và chủ động báo giá cho chủ hàng cùng những bác tài khác. Để theo dõi nhưng đơn hàng mà bác tài đã đưa báo giá, bác tài sẽ xem tại mục "Đã báo giá".
                </p>
                <div style="text-align: center;">
                    <asp:Image ID="Image10" runat="server" Height="500px" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/3.jpg" />
                </div>
                <p>
                    Mẹo khác:
                </p>
                <ul>
                    <li>Để có cơ hội nhận đơn hàng chiều về, bác tài hãy bấm hoàn thành đơn hàng và mở ứng dụng để xem các đơn gần điểm dỡ hàng hóa.
                    </li>
                    <li>Các bác tài đừng quên bật thông báo ứng dụng để nhận được thông tin đơn hàng phù hợp với mình nhé!
                    </li>
                </ul>
                <p>
                    <strong>4. Hướng Dẫn Cập Nhật Hành Trình Chuyển Hàng
                    </strong>
                </p>
                <p>
                    Sau khi nhận đơn hàng, bác tài cần cập nhật hành trình theo các bước sau để chủ hàng có thể theo dõi được tình trạng đơn hàng.
                </p>
                <p>
                    <strong>Bước 1:
                    </strong>
                    Vào ứng dụng, truy cập phần
                    <strong>"Của tôi"
                    </strong>
                    <asp:Image ID="Image11" runat="server" Height="10px" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/arrow.png" />
                    Đang thực hiện để có thể thấy đơn hàng tài xế đã nhận.
                </p>
                <div style="text-align: center;">
                    <asp:Image ID="Image12" runat="server" Height="500px" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/4.jpg" />
                </div>
                <p>
                    <strong>Bước 2:
                    </strong>
                    Sau khi bấm Chọn đơn hàng, bấm Cập nhật hành trình. Tại phần Nhận, bác tài bấm "Đã đến" điểm bốc khi tới địa điểm bốc hàng.
                </p>
                <div style="text-align: center;">
                    <asp:Image ID="Image13" runat="server" Height="500px" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/5.jpg" />
                </div>
                <p>
                    <strong>Bước 3:
                    </strong>
                    Sau khi đến điểm bốc và nhận hàng, bác tài bấm Đăng biên bản xuất kho
                    <asp:Image ID="Image14" runat="server" Height="10px" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/arrow.png" />
                    Tôi đã nhận hàng để xác thực đã lấy hàng để vận chuyển. Tài xế tải lên biên bản xuất kho bằng cách thêm ảnh sau đó bấm Đăng.
                </p>
                <div style="text-align: center;">
                    <asp:Image ID="Image15" runat="server" Height="500px" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/6.jpg" />
                </div>
                <p>
                    <strong>Bước 4:
                    </strong>
                    Sau khi giao hàng, bác tài tiếp tục cập nhật hành trình đơn hàng bằng cách tải lên biên bản nhận hàng, bấm Đăng biên bản nhận hàng
                    <asp:Image ID="Image16" runat="server" Height="10px" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/arrow.png" />
                    Đã đến điểm dỡ. Nếu bác tài không chuẩn bị sẵn biên bản bàn giao theo mẫu đã được điều phối viên LOGIVAN cung cấp thì có thể dùng mẫu của chủ hàng.
                </p>
                <div style="text-align: center;">
                    <asp:Image ID="Image17" runat="server" Height="500px" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/7.jpg" />
                </div>
                <p>
                    <strong>Bước 5:
                    </strong>
                    Hoàn thành hành trình chuyển hàng bằng cách bấm "Tôi đã giao hàng".
                </p>
                <div style="text-align: center;">
                    <asp:Image ID="Image18" runat="server" Height="500px" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/9.jpg" />
                </div>
                <p>
                    <strong>5. Vì sao LOGIVAN yêu cầu nhiều giấy tờ và thông tin cá nhân của tôi?
                    </strong>
                </p>
                <p>
                    LOGIVAN có cam kết bảo mật những thông tin này như thế nào?
                </p>
                <p>
                    Việc LOGIVAN thu thập giấy tờ và thông tin cá nhân của các bác tài nhằm mục đích:
                </p>
                <ul>
                    <li>Cung cấp các dịch vụ phù hợp và chính xác đến các thành viên trong hệ thống
                    </li>
                    <li>Gửi thông báo về các hoạt động trao đổi thông tin giữa thành viên với nhau hoặc với LOGIVAN.
                    </li>
                    <li>Ngăn ngừa các hoạt động phá hủy tài khoản người dùng của thành viên hoặc các hoạt động giả mạo thành viên.
                    </li>
                    <li>Minh bạch thông tin, dễ dàng xác minh danh tính thành viên để liên lạc và giải quyết các khâu trong quá trình vận hành đơn hàng hoặc những phát sinh đặc biệt. Đây cũng là cách LOGIVAN mang về các đơn hàng uy tín khi gây dựng được lòng tin đối với chủ hàng.
                    </li>
                </ul>
                <p>
                    LOGIVAN cam kết chỉ sử dụng thông tin cá nhân của các bác tài để xác nhận và liên hệ những vấn đề liên quan đến giao dịch tại LOGIVAN. Bác tài có quyền tự kiểm tra, cập nhật, điều chỉnh hoặc hủy bỏ thông tin cá nhân của mình bằng cách đăng nhập vào tài khoản và chỉnh sửa thông tin cá nhân hoặc yêu cầu LOGIVAN thực hiện việc này. Khi tiếp nhận những phản hồi này, LOGIVAN sẽ xác nhận lại thông tin, có trách nhiệm trả lời lý do và hướng dẫn bác tài khôi phục hoặc xóa bỏ thông tin cá nhân theo yêu cầu.
                </p>
                <p>
                    Thông tin cá nhân của bác tài được LOGIVAN cam kết bảo mật tuyệt đối theo chính sách bảo vệ thông tin cá nhân của LOGIVAN và không cung cấp cho bên thứ ba, trừ trường hợp có yêu cầu của pháp luật. LOGIVAN có trách nhiệm hợp tác cung cấp thông tin cá nhân của bác tài khi có yêu cầu từ cơ quan tư pháp bao gồm: Viện kiểm sát, tòa án, cơ quan công an điều tra liên quan đến hành vi vi phạm pháp luật nào đó của khách hàng. Ngoài ra, không ai có quyền xâm phạm vào thông tin cá nhân của bác tài. Việc thu thập và sử dụng thông tin của mỗi bác tài chỉ được thực hiện khi có sự đồng ý của khách hàng đó trừ những trường hợp pháp luật có quy định khác.
                </p>
                <p>
                    Dữ liệu cá nhân của bác tài sẽ được lưu trữ cho đến khi có yêu cầu hủy bỏ hoặc tự bác tài đăng nhập và thực hiện thao tác hủy bỏ. Trong mọi trường hợp còn lại, thông tin cá nhân của bác tài sẽ được bảo mật trên máy chủ của LOGIVAN.
                </p>
                <p>
                    Các bác tài có quyền gửi khiếu nại về việc thông tin cá nhân bị lộ hoặc bị sử dụng không đúng mục tiêu. Mọi thắc mắc hoặc vấn đề phát sinh về bảo mật thông tin, vui lòng liên hệ đến tổng đài 0333.13.16.18, hoặc qua email:
                    <a href="mailto:hotro@logivan.com">hotro@logivan.com</a>.
                </p>
                <p>
                    <strong>6. Vì sao tài khoản của tôi bị khóa?
                    </strong>
                </p>
                <p>
                    Tài khoản của bác tài sẽ bị khóa nếu như LOGIVAN phát hiện vi phạm một trong các quy tắc sau:
                </p>
                <ul>
                    <li>Cung cấp một cách sai lệch, không chính xác thông tin của cá nhân, tổ chức khi đăng ký tài khoản trên LOGIVAN.
                    </li>
                    <li>Cố ý giả mạo thông tin giấy tờ của các cá nhân, tổ chức khác.
                    </li>
                    <li>Có hành vi xúc phạm, bịa đặt, lan truyền các thông tin sai sự thật ảnh hưởng đến LOGIVAN và các cá nhân, tổ chức đang hoạt động trên LOGIVAN.
                    </li>
                    <li>Lợi dụng LOGIVAN để thực hiện các hành vi lừa đảo, chiếm đoạt tài sản của người khác.
                    </li>
                    <li>Trong trường hợp phát sinh khiếu nại, tranh chấp mà lỗi được xác định là do bác tài thì LOGIVAN sẽ có biện pháp cảnh cáo hoặc khóa tài khoản. Khi tài khoản bị khóa, bác tài sẽ không thể tìm thấy đơn hàng trên hệ thống LOGIVAN.
                    </li>
                </ul>
                <p>
                    <strong>7. Làm sao tôi nhận được tiền khi chạy qua LOGIVAN?
                    </strong>
                </p>
                <ul>
                    <li>Nếu bạn kết nối trực tiếp với chủ hàng trên ứng dụng LOGIVAN: Chủ hàng và chủ xe sẽ thỏa thuận cách thức thanh toán trực tiếp với nhau.
                    </li>
                    <li>Nếu bạn thực hiện đơn hàng thông qua điều phối của nhân viên LOGIVAN: Chủ xe sẽ nhận được cước phí thông qua chuyển khoản ngân hàng.
                    </li>
                </ul>
                <p>
                    Thời hạn thanh toán: trong vòng 7 ngày kể từ khi LOGIVAN nhận đầy đủ chứng từ để thanh toán từ tài xế (hóa đơn dầu, biên bản bàn giao hàng hóa hoặc một số giấy tờ khác được quy định theo từng chuyến hàng). Chỉ áp dụng đối với các xe cá nhân (xe doanh nghiệp có ký hợp đồng vận chuyển cùng LGV sẽ theo thời gian trên hợp đồng ).
                </p>
                <p>
                    <strong>8. Ứng dụng đột nhiên bị thoát ra ngoài, không thao tác được
                    </strong>
                </p>
                <p>
                    Bạn vui lòng vào Google Play Store hoặc Apple Store (cửa hàng ứng dụng trong điện thoại) để tải về phiên bản mới nhất của LOGIVAN. Nếu lỗi vẫn không được khắc phục sau khi tải lại, vui lòng phản hồi vấn đề này trong phần thông tin phía dưới hoặc gọi điện lên tổng đài 0333.1316.18, nhấn phím 2 để gặp nhân viên chăm sóc bác tài LOGIVAN.
                </p>
                <h2 id="quan-com">IV. QUÁN CƠM CÓ BÃI ĐỖ XE TẢI
                </h2>
                <p>
                    Vì đặc điểm phương tiện cồng kềnh nên các bác tài đi tuyến Bắc – Nam thường phải mất công tìm kiếm quán cơm khi muốn nghỉ chân. Để tiết kiệm thời gian cho các bác tài, LOGIVAN đã tổng hợp một số quán cơm dọc quốc lộ rộng rãi và có chỗ đậu xe tải.
                </p>
                <table id="tblQuanCom" style="width: 40%; margin-left: 30%;">
                    <tr>
                        <th>Danh sách quán cơm</th>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button6" runat="server" Text="Bình Dương" CssClass="btn2" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button7" runat="server" Text="Đồng Nai" CssClass="btn2" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button8" runat="server" Text="Hồ Chí Minh" CssClass="btn2" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button9" runat="server" Text="Hà Nội" CssClass="btn2" />
                        </td>
                    </tr>
                </table>
                <h2 id="tram-xang">V. TRẠM XĂNG DỌC QUỐC LỘ
                </h2>
                <p>
                    Nếu chẳng may trên chặng đường rong ruổi, xe sắp hết xăng, mà không biết kiếm trạm xăng ở đâu thì hãy mở cẩm nang này ra nhé các bác tài. Dưới đây là một số trạm xăng ở khu vực Hà Nội và tam giác Kinh tế Hồ Chí Minh – Bình Dương – Đồng Nai. Hy vọng có thể giúp ích cho các bác.
                </p>
                <table id="tblTramXang" style="width: 40%; margin-left: 30%;">
                    <tr>
                        <th>Danh sách trạm xăng</th>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button10" runat="server" Text="Hà Nội" CssClass="btn2" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button11" runat="server" Text="Đồng Nai" CssClass="btn2" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button12" runat="server" Text="Hồ Chí Minh" CssClass="btn2" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button13" runat="server" Text="Bình Dương" CssClass="btn2" />
                        </td>
                    </tr>
                </table>
                <br />
                <div class="divider"></div>
                <h2 style="text-align: center;" id="loi-ket">LỜI KẾT
                </h2>
                <p>
                    Xin cảm ơn bác tài đã đọc đến hết cuốn cẩm nang này. Hy vọng danh hiệu "Bác Tài 5★" cũng như "Cẩm nang Bác Tài 5★" sẽ mang đến cho các bác tài thật nhiều giá trị thiết thực và hữu ích.
                </p>
                <p>
                    Các thông tin, lưu ý, quy định trong cẩm nang này sẽ luôn được chúng tôi cập nhật, thay đổi để phù hợp hơn với các bác tài cũng như tình hình vận tải Việt Nam trong tương lai.
                </p>
                <p>
                    Xin cảm ơn tất cả các Bác tài đã tham gia góp ý, đánh giá để chúng tôi có thể hoàn thiện cuốn cẩm nang này một cách tốt nhất.
                </p>
                <p>
                    Chúng tôi xin hứa sẽ tiếp tục hoàn thiện dịch vụ của mình hơn nữa, để các bác tài có thể tiếp tục yêu mến và đồng hành cùng chúng tôi trên chặng đường công nghệ hóa ngành vận tải đường bộ.
                </p>
                <p>
                    Cuối cùng, xin chúc các bác tài luôn thượng lộ bình an trên tất cả những chuyến hàng. Chúc cho mối quan hệ hợp tác giữa các bác tài và LOGIVAN ngày càng bền chặt.
                </p>
                <p style="text-align: right;">
                    <strong>Đội ngũ LOGIVAN
                    </strong>
                </p>
                <p>
                    Tài liệu tham khảo
                </p>
                <p>
                    Dựa theo Nghị định 100/2019/NĐ-CP quy định về xử phạt vi phạm hành chính trong lĩnh vực giao thông đường bộ và đường sắt có hiệu lực từ ngày 01/01/2020:
                    <br />
                    Điều 24.2.b Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 30.7.i Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 5.3.c Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 5.2.a Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 5.5.g Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 24.2.c Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 24.8.a Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 30.12.a Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 33.3.d Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 30.9.đ Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 24.4.b Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 30.8.c Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 24.1.c Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 5.1.a Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 5.2.c Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 5.3.p và Điều 5.3.q Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 5.3.b Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 5.4.a Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 5.4.c Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 5.5.a Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 5.3.a Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 5.5.i Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 5.6.a Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 5.7.c Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 5.6.c Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 5.8.c Nghị định 100/2019/NĐ-CP;
                    <br />
                    Điều 5.10.a Nghị định 100/2019/NĐ-CP;
                </p>
                <a href="#loi-mo-dau">
                    <asp:Image ID="Image19" runat="server" Height="15px" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/truck.png" />
                    Lời mở đầu
                </a>
                <br />
                <a href="#gioi-thieu">
                    <asp:Image ID="Image20" runat="server" Height="15px" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/truck.png" />
                    Giới thiệu chương trình "Bác tài 5★"
                </a>
                <br />
                <a href="#ung-xu">
                    <asp:Image ID="Image21" runat="server" Height="15px" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/truck.png" />
                    Ứng xử của Bác tài 5★ gương mẫu
                </a>
                <br />
                <a href="#meo-vat">
                    <asp:Image ID="Image22" runat="server" Height="15px" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/truck.png" />
                    Mẹo vặt & câu hỏi thường gặp
                </a>
                <br />
                <a href="#loi-ket">
                    <asp:Image ID="Image23" runat="server" Height="15px" ImageUrl="~/HinhAnh/HinhAnhCamNangBacTai/truck.png" />
                    Lời kết
                </a>
            </td>
        </tr>
    </table>
</asp:Content>
