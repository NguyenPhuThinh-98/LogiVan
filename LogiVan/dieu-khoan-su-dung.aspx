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

            #info h1 {
                text-align: center;
            }

            #info ol li {
                font-weight: bold;
            }

                #info ol li p {
                    font-weight: normal;
                }

            #info table {
                border-collapse: collapse;
            }

                #info table tr td {
                    border: 1px solid black;
                    padding-left: 1%;
                    padding-right: 1%;
                }
                #info a{
                    color:orange;
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
                <ol>
                    <li>
                        <p>Giá vận chuyển</p>
                    </li>
                </ol>
                <p>Giá Vận Chuyển là giá được thống nhất giữa các Bên cho từng Đơn Hàng, được xác nhận đồng ý của hai Bên thông qua một trong hai hình thức sau:</p>
                <ol>
                    <li>
                        <p>hoặc Chủ xe xác nhận đồng ý cung cấp Dịch vụ cho Đơn Hàng theo giá trên Ứng dụng;</p>
                    </li>
                    <li>
                        <p>hoặc LOGIVAN chấp nhận giá mà Chủ xe đề xuất mới trên Ứng dụng.</p>
                    </li>
                </ol>
                <ol start="2">
                    <li>
                        <p>Thời gian thanh toán</p>
                    </li>
                </ol>
                <p>Khi hoàn thành việc vận chuyển Hàng Hóa và không có bất kỳ khiếu nại nào từ Chủ Hàng, Chủ xe sẽ cung cấp đủ bản gốc các hóa đơn/chứng từ hợp lệ theo quy định mục d dưới đây muộn nhất vào ngày 15 hàng tháng đối với các đơn hàng phát sinh từ ngày 1 đến ngày 15 tháng đó và muộn nhất vào ngày làm việc cuối cùng mỗi tháng đối với các đơn hàng phát sinh từ ngày 16 đến ngày cuối cùng trong tháng đó, LOGIVAN sẽ thanh toán cho Chủ xe qua hình thức chuyển khoản trong vòng mười lăm (15) ngày làm việc kể từ khi LOGIVAN nhận đủ hóa đơn/chứng từ hợp lệ.</p>
                <ol start="3">
                    <li>
                        <p>Phương thức thanh toán</p>
                    </li>
                </ol>
                <p>
                    LOGIVAN thanh toán bằng chuyển khoản vào tài khoản ngân hàng mà Chủ xe đã đăng ký trên ứng dụng.
                    <br />
                    <br />
                    Lưu ý: chỉ thanh toán vào tài khoản mà Chủ xe đã đăng ký trên ứng dụng và là tài khoản ngân hàng có tên chủ tài khoản trùng với Chứng minh nhân dân/Căn cước công dân của Chủ xe hoặc Chủ phương tiện vận tải. LOGIVAN không chịu trách nhiệm thanh toán vào các tài khoản khác như tài khoản của người thân, bạn bè Chủ xe.
                </p>
                <ol start="4">
                    <li>
                        <p>Hồ sơ thanh toán</p>
                    </li>
                </ol>
                <ol>
                    <li>
                        <p>Hoàn thành chuyến hàng: Chủ xe bấm hoàn thành chuyển hàng trên ứng dụng, cập nhật đầy đủ Biên bản giao nhận hàng có chữ ký của Chủ xe & Người nhận hàng trên ứng dụng</p>
                    </li>
                    <li>
                        <p>Gửi bộ hồ sơ thanh toán về văn phòng LOGIVAN</p>
                    </li>
                    <li>
                        <p>Bộ hồ sơ thanh toán bao gồm:</p>
                    </li>
                </ol>
                <ul>
                    <li>Biên bản giao nhận hàng có chữ ký của Chủ xe và người nhận hàng (Bản gốc);</li>
                    <li>Hóa đơn vận chuyển xuất kho cho LOGIVAN bằng với giá trị cước vận chuyển chuyến hàng và cước phát sinh (nếu có);</li>
                    <li>Bảng kê các tuyến vận chuyển trong một kỳ.</li>
                </ul>
                <ol start="5">
                    <li>Bảo hiểm</li>
                </ol>
                <ol>
                    <li>
                        <p>Chủ xe có nghĩa vụ mua bảo hiểm bắt buộc đầy đủ cho phương tiện của mình.</p>
                    </li>
                    <li>
                        <p>Tùy vào yêu cầu của từng dự án (nếu có), LOGIVAN bằng quyết định của mình có thể hỗ trợ Chủ xe mua Bảo hiểm trách nhiệm dân sự của chủ xe cơ giới đối với hàng hóa vận chuyển trên xe hoặc Bảo hiểm hàng hóa (gọi chung là “Bảo hiểm hàng hóa”) để hạn chế tối đa các thiệt hại khi vận hành.</p>
                    </li>
                    <li>
                        <p>Với các Chủ xe được LOGIVAN hỗ trợ mua Bảo hiểm hàng hóa, Chủ xe tại đây cam kết với LOGIVAN, các xe được mua Bảo hiểm hàng hóa (bằng chi phí của LOGIVAN) sẽ tuyệt đối đảm bảo yêu cầu vận chuyển cho LOGIVAN trong thời gian Bảo hiểm hàng hóa còn hiệu lực. Dù bất cứ lý do gì, Chủ xe không được phép hủy ngang Thỏa thuận hoặc ngưng phục vụ LOGIVAN trong thời gian còn thời hạn của Bảo hiểm hàng hóa. Nếu vi phạm điều khoản này, Chủ xe sẽ bồi thường cho LOGIVAN 100% chi phí mua Bảo hiểm hàng hóa và bất kỳ thiệt hại, chi phí phát sinh nào cho LOGIVAN.</p>
                    </li>
                    <li>
                        <p>Khi phát sinh tai nạn, sự cố, Chủ xe có trách nhiệm thông báo ngay lập tức cho LOGIVAN (muộn nhất không quá 01 tiếng kể từ thời điểm phát sinh) và phối hợp với LOGIVAN trong quá trình xác minh các điều kiện để được bồi hoàn chi phí từ bảo hiểm. Nếu chậm cung cấp hồ sơ hoặc thông báo dẫn tới thiệt hại bị từ chối bảo hiểm thì LOGIVAN có quyền yêu cầu Chủ xe bồi thường toàn bộ giá trị thiệt hại và các chi phí phát sinh (nếu có).</p>
                    </li>
                </ol>
                <ol start="6">
                    <li>Đảm bảo an toàn giao dịch</li>
                </ol>
                <p>Tất cả các Chủ xe khi tham gia vào hệ thống LOGIVAN đều phải tuân thủ các quy định đảm bảo an toàn giao dịch, bao gồm nhưng không giới hạn:</p>
                <ol>
                    <li>
                        <p>LOGIVAN áp dụng các biện pháp cần thiết để bảo mật thông tin của các Chủ xe trên Website, Ứng Dụng và luôn nỗ lực hạn chế tối đa rủi ro có thể phát sinh để đảm bảo các giao dịch được tiến hành thuận lợi và thành công.</p>
                    </li>
                    <li>
                        <p>Khi đăng ký sử dụng Ứng Dụng, các Chủ xe phải kê khai cho LOGIVAN các thông tin theo yêu cầu của Hệ thống. Các thông tin này được LOGIVAN thẩm định và lưu trữ trong hệ thống để đảm bảo rằng giao dịch được thực hiện thành công và giảm thiểu rủi ro có thể phát sinh.</p>
                    </li>
                    <li>
                        <p>Các Chủ xe có trách nhiệm không tiết lộ thông tin chi tiết về bản thân, cũng như chi tiết về việc thanh toán với bất kỳ bên thứ ba nào qua email, điện thoại hoặc bất kỳ hình thức liên lạc nào khác. LOGIVAN và các công ty liên kết không chịu trách nhiệm về những thiệt hại hay rủi ro mà các Thành viên có thể gánh chịu trong việc trao đổi thông tin với bất kỳ bên thứ ba nào ngoài LOGIVAN.</p>
                    </li>
                    <li>
                        <p>Mọi thông tin giao dịch được bảo mật, trừ trường hợp cung cấp cho cơ quan pháp luật có thẩm quyền khi được yêu cầu.</p>
                    </li>
                </ol>
                <ol start="7">
                    <li>Quyền và nghĩa vụ của LOGIVAN</li>
                </ol>
                <ol>
                    <li>Quyền của LOGIVAN</li>
                </ol>
                <ol>
                    <li>Quyền chung trên Hệ thống</li>
                </ol>
                <ol>
                    <li>
                        <p>Có quyền yêu cầu các Chủ xe cung cấp các thông tin, giấy tờ, tài liệu cần thiết cho việc kiểm chứng các giao dịch phát sinh trên hệ thống của LOGIVAN.</p>
                    </li>
                    <li>
                        <p>Có quyền tạm dừng hợp tác với một hoặc nhiều Chủ xe trong trường hợp vi phạm các <strong>Điều Khoản Sử Dụng</strong> của LOGIVAN hoặc có những hành vi trái với bộ <a href="#">Quy tắc ứng xử</a> dành cho các Thành viên trên hệ thống LOGIVAN.</p>
                    </li>
                    <li>
                        <p>Có quyền đơn phương tạm dừng hợp tác với những Chủ xe vi phạm mà không cần báo trước.</p>
                    </li>
                    <li>
                        <p>LOGIVAN có quyền từ chối giải quyết tranh chấp, khiếu nại khi Chủ xe không thực hiện đúng hướng dẫn.</p>
                    </li>
                </ol>
                <ol start="2">
                    <li>Quyền đối với Dịch Vụ LOGINOW và Dịch Vụ DỰ ÁN:</li>
                </ol>
                <ol>
                    <li>
                        <p>Thay mặt Chủ xe để ký kết hợp đồng vận tải hàng hóa với Chủ hàng, thu tiền Giá Vận Chuyển và các chi phí từ Chủ hàng, xuất hóa đơn và thực hiện các công đoạn khác trong quá trình hỗ trợ vận tải (trừ công đoạn trực tiếp điều hành phương tiện, lái xe vận chuyển hàng hóa, quyết định giá cước vận tải);</p>
                    </li>
                    <li>
                        <p>Hướng dẫn Chủ xe tuân thủ các quy định nội bộ của Chủ hàng khi giao, nhận, và vận chuyển Hàng Hóa;</p>
                    </li>
                    <li>
                        <p>Kiểm tra điều kiện kinh doanh vận tải và phương tiện, năng lực tài xế của Chủ xe;</p>
                    </li>
                    <li>
                        <p>Đơn phương chấm dứt Thỏa Thuận, và/hoặc ngừng cho phép Chủ xe tham gia vào Hệ Thống nếu Chủ xe không đáp ứng đủ các điều kiện kinh doanh vận tải, vi phạm nghiêm trọng Thỏa Thuận hoặc có hành vi vi phạm pháp luật khác;</p>
                    </li>
                    <li>
                        <p>Được thực hiện các chương trình xúc tiến thương mại tại từng thời điểm theo quyết định của LOGIVAN và phù hợp với các quy định pháp luật liên quan;</p>
                    </li>
                    <li>
                        <p>LOGIVAN có quyền thực hiện đánh giá chất lượng dịch vụ của Chủ xe sau khi thực hiện Đơn Hàng;</p>
                    </li>
                    <li>
                        <p>Các quyền khác theo quy định của Thỏa Thuận và pháp luật liên quan.</p>
                    </li>
                </ol>
                <ol start="2">
                    <li>Nghĩa vụ của LOGIVAN</li>
                </ol>
                <ol>
                    <li>Nghĩa vụ chung trên Hệ thống</li>
                </ol>
                <ol>
                    <li>
                        <p>Kiểm tra và xác thực thông tin đăng ký các tài khoản tham gia hoạt động trên LOGIVAN.</p>
                    </li>
                    <li>
                        <p>Lưu giữ thông tin đăng ký của các Thành viên ngay từ ngày đăng ký tham gia LOGIVAN và thường xuyên cập nhật các thông tin thay đổi, bổ sung có liên quan.</p>
                    </li>
                    <li>
                        <p>Áp dụng các biện pháp cần thiết để đảm bảo an toàn thông tin, không được tiết lộ, chuyển nhượng, cho thuê hoặc bán các thông tin liên quan đến người dùng khi chưa được sự đồng ý của các bên liên quan, trừ trường hợp pháp luật có quy định khác.</p>
                    </li>
                    <li>
                        <p>Xử lý kịp thời khi phát hiện hoặc nhận được phản ánh về hành vi vi phạm pháp luật, vi phạm chính sách của LOGIVAN.</p>
                    </li>
                    <li>
                        <p>Yêu cầu các Thành viên phải cung cấp đầy đủ giấy tờ cần thiết để xác minh tài khoản.</p>
                    </li>
                    <li>
                        <p>Phối hợp và hỗ trợ cơ quan quản lý Nhà nước điều tra các hành vi vi phạm pháp luật, cung cấp thông tin đăng ký, lịch sử giao dịch và các tài liệu khác về đối tượng có hành vi vi phạm pháp luật.</p>
                    </li>
                    <li>
                        <p>Công bố công khai cơ chế giải quyết các khiếu nại phát sinh trong quá trình giao dịch trên LOGIVAN. Khi các Thành viên bị tổn hại lợi ích hợp pháp, LOGIVAN phải tích cực hỗ trợ khách hàng bảo vệ quyền và lợi ích hợp pháp của mình.</p>
                    </li>
                    <li>
                        <p>Duy trì hoạt động bình thường của LOGIVAN và nhanh chóng khắc phục các sự cố xảy ra ảnh hưởng tới hoạt động như: sự cố kỹ thuật về máy móc, lỗi phần mềm, hệ thống đường truyền internet, nhân sự. Trường hợp xảy ra các sự kiện bất khả kháng như: thiên tai, hỏa hoạn, biến động xã hội, các quyết định của cơ quan chức năng... nằm ngoài khả năng kiểm soát thì LOGIVAN không phải chịu trách nhiệm liên đới.</p>
                    </li>
                </ol>
                <ol start="2">
                    <li>Nghĩa vụ đối với Dịch Vụ LOGINOW và Dịch Vụ DỰ ÁN:</li>
                </ol>
                <ol>
                    <li>
                        <p>Phân chia kết quả kinh doanh cho Chủ xe theo đúng quy định của Thỏa Thuận này;</p>
                    </li>
                    <li>
                        <p>LOGIVAN có trách nhiệm thay mặt Chủ xe thực hiện khấu trừ, kê khai và nộp thuế thay Chủ xe vào ngân sách nhà nước; và</p>
                    </li>
                    <li>
                        <p>Các nghĩa vụ và trách nhiệm khác theo quy định của Thỏa Thuận này và pháp luật liên quan.</p>
                    </li>
                    <li>
                        <p>Hỗ trợ trực tiếp cho Chủ xe theo thỏa thuận riêng của từng đơn hàng để khuyến khích Chủ xe thực hiện khai thác doanh thu từ Chủ hàng.</p>
                    </li>
                </ol>
                <ol start="8">
                    <li>Quyền và nghĩa vụ của Chủ xe</li>
                </ol>
                <ol>
                    <li>Quyền của Chủ xe</li>
                </ol>
                <ol>
                    <li>
                        <p>Chủ xe được phép cài đặt Ứng Dụng trên thiết bị di động cá nhân cho mục đích sử dụng cá nhân hợp pháp.</p>
                    </li>
                    <li>
                        <p>Chủ xe có quyền đóng góp ý kiến cho LOGIVAN trong quá trình hoạt động. Các kiến nghị được gửi trực tiếp bằng thư, điện thoại, email hoặc các kênh phản ánh khác không trái pháp luật đến LOGIVAN.</p>
                    </li>
                    <li>
                        <p>Chủ xe được LOGIVAN bảo mật các thông tin cá nhân theo quy định về Bảo mật thông tin Chủ xe của LOGIVAN.</p>
                    </li>
                    <li>
                        <p>Kiểm tra tính phù hợp của Hàng Hóa vận chuyển so với Đơn Hàng, các chứng từ vận chuyển tương đương khác liên quan đến Hàng Hóa vận chuyển;</p>
                    </li>
                    <li>
                        <p>Các quyền khác theo quy định của Thỏa Thuận và quy định pháp luật liên quan.</p>
                    </li>
                </ol>
                <ol start="2">
                    <li>Nghĩa vụ của Chủ xe</li>
                </ol>
                <ol>
                    <li>Nghĩa vụ chung trên Hệ thống</li>
                </ol>
                <ol>
                    <li>
                        <p>Chịu toàn bộ trách nhiệm trong việc sử dụng tài khoản của mình trên Hệ thống của LOGIVAN.</p>
                    </li>
                    <li>
                        <p>Cung cấp đầy đủ và chính xác các thông tin cá nhân theo yêu cầu của LOGIVAN khi đăng ký và trong suốt quá trình sử dụng Ứng Dụng của LOGIVAN.</p>
                    </li>
                    <li>
                        <p>Thực hiện đúng các thao tác cần thực hiện, chấp nhận những Đơn Hàng mà mình thực sự có thể vận chuyển. LOGIVAN được miễn trừ trách nhiệm với các thiệt hại xảy ra do thao tác được thực hiện không đúng.</p>
                    </li>
                    <li>
                        <p>Trong trường hợp Chủ xe mất điện thoại hoặc thay đổi số điện thoại đăng ký tài khoản, Chủ xe có nghĩa vụ thông báo cho LOGIVAN để LOGIVAN tiến hành thủ tục thay đổi hoặc tạm thời chặn các giao dịch có liên quan giúp Chủ xe quản lý quá trình sử dụng Dịch Vụ của mình. LOGIVAN sẽ không chịu trách nhiệm hoặc giải quyết khiếu nại trong trường hợp Chủ xe không thông báo cho LOGIVAN dẫn đến việc có bên thứ ba sử dụng tài khoản đó của Chủ xe.</p>
                    </li>
                    <li>
                        <p>Không được ủy quyền, chuyển nhượng hay chuyển giao tài khoản của mình với bất kỳ hình thức nào cho bên thứ ba bất kỳ.</p>
                    </li>
                    <li>
                        <p>Không được sử dụng tài khoản không phải của mình để thực hiện Dịch Vụ.</p>
                    </li>
                    <li>
                        <p>Chịu trách nhiệm trước pháp luật đối với những trường hợp phát sinh trong quá trình vận chuyển hàng hóa mà mình chấp nhận trên LOGIVAN.</p>
                    </li>
                    <li>
                        <p>Cung cấp đầy đủ hóa đơn, chứng từ hợp pháp cho Chủ hàng và LOGIVAN khi có yêu cầu.</p>
                    </li>
                    <li>
                        <p>Không được sử dụng Ứng Dụng nhằm mục đích trái pháp luật.</p>
                    </li>
                    <li>
                        <p>Chịu trách nhiệm về tính chính xác của các thông tin được Chủ xe cung cấp hoặc bổ sung tiếp tục (nếu có) khi đang sử dụng Ứng Dụng của LOGIVAN.</p>
                    </li>
                    <li>
                        <p>Không được sử dụng Dịch Vụ hoặc Ứng Dụng để gây phiền toái hoặc làm khó Chủ hàng trên hệ thống của LOGIVAN.</p>
                    </li>
                    <li>
                        <p>Không được cố tình bôi nhọ danh dự, vu khống, hoặc bịa đặt những điều làm tổn hại đến danh dự, uy tín của LOGIVAN.</p>
                    </li>
                    <li>
                        <p>Cung cấp và chịu trách nhiệm về tính chính xác về thông tin của phương tiện khi thực hiện Đơn Hàng trên LOGIVAN.</p>
                    </li>
                    <li>
                        <p>Không được sao chép, sử dụng các thông tin, nội dung trên Ứng Dụng của LOGIVAN mà không có sự cho phép bằng văn bản của LOGIVAN.</p>
                    </li>
                    <li>
                        <p>Đồng ý ủy quyền cho LOGIVAN thực hiện đầy đủ nghĩa vụ thuế theo quy định của pháp luật.</p>
                    </li>
                    <li>
                        <p>Đảm bảo việc vận chuyển Hàng hóa tuân thủ theo quy định pháp luật và không xâm phạm quyền, lợi ích hợp pháp của bất kỳ bên thứ ba nào khác. Nếu vi phạm Chủ xe sẽ tự chịu trách nhiệm và bồi thường mọi thiệt hại (nếu có).</p>
                    </li>
                    <li>
                        <p>Chủ xe xác nhận vận chuyển Đơn Hàng trên Hệ thống và/hoặc Tài xế trực tiếp thực hiện vận chuyển Đơn Hàng liên đới chịu trách nhiệm trước pháp luật về các nghĩa vụ với LOGIVAN và/hoặc Chủ hàng theo Thỏa Thuận này.</p>
                    </li>
                    <li>
                        <p>Thực hiện đúng theo hướng dẫn của nhân viên LOGIVAN trong quá trình vận hành Đơn Hàng.</p>
                    </li>
                    <li>
                        <p>Chủ xe tuyệt đối không sử dụng bất kỳ chương trình, công cụ hay hình thức nào khác để can thiệp vào hệ thống hay làm thay đổi cấu trúc dữ liệu. Mọi hình thức phát tán, truyền bá hay cổ vũ cho bất kỳ hoạt động nào nhằm can thiệp, phá hoại hay xâm hại hệ thống của LOGIVAN đều bị nghiêm cấm. Mọi vi phạm sẽ bị xử lý theo Quy chế và quy định của pháp luật.</p>
                    </li>
                    <li>
                        <p>Tuân thủ các Chính sách của LOGIVAN, trong đó có Quy tắc ứng xử dành cho Đối tác của LOGIVAN.</p>
                    </li>
                </ol>
                <ol start="2">
                    <li>Nghĩa vụ đối với Dịch Vụ LOGINOW và Dịch Vụ DỰ ÁN:</li>
                </ol>
                <ol>
                    <li>
                        <p>Trong suốt quá trình thực hiện Đơn Hàng, Chủ xe cần:</p>
                    </li>
                </ol>
                <ul>
                    <li>phải sử dụng điện thoại thông minh và cập nhật lên Hệ Thống một cách đầy đủ, chính xác (1) tiến độ giao hàng; (2) trạng thái của Đơn Hàng; (3) các chứng từ, hóa đơn liên quan đến Đơn Hàng;</li>
                    <li>thực hiện đầy đủ các yêu cầu kĩ thuật của Hệ Thống trong quá trình thực hiện dịch vụ để đảm bảo hệ thống Track & Trace hoạt động liên tục, bao gồm các yêu cầu sau: (1) Bật Hệ thống liên tục; (2) Bật mạng di động (3G/4G) liên tục; (3) Cho phép Hệ thống quyền truy cập vị trí (nếu có yêu cầu);</li>
                </ul>
                <ol start="2">
                    <li>
                        <p>Khi thực hiện Đơn Hàng hoặc khi được LOGIVAN yêu cầu, Chủ xe phải cung cấp cho LOGIVAN hình ảnh, thông tin và các giấy tờ pháp lý của xe và lái xe thực hiện Đơn Hàng (bao gồm nhưng không giới hạn Giấy đăng kiểm xe, giấy phép lái xe, chứng minh nhân dân của lái xe, bảo hiểm xe, giấy tờ xe khác (nếu có));</p>
                    </li>
                    <li>
                        <p>Chịu trách nhiệm trước pháp luật và đảm bảo về (1) điều kiện kinh doanh vận tải theo quy định của pháp luật, (2) các thông tin, giấy tờ về xe và tài xế là chính xác;</p>
                    </li>
                    <li>
                        <p>Chủ xe, bao gồm tài xế trực tiếp chạy chuyến, và tổ chức chủ quản của tài xế đăng ký sử dụng Ứng dụng sẽ liên đới chịu trách nhiệm và bồi thường toàn bộ thiệt hại cho LOGIVAN hoặc bên thứ ba có liên quan khi gây thiệt hại, mất mát, hư hỏng cho Hàng Hóa, phương tiện, … bao gồm nhưng không giới hạn các thiệt hại do tai nạn giao thông, các thiệt hại trong quá trình lưu thông trên đường, và quá trình giao nhận hàng;</p>
                    </li>
                    <li>
                        <p>Kiểm tra, đối chiếu, xác nhận thông tin, tình trạng hàng hóa theo Đơn Hàng tại thời điểm giao và nhận, ký các Biên Bản Giao Nhận Hàng Hóa. Nếu vi phạm nghĩa vụ này, Chủ xe sẽ tự chịu mọi trách nhiệm liên quan đến Đơn Hàng;</p>
                    </li>
                    <li>
                        <p>Nếu Hàng Hóa không đúng với thông tin theo Đơn Hàng hoặc Hàng Hóa thuộc danh mục cấm theo quy định của pháp luật, Chủ xe phải ngay lập tức thông báo cho LOGIVAN. Trường hợp biết mà không thông báo cho LOGIVAN, Chủ xe và Chủ hàng phải tự giải quyết và tự chịu trách nhiệm trước pháp luật liên quan đến Hàng Hóa vận chuyển này;</p>
                    </li>
                    <li>
                        <p>Cung cấp tài khoản của mình trên Hệ Thống và mật khẩu truy cập tài khoản đó cho LOGIVAN khi được yêu cầu;</p>
                    </li>
                    <li>
                        <p>Đảm bảo phương tiện vận tải được mua và duy trì bảo hiểm trách nhiệm dân sự của Chủ xe cơ giới trong quá trình vận chuyển Đơn Hàng theo yêu cầu của luật pháp Việt Nam;</p>
                    </li>
                    <li>
                        <p>Tuyệt đối tuân thủ các nội quy của Chủ hàng khi ra vào địa điểm giao hàng, nhận hàng, bao gồm nhưng không giới hạn các quy định về giới hạn tốc độ, trang phục bảo hộ, sử dụng còi xe;</p>
                    </li>
                    <li>
                        <p>Hóa đơn, chứng từ gốc về Khoản Chi Hộ phải được Chủ xe (i) cập nhật hình ảnh lên Hệ Thống ngay sau khi phát sinh; và (ii) chuyển lại cho Chủ hàng trong vòng ba (03) ngày làm việc kể từ khi hoàn thành Đơn Hàng LOGINOW và Đơn Hàng DỰ ÁN.</p>
                    </li>
                    <li>
                        <p>Tuân thủ thời gian vận chuyển hàng hóa, giao nhận đúng đủ chứng từ theo xác nhận Hệ Thống hoặc xác nhận bằng văn bản khác.</p>
                    </li>
                    <li>
                        <p>Các nghĩa vụ và trách nhiệm khác theo quy định của Thỏa Thuận này và pháp luật liên quan.</p>
                    </li>
                </ol>
                <ol start="9">
                    <li>Quy trình giải quyết khiếu nại, tranh chấp</li>
                </ol>
                <ol>
                    <li>Đối với Đơn Hàng Marketplace, Chủ hàng và Chủ xe tự thỏa thuận trên Ứng Dụng</li>
                </ol>
                <ol>
                    <li>
                        <p>Chủ hàng và Chủ xe thực hiện giao dịch và thỏa thuận trực tiếp với nhau. Trong trường hợp phát sinh tranh chấp, LOGIVAN đề cao giải pháp thương lượng, hòa giải giữa các bên. Do đó, Chủ hàng và Chủ xe nên làm việc dựa trên giấy tờ rõ ràng để giải quyết thỏa đáng nhất.</p>
                    </li>
                    <li>
                        <p>Chủ hàng và Chủ xe có trách nhiệm trong việc tích cực giải quyết vấn đề. LOGIVAN sẽ chỉ đóng vai trò phối hợp, hỗ trợ việc xử lý và giải quyết khiếu nại giữa các bên. LOGIVAN sẽ cung cấp những thông tin cần thiết để giải quyết tranh chấp giữa các bên liên quan hoặc khi cơ quan pháp luật có thẩm quyền yêu cầu. Sau khi các Thành viên đã giải quyết xong tranh chấp, khiếu nại nên thông báo cho LOGIVAN.</p>
                    </li>
                    <li>
                        <p>LOGIVAN tôn trọng và nghiêm túc thực hiện các quy định của pháp luật về bảo vệ quyền lợi của người tiêu dùng. Vì vậy, đề nghị các Thành viên có những hành vi phù hợp và nghiêm túc tuân thủ các quy định của pháp luật. Bất cứ hành vi lừa đảo, gian lận trong kinh doanh, cũng như hành vi gây tổn hại đến người khác đều đáng lên án và phải chịu hoàn toàn trách nhiệm trước pháp luật.</p>
                    </li>
                </ol>
                <ol start="2">
                    <li>Đối với Đơn Hàng LOGINOW và Đơn Hàng DỰ ÁN</li>
                </ol>
                <ol>
                    <li>
                        <p>
                            <strong>Bước 1:</strong>
                            Phản hồi với LOGIVAN bằng cách gọi điện thoại đến số 0333131618, gửi phản hồi qua mục “Hỗ trợ” trong Ứng Dụng, từ trang mạng xã hội Facebook chính thức của LOGIVAN, và/hoặc các hình thức khác không trái quy định pháp luật. Thời hạn có hiệu lực để LOGIVAN tiếp nhận khiếu nại là <strong>ba (03) ngày làm việc</strong> kể từ ngày phát sinh sự việc.
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>Bước 2:</strong>
                            Trong vòng <strong>mười (10) ngày làm việc</strong>, kể từ khi nhận được khiếu nại, LOGIVAN sẽ kiểm tra, xác nhận thông tin về khiếu nại và thông báo cho các bên có liên quan. LOGIVAN cũng sẽ đồng thời tiến hành xác minh nội dung khiếu nại, xem xét và phân tích nguyên nhân dẫn đến khiếu nại, phạm vi khiếu nại và trách nhiệm xử lý để phối hợp với Chủ hàng/Chủ xe để đưa ra giải pháp xử lý phù hợp.
                        </p>
                    </li>
                    <li>Khiếu nại khác</li>
                </ol>
                <p>Trường hợp giao dịch phát sinh mâu thuẫn liên quan đến hành vi vi phạm <a href="#">Quy tắc ứng xử</a> và nội dung thỏa thuận mà Chủ xe và Chủ hàng đã cam kết, LOGIVAN sẽ áp dụng các biện pháp xử lý vi phạm tương ứng.</p>
                <ol start="10">
                    <li>Bồi thường thiệt hại phát sinh.</li>
                </ol>
                <ol>
                    <li>
                        <p>Nếu có tranh chấp phát sinh giữa các Thành viên, người dùng với nhau thì các bên sẽ giải quyết trên cơ sở tự thỏa thuận, thương lượng và hoà giải. LOGIVAN sẽ hỗ trợ người khiếu nại bằng cách cử nhân viên liên lạc, hoà giải nếu tập hợp bằng chứng cụ thể và xác thực về việc bị vi phạm gửi đến cho LOGIVAN. Nếu vụ việc vượt quá thẩm quyền và khả năng, LOGIVAN sẽ đề nghị người bị vi phạm chuyển vụ việc cho các cơ quan chức năng có thẩm quyền. Trong trường hợp này, LOGIVAN vẫn hỗ trợ để bảo vệ tốt nhất bên bị vi phạm.</p>
                    </li>
                    <li>
                        <p>Trường hợp Chủ xe chậm trễ trong việc nhận hàng, trả hàng theo kế hoạch đã xác nhận, ngoài việc bồi thường mọi chi phí, thiệt hại phát sinh, Chủ xe sẽ chịu tiền phạt với mức 50% Giá Vận Chuyển cho việc chậm nhận hàng hoặc chậm giao hàng cứ mỗi 3 giờ đồng hồ.</p>
                    </li>
                    <li>
                        <p>Trường hợp Chủ xe làm hư hỏng, mất hàng hóa, không giao hàng hoặc giao hàng thiếu sót so với thông tin Đơn Hàng và Biên Bản Giao Nhận Hàng Hóa, ngoài việc bồi thường mọi chi phí, thiệt hại phát sinh, Chủ xe sẽ chịu phạt vi phạm với mức 8% giá trị phần nghĩa vụ vi phạm.</p>
                    </li>
                    <li>
                        <p>Trường hợp vi phạm quy định tại Điểm a Khoản 2.2 Điều 2 Mục VIII mà không phải do sự kiện bất khả kháng, Chủ xe sẽ chịu một khoản phạt vi phạm với mức 8% giá trị phần nghĩa vụ vi phạm.</p>
                    </li>
                    <li>
                        <p>Các trường hợp được xem xét là các trường hợp bất khả kháng trong chậm trễ giao nhận hàng hóa là trường hợp thuộc nguyên nhân khách quan gây ra, không có bất kỳ lỗi chủ quan nào của Chủ xe. Chủ xe cần cung cấp đủ bằng chứng chứng minh sự kiện bất khả kháng và thông báo ngay lập tức cho LOGIVAN, yêu cầu sự hướng dẫn, điều phối của nhân viên LOGIVAN để chứng minh được đây là trường hợp Bất khả kháng. Các trường hợp bất khả kháng bao gồm, nhưng không giới hạn, các trường hợp sau:</p>
                    </li>
                </ol>
                <ol>
                    <li>
                        <p>Tai nạn giao thông xảy ra trực tiếp không do lỗi của Chủ xe (theo xác nhận của cơ quan công an/Cơ quan nhà nước có thẩm quyền);</p>
                    </li>
                    <li>
                        <p>Thiên tai và các sự cố bất khả kháng gây trễ kế hoạch (theo đánh giá của LOGIVAN sau khi Chủ xe cung cấp đầy đủ bằng chứng);</p>
                    </li>
                    <li>
                        <p>Cơ quan chức năng kiểm tra đột xuất đối với hàng hóa trên xe (không có lỗi thuộc Chủ xe, theo xác nhận của cơ quan công an/Cơ quan nhà nước có thẩm quyền);</p>
                    </li>
                    <li>
                        <p>Sự cố kỹ thuật khách quan đột xuất đối với phương tiện vận chuyển gây trễ kế hoạch (theo đánh giá của LOGIVAN sau khi Chủ xe cung cấp đầy đủ bằng chứng);</p>
                    </li>
                    <li>
                        <p>Sự cố nghiêm trọng về sức khỏe của Tài xế ngay trong quá trình vận chuyển hàng hóa gây trễ kế hoạch (có giấy chứng nhận của cơ quan y tế đủ thẩm quyền).</p>
                    </li>
                </ol>
                <ol start="11">
                    <li>Chính sách bảo vệ thông tin cá nhân của Thành viên</li>
                </ol>
                <p>Tùy theo từng thời điểm, LOGIVAN có thể điều chỉnh, sửa đổi Chính sách bảo vệ thông tin. Nếu như bạn quan tâm về quyền riêng tư cá nhân của mình, xin bạn vui lòng truy cập trang này thường xuyên hơn để được cập nhật những thông tin mới nhất có thể. Nếu như LOGIVAN thực hiện các thay đổi đối với Chính sách bảo vệ thông tin và tất nhiên điều này sẽ ảnh hưởng đến quyền lợi của bạn (ví dụ: nếu LOGIVAN có ý định xử lý dữ liệu cá nhân của bạn cho các mục đích khác so với thông báo trước đây trong Chính sách bảo vệ thông tin này), LOGIVAN sẽ thông báo cho bạn về những thay đổi này trước khi các hoạt động mới bắt đầu.</p>
                <ol>
                    <li>Mục đích và phạm vi thu thập thông tin</li>
                </ol>
                <ol>
                    <li>
                        <p>Để đảm bảo rằng giao dịch được thực hiện một cách thành công nhất và giảm thiểu tối đa rủi ro có thể phát sinh và nhằm đảm bảo quyền lợi tốt nhất cho Thành viên LOGIVAN, khi đăng ký sử dụng Dịch Vụ mà do LOGIVAN cung cấp. Đối với Chủ xe sẽ phải cung cấp thông tin ban đầu gồm: tên, địa chỉ, số điện thoại, email, các giấy tờ liên quan đến cung cấp Dịch Vụ vận tải… Các thông tin này sẽ được bảo mật tuyệt đối, sẽ được thẩm định và lưu trữ trong hệ thống của LOGIVAN.</p>
                    </li>
                    <li>
                        <p>Chủ xe sẽ tự chịu trách nhiệm về bảo mật và lưu giữ mọi hoạt động sử dụng Dịch Vụ dưới tên đăng ký, mật khẩu và hộp thư điện tử của mình. Ngoài ra, Chủ xe có trách nhiệm thông báo kịp thời cho LOGIVAN về những hành vi sử dụng trái phép, lạm dụng, vi phạm bảo mật, lưu giữ tên đăng ký và mật khẩu của bên thứ ba để có biện pháp giải quyết phù hợp.</p>
                    </li>
                </ol>
                <ol start="2">
                    <li>Địa chỉ đơn vị thu thập và bảo quản thông tin</li>
                </ol>
                <p>
                    CÔNG TY TNHH LOGITRUCK.
                    <br />
                    <br />
                    Địa chỉ: Văn phòng 02, Tầng 08, Tòa nhà Pearl plaza, số 561A Điện Biên Phủ, phường 25, quận Bình Thạnh, TP. Hồ Chí Minh, Việt Nam.
                    <br />
                    <br />
                    Điện thoại: (024) 73 00 18 28 hoặc qua Email: <a href="mailto:hotro@logivan.com">hotro@logivan.com</a>.
                </p>
                <ol start="3">
                    <li>Phạm vi sử dụng thông tin</li>
                </ol>
                <ol>
                    <li>
                        <p>Việc thu thập thông tin nhằm mục đích:</p>
                    </li>
                    <li>
                        <p>Cung cấp Dịch Vụ đến cho các Thành viên;</p>
                    </li>
                    <li>
                        <p>Gửi thông báo về các hoạt động trao đổi thông tin giữa Thành viên và LOGIVAN;</p>
                    </li>
                    <li>
                        <p>Ngăn chặn các hoạt động phá hủy tài khoản người dùng của Thành viên và các hoạt động giả mạo Chủ xe;</p>
                    </li>
                    <li>
                        <p>Liên lạc và giải quyết với các Chủ xe trong những trường hợp đặc biệt;</p>
                    </li>
                    <li>
                        <p>Giới thiệu sản phẩm, dịch vụ mới, các chương trình khuyến mại của LOGIVAN tới các Thành viên;</p>
                    </li>
                    <li>
                        <p>Không sử dụng các thông tin cá nhân của Thành viên ngoài mục đích xác nhận và liên hệ có liên quan đến giao dịch tại LOGIVAN;</p>
                    </li>
                    <li>
                        <p>Trong trường hợp pháp luật có yêu cầu: LOGIVAN có trách nhiệm hợp tác, cung cấp thông tin cá nhân Thành viên. Ngoài ra, không một ai có quyền xâm phạm vào thông tin cá nhân của Thành viên.</p>
                    </li>
                </ol>
                <ol start="4">
                    <li>Cam kết bảo mật thông tin</li>
                </ol>
                <p>LOGIVAN cam kết sẽ không tiết lộ thông tin của các Thành viên cho bất kỳ tổ chức, cá nhân nào khác. Trong một vài trường hợp đặc biệt, LOGIVAN có thể bị yêu cầu phải tiết lộ thông tin cá nhân, ví dụ như khi có căn cứ cho việc tiết lộ thông tin là cần thiết để ngăn chặn các mối đe dọa về tính mạng và sức khỏe, hay cho mục đích thực thi pháp luật. LOGIVAN cam kết tuân thủ tuyệt đối các quy tắc bảo mật thông tin, chính sách bảo mật và an toàn thông tin này.</p>
                <ol start="5">
                    <li>Thời gian lưu trữ thông tin</li>
                </ol>
                <p>LOGIVAN sẽ lưu trữ các thông tin do khách hàng cung cấp trên các hệ thống nội bộ của chúng tôi trong quá trình khách hàng sử dụng tối thiểu 02 năm hoặc khi khách hàng có yêu cầu hủy các thông tin đã cung cấp trong quá trình sử dụng.</p>
                <ol start="6">
                    <li>Cơ chế tiếp nhận và giải quyết khiếu nại liên quan đến việc thông tin cá nhân của Thành viên</li>
                </ol>
                <ol>
                    <li>
                        <p>
                            Thành viên có quyền gửi khiếu nại về việc lộ thông tin các nhân cho bên thứ 3 đến LOGIVAN bằng việc gửi thư hoặc qua email:
                            <a href="mailto:hotro@logivan.com">hotro@logivan.com</a>
                            .
                        </p>
                    </li>
                    <li>
                        <p>LOGIVAN có trách nhiệm thực hiện các biện pháp kỹ thuật, nghiệp vụ để xác minh các nội dung được phản ánh.</p>
                    </li>
                    <li>
                        <p>Thời gian xử lý phản ánh liên quan đến thông tin cá nhân khách hàng là 15 ngày.</p>
                    </li>
                </ol>
                <ol start="12">
                    <li>Trách nhiệm trong trường hợp phát sinh lỗi kỹ thuật</li>
                </ol>
                <ol>
                    <li>
                        <p>LOGIVAN cam kết nỗ lực đảm bảo sự an toàn và ổn định của toàn bộ hệ thống kỹ thuật. Tuy nhiên, trong trường hợp xảy ra sự cố do lỗi của LOGIVAN, LOGIVAN sẽ ngay lập tức áp dụng các biện pháp kỹ thuật cần thiết để đảm bảo an toàn, ổn định của toàn bộ hệ thống và quyền lợi cho Thành viên.</p>
                    </li>
                    <li>
                        <p>LOGIVAN cam kết cung cấp chất lượng Dịch Vụ tốt nhất cho các Thành viên tham gia giao dịch. Trong trường hợp phát hiện các lỗi kỹ thuật, lỗi phần mềm hoặc các lỗi khách quan khác trong quá trình tham gia giao dịch thì các Chủ xe thông báo cho LOGIVAN qua địa chỉ email: <a href="mailto:hotro@logivan.com">hotro@logivan.com</a> hoặc tổng đài 0333131618, LOGIVAN sẽ khắc phục lỗi trong thời gian sớm nhất. Tuy nhiên, LOGIVAN sẽ không chịu trách nhiệm giải quyết trong trường hợp thông báo của các Chủ xe không đến được LOGIVAN, phát sinh từ lỗi kỹ thuật, lỗi đường truyền, phần mềm hoặc các lỗi khác không do LOGIVAN gây ra.</p>
                    </li>
                    <li>
                        <p>Khi thực hiện các giao dịch trên sàn, các Thành viên bắt buộc phải thực hiện đúng theo các quy trình hướng dẫn.</p>
                    </li>
                </ol>
                <ol start="13">
                    <li>Điều khoản chung.</li>
                </ol>
                <ol>
                    <li>Hiệu lực áp dụng</li>
                </ol>
                <ol>
                    <li>
                        <p>Điều Khoản Sử Dụng Ứng Dụng của LOGIVAN có hiệu lực từ khi được ban hành công khai và có hiệu lực khi Chủ xe xác nhận trên Ứng Dụng. LOGIVAN có quyền điều chỉnh, thay đổi các quy chế để phù hợp với các hoạt động của LOGIVAN cũng như thuận tiện cho các Thành viên. Những thay đổi này sẽ được thông báo trên Website và trên các Ứng Dụng của LOGIVAN. Quy chế được sửa đổi hoặc điều chỉnh sẽ có hiệu lực kể từ ngày có thông báo thay đổi. Việc Thành viên tiếp tục sử dụng Dịch Vụ sau khi quy chế đã điều chỉnh hoặc thay đổi được công bố đồng nghĩa với việc Thành viên đã đọc, hiểu và đồng ý với quy chế sửa đổi đó. Thành viên của LOGIVAN có trách nhiệm tuân thủ quy chế hiện hành khi sử dụng Dịch Vụ của LOGIVAN.</p>
                    </li>
                    <li>
                        <p>Thỏa Thuận có hiệu kể từ ngày Chủ xe xác nhận trên Hệ Thống dưới dạng hợp đồng điện tử, và sẽ chấm dứt khi Chủ xe xóa tài khoản khỏi Hệ Thống, hoặc khi LOGIVAN đơn phương chấm dứt Thỏa Thuận theo các quy định tại đây.</p>
                    </li>
                    <li>
                        <p>Việc chấm dứt Thỏa Thuận theo Điều khoản sẽ không phương hại đến quyền và nghĩa vụ của mỗi Bên phát sinh trước khi chấm dứt Thỏa Thuận.</p>
                    </li>
                </ol>
                <ol start="2">
                    <li>Điều khoản cam kết</li>
                </ol>
                <ol>
                    <li>
                        <p>VỀ PHÍA CHỦ XE: mọi Thành viên tham gia sử dụng Ứng Dụng của LOGIVAN đồng nghĩa với việc Thành viên đã đọc và chấp nhận những quy định và Chính sách mà LOGIVAN đã đưa ra.</p>
                    </li>
                    <li>
                        <p>VỀ PHÍA LOGIVAN: Chúng tôi cam kết thực hiện đúng những quy định và trách nhiệm được nêu ra trong quy chế.</p>
                    </li>
                </ol>
                <ol start="3">
                    <li>Điều khoản khác</li>
                </ol>
                <ol>
                    <li>
                        <p>Thỏa Thuận được giải thích và điều chỉnh theo pháp luật Việt Nam. Mọi tranh chấp phát sinh từ hoặc liên quan đến Thỏa Thuận sẽ được Các Bên giải quyết trước tiên bằng hình thức thương lượng, hòa giải trên tinh thần thiện chí và hợp tác. Nếu Các Bên không thể giải quyết được theo hình thức thương lượng, hòa giải, tranh chấp sẽ được đưa ra giải quyết tại Tòa Án có thẩm quyền của Việt Nam.</p>
                    </li>
                    <li>
                        <p>Nếu bất kỳ điều khoản nào của Thỏa Thuận không có hiệu lực theo pháp luật Việt Nam, việc vô hiệu của điều khoản đó vẫn sẽ không ảnh hưởng đến hiệu lực của các điều khoản còn lại của Thỏa Thuận, trừ khi pháp luật Việt Nam có quy định khác.</p>
                    </li>
                </ol>
            </td>
        </tr>
    </table>
</asp:Content>
