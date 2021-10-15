<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="dieu-khoan-su-dung.aspx.cs" Inherits="LogiVan.dieu_khoan_su_dung" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        table {
            width: 100%;
            vertical-align: top;
        }

        #sidebar {
            width: 30%;
            padding-left: 10%;
            vertical-align: top;
            padding-top: 50px;
            font-size: larger;
        }

            #sidebar p {
                border-bottom: 1px dashed gray;
                padding-bottom: 10px;
                margin-bottom: 20px;
            }

            #sidebar a {
                text-decoration: none;
                color: lightgray;
                margin-bottom: 10px;
            }

                #sidebar a:hover {
                    text-decoration: underline;
                }

        #info {
            text-align: justify;
            padding-right: 10%;
        }
        #info h1{
            text-align:center;
        }
        #info ol li{
            font-weight:bold;
        }
        #info ol li p{
            font-weight:normal;
        }
        #info table{
            border-collapse:collapse;
        }
        #info table tr td{
            border: 1px solid black;
            padding-left:1%;
            padding-right:1%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td id="sidebar">
                <p>THÔNG TIN</p>
                <a href="dieu-khoan-su-dung.aspx">Chính sách bảo mật</a>
                <br />
                <a href="#">Chính sách thanh toán</a>
                <br />
                <a href="ho-tro.aspx">Những câu hỏi thường gặp</a>
                <br />
                <a href="#">Chính sách phụ phí LOGIVAN</a>
            </td>
            <td id="info">
                <h1>
                    <strong>
                        Điều khoản sử dụng
                    </strong>
                </h1>
                <h4>
                    <strong>
                        ĐIỀU KHOẢN SỬ DỤNG
                    </strong>
                </h4>
                <ol>
                    <li>
                        Giới thiệu chung
                    </li>
                </ol>
                <ol>
                    <li>
                        Giới thiệu
                    </li>
                </ol>
                <table>
                    <tr>
                        <td>
                            <h4>CÁCH THỨC VẬN HÀNH CỦA TÀI XẾ TẠI LOGIVAN</h4>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>
                                Tài xế có thể đăng nhập vào ứng dụng LOGIVAN Chủ Xe bất cứ lúc nào để tìm kiếm đơn hàng ở khu vực lân cận.
                                <br />
                                <br />
                                <br />
                                Khi đã cập nhật đầy đủ thông tin hồ sơ trên Ứng dụng LOGIVAN Chủ Xe, với vài bước đơn giản tài xế có thể tìm kiếm được thêm nhiều đơn hàng nếu có xe phù hợp và giá cả cạnh tranh.
                                <br />
                                <br />
                                <br />
                                Khi tài xế vận chuyển thông qua LOGIVAN, tài xế cần tuân theo quy trình làm việc và sử dụng hệ thống trên ứng dụng của LOGIVAN để:
                                <br />
                                <br />
                                <br />
                            </p>
                            <ol>
                                <li>Đăng ký và hoàn thành đăng tải giấy tờ của tài xế trước khi vận chuyển</li>
                                <li>Đồng ý Giá Vận Chuyển theo đề xuất của Ứng dụng hoặc tự đề xuất Giá Vận Chuyển và điều khoản dịch vụ</li>
                                <li>Đảm bảo hệ thống theo dõi GPS hoạt động cho toàn bộ hành trình</li>
                                <li>Chụp ảnh phương tiện vận tải, hàng hóa khi xuống hàng, các tài liệu vận tải và đăng tải lên Ứng dụng LOGIVAN Chủ Xe</li>
                                <li>Theo dõi tính năng dòng thời gian vận chuyển bằng cách cập nhật ứng dụng khi tài xế:</li>
                            </ol>
                            <ol>
                                <li>Bắt đầu đi tới điểm bốc hàng</li>
                                <li>Đến nơi bốc hàng</li>
                                <li>Hoàn tất chất hàng</li>
                                <li>Đến nơi trả hàng</li>
                                <li>Hoàn tất trả hàng</li>
                            </ol>
                            <p>
                                <br />
                                <br />
                                Khi tài xế hoàn tất đơn hàng và hoàn lại đầy đủ chứng từ thanh toán bản gốc, LOGIVAN sẽ thực hiện thanh toán bằng chuyển khoản ngân hàng.
                                <br />
                                <br />
                                <br />
                                LOGIVAN đánh giá chất lượng dịch vụ mỗi chuyến hàng của tài xế theo các tiêu chí sau:
                            </p>
                            <ol>
                                <li>Đúng giờ: bốc hàng và trả hàng đúng giờ quy định.</li>
                                <li>Tình trạng xe tải: xe tải sạch sẽ, không có mùi hôi, an toàn, và phù hợp với yêu cầu của khách hàng.</li>
                                <li>An toàn hàng hóa: có trách nhiệm vận chuyển hàng hóa đến nơi toàn vẹn, không bị hư hỏng, thất thoát, giảm chất lượng.</li>
                                <li>An toàn cá nhân: đảm bảo an toàn trong lưu thông trong trên đường, không xảy ra tai nạn.</li>
                                <li>Sử dụng hệ thống của LOGIVAN: cập nhật chính xác các thời điểm lên và xuống hàng và đăng tải đầy đủ hình ảnh chứng từ lên Ứng dụng LOGIVAN Chủ xe.</li>
                                <li>Hoàn tất việc hoàn lại chứng từ thanh toán bản gốc về LOGIVAN.</li>
                                <li>Thực hiện chính xác theo hướng dẫn và chỉ dẫn của nhân viên LOGIVAN.</li>
                                <li>Thái độ: lịch sự, chuyên nghiệp và hữu ích mọi lúc, mọi nơi khi thực hiện Đơn Hàng.</li>
                            </ol>
                            <p>
                                Nếu tài xế giữ được điểm đánh giá chất lượng dịch vụ cao, tài xế sẽ nhận được đơn hàng thường xuyên từ LOGIVAN. Nếu điểm đánh giá chất lượng dịch vụ của tài xế không đạt, LOGIVAN sẽ ngừng hợp tác với tài xế.
                            </p>
                        </td>
                    </tr>
                </table>
                <p>
                    <strong>CÔNG TY TNHH LOGITRUCK</strong>
                    là một công ty Thành viên của CÔNG TY TNHH CÔNG NGHỆ LOGIVAN VIỆT NAM; được thành lập và hoạt động theo pháp luật Việt Nam và được cấp giấy chứng nhận đăng ký doanh số 0316516471; địa chỉ trụ sở: Văn phòng 02, tầng 08, tòa nhà Pearl plaza, số 561A Điện Biên Phủ, Phường 25, Quận Bình Thạnh, Tp. Hồ Chí Minh; người đại diện theo pháp luật: bà Phạm Thị Khánh Linh (sau đây gọi là “chúng tôi” hoặc “LOGIVAN”).
                    <br />
                    <br />
                    LOGIVAN cung cấp Dịch Vụ công nghệ 4.0 dựa trên nền tảng trí tuệ nhân tạo, kết nối trực tiếp Chủ hàng và mạng lưới xe tải rỗng chiều về trên toàn quốc, giúp tài xế tìm được chủ hàng và đơn hàng thông qua Hệ thống LOGIVAN.
                    <br />
                    <br />
                    LOGIVAN có quyền sử dụng hợp pháp các sản phẩm công nghệ vận tải là Ứng Dụng LOGIVAN Chủ xe trên nền tảng Ứng Dụng Di Động (sau đây gọi là “Ứng Dụng”) và trang web www.LOGIVAN.com (sau đây gọi là “Website”). Chúng tôi mang đến giải pháp công nghệ giúp cá nhân, doanh nghiệp tìm kiếm và quản lý xe tải trực tuyến. Đồng thời, giúp tài xế xe tải tăng thêm thu nhập lên đến 30%.
                    <br />
                    <br />
                    Vui lòng đọc kỹ Điều Khoản Sử Dụng này. Bằng việc sử dụng Ứng Dụng và/hoặc sử dụng Dịch Vụ (như được định nghĩa dưới đây), bạn đồng ý rằng bạn là Chủ xe đã đọc và hiểu nội dung của Điều Khoản Sử Dụng này. Điều Khoản Sử Dụng và các Chính sách của LOGIVAN (nếu có) và các Đơn Hàng (như định nghĩa dưới) sẽ tạo thành thỏa thuận ràng buộc về mặt pháp lý như một Hợp Đồng Hợp tác kinh doanh giữa Chủ xe và LOGIVAN hoặc Hợp đồng giữa Chủ xe và Chủ hàng (“Thỏa Thuận”). Thỏa thuận áp dụng cho việc Chủ xe thực hiện kết nối với Chủ hàng thông qua Ứng Dụng được cung cấp bởi LOGIVAN. Nếu bạn không đồng ý Điều Khoản Sử Dụng, vui lòng không sử dụng hoặc tiếp tục sử dụng Ứng Dụng.
                    <br />
                    <br />
                    Để có thể sử dụng Ứng Dụng/Website để kết nối với nhau, trước hết các Thành viên đăng ký tài khoản trên Ứng Dụng và cung cấp các thông tin có liên quan. Sau khi thông tin đã được LOGIVAN xác thực, Thành viên được cấp quyền sử dụng các Dịch Vụ trên Ứng Dụng/Website.
                    <br />
                    <br />
                    Nội dung Điều Khoản Sử Dụng này tuân thủ theo các quy định hiện hành của pháp luật Việt Nam. Thành viên khi tham gia vào hệ thống của LOGIVAN trên nền tảng Ứng Dụng/Website đồng nghĩa với việc cam kết thực hiện đúng những nội dung trong Quy chế này.
                </p>
                <ol start="2">
                    <li>
                        <strong>Định nghĩa</strong>
                    </li>
                </ol>
                <ol>
                    <li>
                        <p>
                            <strong>"Chủ hàng"</strong>
                            là thương nhân, tổ chức, cá nhân và/hoặc có thể là chủ sở hữu của hàng hóa hoặc người đại diện đăng tin hộ có nhu cầu vận chuyển hàng hóa sử dụng Ứng Dụng/Website để đăng tin, có nhu cầu sử dụng Dịch Vụ, thông qua LOGIVAN.
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>"Chủ xe"</strong>
                            là thương nhân, tổ chức, cá nhân cung cấp Dịch Vụ vận tải sử dụng Ứng Dụng/Website để kết nối với Chủ hàng; được xem các thông tin Đơn Hàng, có khả năng thực hiện các yêu cầu vận chuyển cho Chủ hàng, có thể sở hữu phương tiện vận tải hoặc người đại diện thực hiện. Để tránh hiểu nhầm, trừ trường hợp ngữ cảnh quy định khác, thuật ngữ Chủ xe được sử dụng cho cả tài xế trực tiếp chạy chuyến, và tổ chức chủ quản của lái xe trong trường hợp Thành viên đăng ký trong Ứng dụng là tổ chức. Chủ xe xác nhận vận chuyển Đơn Hàng trên Hệ thống và/hoặc tài xế trực tiếp thực hiện vận chuyển Đơn Hàng liên đới chịu trách nhiệm trước pháp luật về các nghĩa vụ với LOGIVAN và/hoặc Chủ hàng theo Thỏa Thuận.
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>"Thành viên"</strong>
                            là thương nhân, tổ chức, cá nhân đăng ký sử dụng Ứng Dụng/Website, bao gồm cả Chủ hàng (người sử dụng Dịch Vụ vận tải) và Chủ xe (người cung cấp Dịch Vụ vận tải).
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>"Đơn hàng"</strong>
                            là thông tin vận chuyển hàng hóa được đăng tải lên Ứng Dụng/Website.
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>"Báo giá"</strong>
                            có nghĩa là báo giá của Chủ xe, tương ứng với từng Đơn Hàng và xác nhận thông qua LOGIVAN, là giá cước vận chuyển hàng hóa đã hoặc chưa bao gồm các phí Dịch Vụ khác ngoài vận tải, ví dụ như: bốc xếp hàng hóa tùy theo yêu cầu ghi trong Đơn Hàng. 
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>"Thông báo"</strong>
                            là các thông báo trên Ứng Dụng/Website liên quan đến sử dụng hệ thống, các hoạt động giao dịch thông tin giữa 2 bên Chủ hàng và Chủ xe (nếu có) và các thông tin giới thiệu, quảng bá về LOGIVAN.
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>"Dịch Vụ"</strong>
                            là Dịch Vụ vận tải Hàng Hóa bao gồm việc vận chuyển và giao nhận Hàng Hoá, bảo quản Hàng Hoá trong suốt quá trình vận chuyển và các Dịch Vụ khác kèm theo, cung cấp bởi Chủ xe và thông qua LOGIVAN;
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>"Sàn Vận Chuyển"</strong>
                            là việc Chủ hàng và Chủ xe tự kết nối thông qua Hệ Thống của Bên Cung Cấp Dịch Vụ, miễn phí sử dụng Hệ Thống, không phải thanh toán phí Dịch Vụ cho LOGIVAN. 
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>"LOGINOW"</strong>
                            là gói Dịch Vụ chuyển hàng 5 sao với những tiện lợi như: có giá ngay lập tức, cam kết có xe, tài xế chất lượng, an toàn tuyệt đối, ...được đảm bảo bởi LOGIVAN.
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>"DỰ ÁN"</strong>
                            là gói Dịch Vụ dành riêng cho các Chủ hàng là doanh nghiệp và cam kết sử dụng Dịch Vụ thường xuyên đồng thời có những tiện ích tương tự Dịch Vụ LOGINOW. Chủ xe thực hiện các Đơn Hàng DỰ ÁN được thanh toán và áp dụng chính sách thưởng/phạt theo quy định về Đánh Giá Hiệu Suất của LOGIVAN.
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>"Đánh Giá Hiệu Suất"</strong>
                            là những yêu cầu chi tiết cho chất lượng Dịch Vụ của Chủ xe cần đáp ứng, bao gồm các mức thưởng, mức phạt gắn liền khi thực hiện các Đơn Hàng DỰ ÁN thực tế của Chủ xe.
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>"Kỳ thanh toán"</strong>
                            là khoảng thời gian LOGIVAN tổng kết số lượng vận chuyển thực tế để thanh toán cho Chủ xe. Có hai kỳ thanh toán trong một tháng dương lịch, từ ngày 01 hàng tháng đến ngày 15 hàng tháng là một kỳ thanh toán, từ ngày 16 hàng tháng đến ngày cuối cùng của một tháng là kỳ thanh toán khác.
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>"Hàng Hóa"</strong>
                            có nghĩa là các sản phẩm, tài sản hoặc các đối tượng khác được phép vận chuyển theo quy định của pháp luật Việt Nam mà Chủ xe vận chuyển theo từng Đơn Hàng của Chủ hàng;
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>"Hệ Thống"</strong>
                            có nghĩa là hệ thống công nghệ phần mềm thuộc quyền sử dụng của LOGIVAN, để kết nối vận tải hàng hóa, và cung cấp các Dịch Vụ chăm sóc, hỗ trợ khách hàng kèm theo, được đặt tên là LOGIVAN Chủ xe (Ứng Dụng).
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>"Chính sách của LOGIVAN"</strong>
                            bao gồm: Chính sách bảo mật; các Quy tắc ứng xử dành cho Đối tác hoặc Quy tắc ứng xử dành cho Khách Hàng, có thể được áp dụng; và tất cả các biểu mẫu, chính sách, thông báo, hướng dẫn khác được LOGIVAN thông báo theo từng thời điểm.
                        </p>
                    </li>
                </ol>
                <ol start="2">
                    <li>
                        Các loại dịch vụ
                    </li>
                </ol>
                <ol>
                    <li>Sàn Vận Chuyển</li>
                </ol>
                <ol>
                    <li>
                        <p>
                            Thông qua Hệ thống Ứng Dụng, Chủ hàng sẽ tạo các Đơn Hàng phù hợp theo yêu cầu của mình, bao gồm các thông tin về Hàng Hóa, tuyến đường vận chuyển, cách thức đóng gói. Sau khi nhận đầy đủ thông tin về Đơn Hàng, Chủ xe sẽ báo giá cho Chủ hàng đối với việc thực hiện Dịch Vụ. Chủ hàng sẽ chấp thuận Báo giá của Chủ xe qua Hệ thống để tạo thành một giao dịch.
                        </p>
                    </li>
                    <li>
                        <p>
                            Giá Dịch Vụ và các quyền và nghĩa vụ khác do Chủ hàng và Chủ xe tự thỏa thuận và chịu trách nhiệm, ngoại trừ các Điều Khoản liên quan đến việc sử dụng Ứng Dụng/Hệ thống sẽ chịu sự chi phối, quản lý của LOGIVAN.
                        </p>
                    </li>
                    <li>
                        <p>
                            LOGIVAN hỗ trợ kết nối Chủ hàng và Chủ xe hoàn toàn miễn phí. Tùy theo thỏa thuận mà Chủ hàng sẽ thanh toán cước phí trả trước hay trả sau; chuyển khoản hay đưa tiền mặt cho Chủ xe. Toàn bộ việc thanh toán là Chủ hàng và Chủ xe trực tiếp làm việc và thỏa thuận với nhau mà không thông qua LOGIVAN.
                        </p>
                    </li>
                    <li>
                        <p>
                            Để tránh hiểu nhầm, Sàn Vận Chuyển và các Dịch Vụ trên Hệ thống mà không phải Dịch Vụ LOGINOW hoặc Dịch Vụ DỰ ÁN sẽ không thuộc phạm vi trách nhiệm thực hiện Dịch Vụ của LOGIVAN. Trong đó, các Chủ xe bao gồm nhà xe, lái xe đăng ký tài khoản trên Hệ thống sẽ trực tiếp và liên đới chịu trách nhiệm cung cấp Dịch Vụ và các trách nhiệm liên quan khác cho Chủ hàng.
                        </p>
                    </li>
                </ol>
                <ol start="2">
                    <li>Dịch Vụ LOGINOW và Dịch Vụ DỰ ÁN</li>
                </ol>
                <ol>
                    <li>Mục tiêu hợp tác kinh doanh qua Dịch Vụ LOGINOW và Dịch Vụ DỰ ÁN:</li>
                </ol>
                <ol>
                    <li>
                        <p>
                            LOGIVAN là một doanh nghiệp được thành lập và hoạt động hợp pháp, có năng lực tài chính và có khả năng áp dụng công nghệ thông tin vào lĩnh vực hỗ trợ vận tải hàng hóa.
                        </p>
                    </li>
                    <li>
                        <p>
                            Chủ xe là một cá nhân có đầy đủ năng lực hành vi dân sự, và đủ điều kiện để hoạt động kinh doanh vận tải hàng hóa bằng xe ô tô theo quy định pháp luật hiện hành.
                        </p>
                    </li>
                    <li>
                        <p>
                            LOGIVAN và Chủ xe nhất trí cùng nhau hợp tác kinh doanh và chia sẻ doanh thu thu được từ hoạt động hợp tác kinh doanh trong lĩnh vực vận tải hàng hóa bằng xe ô tô.
                        </p>
                    </li>
                </ol>
                <ol start="2">
                    <li>Phạm vi hợp tác kinh doanh:</li>
                </ol>
                <ol>
                    <li>
                        <p>
                            LOGIVAN cung cấp Hệ Thống, áp dụng công nghệ thông tin để tìm kiếm Chủ hàng, tiếp nhận thông tin và quản lý thông tin Chủ hàng; thực hiện các công đoạn khác trong quá trình hỗ trợ vận tải hàng hóa, bao gồm nhưng không giới hạn công đoạn liên hệ và ký kết hợp đồng vận chuyển với Chủ hàng, hỗ trợ thu tiền cung ứng Dịch Vụ từ Chủ hàng và các công việc khác liên quan đến Dịch Vụ (trừ công đoạn trực tiếp điều hành phương tiện, lái xe vận chuyển hàng hóa; quyết định giá cước vận tải).
                        </p>
                    </li>
                    <li>
                        <p>
                            Chủ xe thực hiện các công đoạn chính trong quá trình vận tải hàng hóa bằng xe ô tô, bao gồm công đoạn trực tiếp điều hành phương tiện, trực tiếp vận chuyển Hàng Hóa, quyết định Giá Vận Chuyển cung cấp cho các Chủ hàng, LOGIVAN sẽ là đơn vị thông báo Giá Vận Chuyển để Chủ xe xác nhận.
                        </p>
                    </li>
                    <li>
                        <p>
                            Thông qua Hệ Thống, và/hoặc phương thức khác, LOGIVAN tìm kiếm và gửi các Đơn Hàng phù hợp để Chủ xe lựa chọn và gửi Báo giá Vận Chuyển, bao gồm các thông tin về Hàng Hóa, địa điểm thời gian giao nhận, quy cách đóng gói, phương tiện vận tải (“Đơn Hàng”).
                        </p>
                    </li>
                </ol>
                <ol start="3">
                    <li>Cách thức sử dụng Đơn Hàng LOGINOW, Đơn Hàng DỰ ÁN và điều kiện với Chủ xe</li>
                </ol>
                <p>Chủ xe lựa chọn Đơn hàng phù hợp với mong muốn trên Ứng Dụng LOGIVAN Chủ xe.</p>
                <p>
                    <strong>2.4. Giá Vận Chuyển</strong>
                </p>
                <ol>
                    <li>
                        <p>Giá Vận Chuyển là giá được Chủ xe báo qua LOGIVAN và Chủ hàng xác nhận cho từng Đơn Hàng (“<strong>Giá Vận Chuyển</strong>”)</p>
                    </li>
                    <li>
                        <p>Chủ xe ủy quyền LOGIVAN thực hiện thu Giá Vận Chuyển và các chi phí khác từ Chủ hàng.</p>
                    </li>
                    <li>
                        <p>Các chi phí phát sinh khác sẽ được hai bên thỏa thuận trực tiếp trong quá trình vận hành đơn</p>
                    </li>
                    <li>
                        <p>Hóa đơn, chứng từ gốc về chi phí phải được Chủ xe (i) cập nhật hình ảnh lên Hệ Thống ngay sau khi phát sinh; và (ii) chuyển lại cho LOGIVAN trong vòng ba (03) ngày làm việc kể từ khi hoàn thành Đơn Hàng. </p>
                    </li>
                    <li>Phân chia kết quả kinh doanh</li>
                </ol>
                <ol>
                    <li>
                        <p>LOGIVAN và Chủ xe phân chia kết quả kinh doanh trên Giá Vận Chuyển mà LOGIVAN thu được từ Chủ hàng theo từng Đơn Hàng. Tỷ lệ phân chia sẽ được xác định cụ thể đối với từng Đơn Hàng.</p>
                    </li>
                    <li>
                        <p>Số tiền phân chia cho các bên bao gồm cả nghĩa vụ thuế phát sinh.</p>
                    </li>
                    <li>
                        <p>Khi hoàn thành việc vận chuyển Hàng Hóa, và không có khiếu nại nào từ Chủ hàng: Trong vòng hai (02) ngày làm việc, LOGIVAN sẽ tính toán phân chia kết quả kinh doanh, khấu trừ nghĩa vụ thuế phát sinh của Chủ xe. Số tiền còn lại sẽ gửi cho Chủ xe qua hình thức chuyển khoản sau khi Chủ xe cung cấp đủ bản gốc các hóa đơn và chứng từ hợp lệ.</p>
                    </li>
                </ol>
                <ol start="6">
                    <li>Điều kiện khác</li>
                </ol>
                <ol>
                    <li>
                        <p>Đơn Hàng sử dụng gói Dịch Vụ LOGINOW chỉ được phép áp dụng một trong các chương trình khuyến mãi trong cùng thời điểm (nếu có).</p>
                    </li>
                    <li>
                        <p>Phải tuân thủ quy định của LOGIVAN trong việc vận chuyển Đơn Hàng sử dụng Dịch Vụ LOGINOW và Dịch Vụ DỰ ÁN. Trong trường hợp xảy ra những sự cố phát sinh đến từ thỏa thuận riêng của Chủ xe và Chủ hàng mà không thông qua LOGIVAN, LOGIVAN sẽ không chịu bất cứ trách nhiệm nào.</p>
                    </li>
                    <li>
                        <p>LOGIVAN sẽ cập nhật đến Chủ xe trong trường hợp có những thay đổi đối với gói Dịch Vụ LOGINOW và hoặc Dịch Vụ DỰ ÁN.</p>
                    </li>
                </ol>
                <ol start="3">
                    <li>Quy trình thao tác qua Ứng dụng</li>
                </ol>
                <ol>
                    <li>
                        <p>
                            Hướng dẫn tải và đăng ký Ứng Dụng
                        </p>
                    </li>
                </ol>
                <p>
                    Chủ xe tải Ứng Dụng trên CH Play đối với hệ điều hành Android và Appstore đối với hệ điều hành IOS.
                    <br />
                    <br />
                    Hoặc nhấp vào link:
                </p>
                <ul>
                    <li>Android: 
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/HinhAnh/HinhAnhDieuKhoanSuDung/image1.jpg" />
                        <a href="https://play.google.com/store/apps/details?id=com.LOGIVAN">https://play.google.com/store/apps/details?id=com.LOGIVAN

                        </a>
                    </li>
                    <li>
                        IOS: 
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/HinhAnh/HinhAnhDieuKhoanSuDung/image1.jpg" />
                        <a href="https://apps.apple.com/us/app/LOGIVAN-ch%E1%BB%A7-xe/id1333598414">
                            https://apps.apple.com/us/app/LOGIVAN-ch%E1%BB%A7-xe/id1333598414
                        </a>
                    </li>
                </ul>
                <ol>
                    <li>
                        <p>
                            <strong>Bước 1:</strong>
                            Nhập số điện thoại đăng kí vào ô trống và nhấn
                            <strong>tiếp tục</strong>
                        </p>
                    </li>
                </ol>
                <ol>
                    <li>
                        <p>
                            Chọn
                            <strong>“Get a whatsApp code”</strong>
                            nếu muốn nhận mã xác nhận qua “Whatsapp”.
                        </p>
                    </li>
                    <li>
                        <p>
                            Chọn
                            <strong>“Use SMS”</strong>
                            nếu muốn nhận mã xác thực qua tin nhắn (SMS).
                        </p>
                    </li>
                </ol>
                <ol start="2">
                    <li>
                        <p>
                            <strong>Bước 2: </strong>
                            Sau khi chọn nhận mã xác nhận: Hệ thống sẽ gửi tin mã xác nhận (6 số) về số điện thoại đăng ký. Điền mã nhận đã nhận và nhấn
                            <strong>"Continue".</strong>
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>Bước 3:</strong>
                            Điền thông tin cá nhân và thông tin xe
                        </p>
                    </li>
                </ol>
                <ol>
                    <li>
                        <p>Thông tin vận tải</p>
                    </li>
                </ol>
                <ul>
                    <li>Điền đầy đủ họ tên trùng với giấy tờ (nếu bạn là Chủ xe, có tài xế chạy riêng, vui lòng nhập tên Chủ xe), nhấn <strong>“Tiếp tục”</strong> sau khi đã nhập đầy đủ thông tin.</li>
                    <li>Vui lòng nhập địa chỉ bãi xe (quận/huyện, tỉnh/thành), sau đó nhấn tiếp tục.</li>
                    <li>Chọn <strong>“Điểm đến”</strong>(<asp:Image ID="Image3" runat="server" ImageUrl="~/HinhAnh/HinhAnhDieuKhoanSuDung/image2.jpg" />) sau đó chọn những tuyến đường hay chạy, LOGIVAN khuyến khích khách hàng chọn nhiều tuyến để có thể nhận được nhiều đơn hơn, rồi nhấn <strong>tiếp tục</strong>.</li>
                    <li>Chọn 1 trong 2 lựa chọn sau:</li>
                    <li>Chọn đơn chiều đi xuất hiện trước: khi bạn muốn ưu tiên những Đơn Hàng có điểm bốc hàng là điểm bạn đăng ký bãi đậu, điểm dỡ hàng là nơi bạn đăng ký điểm đến.</li>
                    <li>Chọn đơn chiều về xuất hiện trước: Khi bạn muốn ưu tiên những Đơn Hàng có điểm bốc hàng là điểm bạn đăng ký điểm đến, điểm dỡ hàng là nơi bạn đăng ký bãi đậu.</li>
                    <li>Nhấn tiếp tục sau khi đã chọn xong.</li>
                </ul>
                <ol start="2">
                    <li>
                        <p>Thông tin cá nhân</p>
                    </li>
                </ol>
                <ul>
                    <li>Chọn hình ảnh để cập nhật ảnh đại diện. Lưu ý ảnh đại diện phải rõ mặt của Chủ xe.</li>
                    <li>Chọn dấu “+” để cập nhật hình CMND/CCCD và GPLX theo đúng vị trí từng ô, thỏa các điều kiện:</li>
                    <li>Còn hạn.</li>
                    <li>Là bản gốc (không chấp nhận chụp màn hình từ các thiết bị, ảnh có nguồn gốc từ internet).</li>
                    <li>Thể hiện thông tin đầy đủ, rõ ràng.</li>
                    <li>CMND hai mặt và GPLX chụp mặt trước.</li>
                </ul>
                <ol start="3">
                    <li>
                        <p>Thông tin xe</p>
                    </li>
                </ol>
                <ul>
                    <li>Đăng kiểm xe phải:</li>
                    <li>Còn hạn.</li>
                    <li>Là bản gốc (không chấp nhận chụp màn hình từ các thiết bị, ảnh có nguồn gốc từ internet).</li>
                    <li>Chụp mặt trong đầy đủ thông tin và rõ ràng.</li>
                </ul>
                <p style="font-style:italic;">(Lưu ý: Nếu có nhiều xe khác nhau, có thể đăng tải nhiều đăng kiểm).</p>
                <ul>
                    <li>Nhập thông tin xe hiển thị trên đăng kiểm, sau đó nhấn <strong>"Lưu".</strong></li>
                </ul>
                <ol start="4">
                    <li>
                        <p>
                            <strong>Bước 4: </strong>
                            Nhấn Xem Đơn Hàng để kết thúc đăng ký.
                        </p>
                    </li>
                </ol>
                <ol start="2">
                    <li>
                        <p>Hướng dẫn tìm và thực hiện Đơn Hàng:</p>
                    </li>
                </ol>
                <ol>
                    <li>
                        <p>
                            <strong>Bước 1: </strong>
                            Tìm Đơn Hàng
                        </p>
                    </li>
                </ol>
                <ol>
                    <li>
                        <p>Tại màn hình trang chủ chọn mục “Đơn Hàng”.</p>
                    </li>
                    <li>
                        <p>Trong giao diện đơn:</p>
                    </li>
                </ol>
                <ul>
                    <li>Đơn cần xe: hiển thị những Đơn Hàng phù hợp với trọng tải và tuyến đường.</li>
                    <li>Nhấn chọn Đơn Hàng phù hợp.</li>
                </ul>
                <ol start="2">
                    <li>
                        <p>
                            <strong>Bước 2: </strong>
                            Chọn Đơn Hàng và Báo giá.
                        </p>
                    </li>
                </ol>
                <p>Tại giao diện Đơn Hàng có 3 lựa chọn Báo giá cho Chủ hàng:</p>
                <ol>
                    <li>
                        <p>Cách 1: Báo giá trực tiếp trên Ứng Dụng:</p>
                    </li>
                </ol>
                <ul>
                    <li>Chọn số lượng xe muốn Báo giá (nếu Chủ hàng yêu cầu nhiều xe).</li>
                    <li>Nhập tổng giá cước của Đơn Hàng, sau đó nhấn <strong>xác nhận.</strong></li>
                </ul>
                <ol start="2">
                    <li>
                        <p>Cách 2: Gọi trực tiếp cho Chủ hàng (khi Chủ hàng không ẩn liên hệ):</p>
                    </li>
                </ol>
                <p>Chủ xe có 2 lựa chọn loại cuộc gọi:</p>
                <ul>
                    <li>Gọi thường: Gọi có tính phí như thông thường.</li>
                    <li>Gọi miễn phí thông qua wifi hoặc 3G/4G.</li>
                </ul>
                <ol start="3">
                    <li>
                        <p>Cách 3: Gọi trực tiếp số hotline cho LOGIVAN đối với các Đơn Hàng LOGINOW hoặc Đơn Hàng DỰ ÁN</p>
                    </li>
                </ol>
                <ol start="3">
                    <li>
                        <p>
                            <strong>Bước 3: </strong>
                            Nhận hoặc từ chối Đơn Hàng
                        </p>
                    </li>
                </ol>
                <p>Bạn sẽ nhận được thông báo nếu Chủ hàng chấp nhận Báo giá, nhấn vào thông báo để nhận đơn.</p>
                <ol>
                    <li>
                        <p>Nhận Đơn Hàng: Kiểm tra thông tin sau đó <strong>“trượt để nhận”</strong> để tiến hành quá trình nhận đơn và vận chuyển, nhấn <strong>OK</strong> để hoàn tất quá trình nhận đơn.</p>
                    </li>
                    <li>
                        <p>Từ chối Đơn Hàng: nhấn <strong>từ chối</strong> (góc trên bên phải) để từ chối Đơn Hàng, chọn lý do từ chối rồi nhấn <strong>OK</strong>.</p>
                    </li>
                </ol>
                <ol start="4">
                    <li>
                        <p>
                            <strong>Bước 4: </strong>
                            Cách vận hành Đơn Hàng
                        </p>
                    </li>
                </ol>
                <ol>
                    <li>
                        <p>Cách tìm Đơn Hàng cần thực hiện</p>
                    </li>
                </ol>
                <ul>
                    <li>
                        Vào Của tôi (<asp:Image ID="Image4" runat="server" ImageUrl="~/HinhAnh/HinhAnhDieuKhoanSuDung/image3.png" />) chọn mục Đang thực hiện để xem những Đơn Hàng đã được chấp nhận Báo giá
                    </li>
                    <li>Chọn một Đơn Hàng cần thực hiện.</li>
                </ul>
                <p style="font-style:italic;">
                    (Lưu ý:
                    <br />
                    <br />
                    - Đối với Đơn Hàng cần nhiều xe, mỗi xe sẽ hiển thị thành một Đơn Hàng cần vận chuyển, quá trình nhận và giao hàng tương tự như Đơn Hàng 1 xe.
                    <br />
                    <br />
                    - Đơn Hàng có bao nhiêu xe thì cần phải cập nhật đủ quá trình nhận và giao hàng cho từng xe).
                </p>
                <ol start="2">
                    <li>
                        <p>Cập nhật quá trình nhận hàng</p>
                    </li>
                </ol>
                <p>
                    Sau khi nhận hàng, vui lòng nhấn vào 
                    <strong>"Đăng biên bản xuất kho".</strong>
                    <br />
                    <br />
                    (<asp:Image ID="Image5" runat="server" ImageUrl="~/HinhAnh/HinhAnhDieuKhoanSuDung/image4.jpg" />) để chụp lại giấy tờ (bắt buộc). Nhấn 
                    <strong>"Tôi đã nhận hàng"</strong> 
                    sau khi đã đăng tải biên bản xong.
                </p>
                <ol start="3">
                    <li>
                        <p>Cập nhật quá trình giao hàng</p>
                    </li>
                </ol>
                <p>
                    Sau khi giao hàng, vui lòng nhấn vào <strong>đăng biên bản nhận hàng</strong> (<asp:Image ID="Image6" runat="server" ImageUrl="~/HinhAnh/HinhAnhDieuKhoanSuDung/image5.jpg" />) để chụp lại giấy tờ (bắt buộc). Nhấn <strong>"Tôi đã giao hàng"</strong> sau khi đăng tải để thông báo cho Chủ hàng biết quá trình giao hàng đã thành công.
                </p>
                <ol start="4">
                    <li>
                        <p>Hoàn tất Đơn Hàng</p>
                    </li>
                </ol>
                <p style="font-style:italic;">Xem lịch sử Đơn Hàng thực hiện thành công.</p>
                <p>Vào <strong>Của tôi</strong> (<asp:Image ID="Image7" runat="server" ImageUrl="~/HinhAnh/HinhAnhDieuKhoanSuDung/image3.png" />) chọn mục <strong>"Đã hoàn thành"</strong> để xem lại thông tin những Đơn Hàng của bạn sau khi hoàn tất.</p>
                <ol start="4">
                    <li>Chính sách thanh toán</li>
                </ol>
                <ol>
                    <li>
                        Sàn Vận Chuyển
                    </li>
                </ol>
                <p>Toàn bộ việc thanh toán là Chủ hàng và Chủ xe trực tiếp làm việc và thỏa thuận với nhau mà không thông qua LOGIVAN. </p>
                <ol start="2">
                    <li>LOGINOW</li>
                </ol>
                <ol>
                    <li>
                        <p>Giá Vận Chuyển</p>
                    </li>
                </ol>
                <p>Giá Vận Chuyển là giá được thống nhất giữa các Bên cho từng Đơn Hàng LOGINOW, được xác nhận đồng ý của hai Bên thông qua một trong hai hình thức sau:</p>
                <ol>
                    <li>
                        <p>hoặc Chủ xe xác nhận đồng ý cung cấp Dịch vụ cho Đơn Hàng LOGINOW theo giá trên Ứng dụng;</p>
                    </li>
                    <li>
                        <p>hoặc LOGIVAN chấp nhận giá mà Chủ xe đề xuất mới trên Ứng dụng.</p>
                    </li>
                </ol>
                <ol start="2">
                    <li>
                        <p>Thời gian thanh toán </p>
                    </li>
                </ol>
                <p>Trong vòng hai (03) ngày làm việc kể từ ngày hoàn thành việc vận chuyển hàng hóa, không có khiếu nại nào từ Chủ Hàng, và Chủ xe cung cấp đủ bản gốc các hóa đơn và chứng từ hợp lệ, LOGIVAN sẽ thanh toán cho Chủ xe thông qua hình thức chuyển khoản ngân hàng.</p>
                <ol start="3">
                    <li>
                        <p>Phương thức thanh toán</p>
                    </li>
                </ol>
                <ol>
                    <li>
                        <p>LOGIVAN thanh toán bằng chuyển khoản vào tài khoản ngân hàng mà Chủ xe đã đăng ký trên Ứng dụng.</p>
                    </li>
                    <li>
                        <p>Lưu ý: Chỉ thanh toán vào tài khoản mà Chủ xe đã đăng ký trên Ứng dụng và là tài khoản ngân hàng có tên chủ tài khoản trùng với Chứng minh nhân dân/ Căn cước công dân của Chủ xe hoặc Chủ phương tiện vận tải, LOGIVAN không chịu trách nhiệm thanh toán vào các tài khoản khác như tài khoản của người thân, bạn bè Chủ xe.</p>
                    </li>
                </ol>
                <ol start="4">
                    <li>
                        <p>Hồ sơ thanh toán</p>
                    </li>
                </ol>
                <ol>
                    <li>
                        <p>Hoàn thành chuyến hàng: Chủ xe bấm hoàn thành chuyến hàng trên Ứng dụng, cập nhật đầy đủ Biên bản giao nhận hàng có chữ ký của Chủ xe & Người nhận hàng trên Ứng dụng. </p>
                    </li>
                    <li>
                        <p>Gửi Bộ hồ sơ thanh toán về văn phòng LOGIVAN.</p>
                    </li>
                    <li>
                        <p>Bộ hồ sơ thanh toán bao gồm: </p>
                    </li>
                </ol>
                <ul>
                    <li>Biên bản giao nhận hàng có chữ ký của Chủ xe và Người nhận hàng (bản gốc),</li>
                    <li>Hoá đơn vận chuyển xuất cho LOGIVAN bằng với giá trị cước vận chuyển chuyến hàng và cước phát sinh (nếu có).</li>
                </ul>
                <ol start="3">
                    <li>DỰ ÁN</li>
                </ol>
            </td>
        </tr>
    </table>
</asp:Content>
