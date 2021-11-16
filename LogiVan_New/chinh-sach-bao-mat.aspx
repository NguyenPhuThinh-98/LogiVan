<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="chinh-sach-bao-mat.aspx.cs" Inherits="LogiVan_New.chinh_sach_bao_mat" %>
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

            #info a {
                text-decoration: none;
                color: orange;
            }

                #info a:hover {
                    text-decoration: underline;
                }

            #info h1 {
                text-align: center;
                margin-top: 50px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <tr>
            <td id="sidebar">
                <p>THÔNG TIN</p>
                <a href="dieu-khoan-su-dung.aspx">Điều khoản sử dụng</a>
                <br />
                <a href="#">Quy tắc ứng xử</a>
                <br />
                <a href="ho-tro.aspx">Những câu hỏi thường gặp</a>
                <br />
                <a href="#">Chính sách phụ phí LOGIVAN</a>
            </td>
            <td id="info">
                <h1>Chính sách bảo mật</h1>
                <br />
                <h3>Khi sử dụng dịch vụ của chúng tôi, bạn tin tưởng cung cấp thông tin của bạn cho chúng tôi. Chúng tôi hiểu rằng đây là một trách nhiệm lớn và chúng tôi nỗ lực bảo vệ thông tin của bạn cũng như để bạn nắm quyền kiểm soát.</h3>
                <p>Chính sách bảo mật này nhằm mục đích giúp bạn hiểu rõ những thông tin chúng tôi thu thập, lý do chúng tôi thu thập và cách bạn có thể cập nhật, quản lý và xóa thông tin của mình.</p>
                
                <h4>Dành cho người dùng ứng dụng Logivan Chủ xe</h4>
                <p>Thu thập thông tin cá nhân:</p>
                <ul>
                    <li>
                        Các thông tin cơ bản như: họ và tên, ảnh đại diện, số điện thoại được chúng tôi yêu cầu bạn cung cấp khi đăng ký tài khoản trên ứng dụng theo điều khoản sử dụng dịch vụ mà chúng tôi đã cung cấp (xem thêm <a href="dieu-khoan-su-dung.aspx">Điều khoản sử dụng</a> ).
                    </li>
                    <li>
                        Các thông tin trên được chúng tôi lưu trữ tạm thời cho mục đích quản lí tài khoản người dùng, xác thực thông tin đăng nhập, xác thực thông tin giao dịch khi bạn tham gia vận chuyển hàng hóa.
                    </li>
                    <li>
                        Dữ liệu nêu trên của bạn sẽ không được cung cấp cho bất kỳ bên thứ ba nào trừ những trường hợp đặc biệt ghi trong 
                        tài liệu này.
                    </li>
                </ul>
                <p>Truy cập và sử dụng dữ liệu vị trí (GPS):</p>
                <ul>
                    <li>
                        Ứng dụng truy cập dữ liệu vị trí cho tính năng dẫn đường, cập nhật vị trí chuyến hàng ngay cả khi bạn không sử dụng ứng dụng hoặc đóng ứng dụng lại.
                    </li>
                    <li>
                        Dữ liệu vị trí được sử dụng với những tính năng cụ thể sau: 
                        tính năng dẫn đường trên bản đồ (được tích hợp bên trong ứng dụng) giúp tài xế dễ dàng di chuyển đến điểm bốc và điểm dỡ hàng, 
                        tính năng tìm kiếm đơn hàng gần nhất với vị trí của tài xế (của bạn), 
                        tính năng hiển thị vị trí của tài xế cũng như chuyến hàng trên bản đồ giúp nhóm điều phối vận chuyển của Logivan cũng như chủ hàng có thể theo dõi được hành trình của hàng hóa.
                    </li>
                    <li>
                        Ứng dụng chỉ truy cập thông tin vị trí trong khi bạn đang thực hiện chuyến hàng nhằm mục đích tự động hóa ghi nhận vị trí khi bạn thực hiện hành động cập nhật trạng thái chuyến khi đến điểm bốc hàng, dỡ hàng.
                    </li>
                    <li>
                        Dữ liệu vị trí của bạn sẽ không được cung cấp cho bất kỳ bên thứ ba nào trừ những trường hợp đặc biệt ghi trong tài liệu này.
                    </li>
                </ul>

                <h4>Dành cho thành viên www.logivan.com</h4>
                <p>
                    Để đảm bảo rằng giao dịch được thực hiện thành công và giảm thiểu rủi ro có thể phát sinh và nhằm liên hệ, xác nhận, đảm bảo quyền lợi cho bạn (thành viên đăng ký sử dụng dịch vụ), 
                    khi đăng ký sử dụng dịch vụ của www.loogivan, người sử dụng dịch vụ vận tải phải cung cấp đầy đủ thông tin ban đầu gồm: 
                    tên, địa chỉ, số điện thoại, email. 
                    Đối với người cung cấp dịch vụ vận tải sẽ phải cung cấp thông tin ban đầu gồm: 
                    tên, địa chỉ, số điện thoại, email, các giấy tờ liên quan đến cung cấp dịch vụ vận tải. 
                    Các thông tin này sẽ được thẩm định và lưu trữ trong hệ thống để phục vụ cho việc xác thực tài khoản người dùng, đảm bảo thông tin giao dịch và đối soát 
                    (xem thêm <a href="dieu-khoan-su-dung.aspx">Điều khoản sử dụng</a>).
                </p>
                <p>
                    Các thành viên sẽ tự chịu trách nhiệm về bảo mật và lưu giữ mọi hoạt động sử dụng dịch vụ dưới tên đăng ký, 
                    mật khẩu và hộp thư điện tử của mình. Ngoài ra, thành viên có trách nhiệm thông báo kịp thời cho 
                    <a href="trang-chu.aspx">www.logivan.com</a> về những hành vi sử dụng trái phép, lạm dụng, vi phạm bảo mật, lưu giữ tên đăng ký và mật khẩu của bên thứ ba để có biện pháp giải quyết phù hợp.
                </p>

                <h3>Địa chỉ đơn vị thu thập và quản lý thông tin</h3>
                <p>Công ty TNHH công nghệ LOGIVAN Việt Nam</p>
                <p>Địa chỉ: Ô 10, Tầng 3, D2 Giảng Võ, Quận Ba Đình, Thành phố Hà Nội, Việt Nam.</p>
                <p>Điện thoại: 024-7300-1828</p>
                <p>Email: hotro@logivan.com</p>

                <h3>Phạm vi sử dụng thông tin</h3>
                <p>
                    Việc thu thập thông tin nhằm mục đích:
                    <br />
                    Cung cấp các dịch vụ đến Thành viên, người dùng;
                    <br />
                    Gửi các thông báo về các hoạt động trao đổi thông tin giữa thành viên, người dùng và LOGIVAN
                    <br />
                    Ngăn ngừa các hoạt động phá hủy tài khoản người dùng của thành viên hoặc các hoạt động giả mạo Thành viên;
                    <br />
                    Liên lạc và giải quyết với thành viên trong những trường hợp đặc biệt.
                    <br />
                    Không sử dụng thông tin cá nhân của thành viên ngoài mục đích xác nhận và liên hệ có liên quan đến giao dịch tại logivan.com.
                </p>
                <p>
                    Trong trường hợp có yêu cầu của pháp luật: 
                    LOGIVAN có trách nhiệm hợp tác cung cấp thông tin cá nhân thành viên khi có yêu cầu từ cơ quan tư pháp bao gồm: 
                    Viện kiểm sát, tòa án, cơ quan công an điều tra liên quan đến hành vi vi phạm pháp luật nào đó của khách hàng. 
                    Ngoài ra, không ai có quyền xâm phạm vào thông tin cá nhân của thành viên.
                </p>

                <h3>Phương tiện và công cụ để người dùng tiếp cận và chỉnh sửa dữ liệu cá nhân của mình</h3>
                <p>
                    Thành viên có quyền tự kiểm tra, cập nhật, điều chỉnh hoặc hủy bỏ thông tin cá nhân của mình bằng cách đăng nhập vào tài khoản và chỉnh sửa thông tin cá nhân hoặc yêu cầu <a href="trang-chu.aspx">www.logivan.com</a> thực hiện việc này. 
                    Khi tiếp nhận những phản hồi này, <a href="trang-chu.aspx">www.logivan.com</a> sẽ xác nhận lại thông tin, phải có trách nhiệm trả lời lý do và hướng dẫn thành viên khôi phục hoặc xóa bỏ thông tin cá nhân.
                </p>

                <h3>Cam kết bảo mật thông tin</h3>
                <p>
                    Thông tin cá nhân của thành viên trên <a href="trang-chu.aspx">www.logivan.com</a> được LOGIVAN cam kết bảo mật tuyệt đối 
                    theo chính sách bảo vệ thông tin cá nhân của Logivan và không cung cấp cho bên thứ 3, trừ trường hợp có yêu cầu của 
                    pháp luật <a href="trang-chu.aspx">www.logivan.com</a> có trách nhiệm hợp tác cung cấp thông tin cá nhân thành viên khi có yêu cầu từ cơ quan tư pháp 
                    bao gồm: Viện kiểm sát, tòa án, cơ quan công an điều tra liên quan đến hành vi vi phạm pháp luật nào đó của khách hàng. 
                    Ngoài ra, không ai có quyền xâm phạm vào thông tin cá nhân của thành viên. Việc thu thập và sử dụng thông tin của mỗi 
                    thành viên chỉ được thực hiện khi có sự đồng ý của khách hàng đó trừ những trường hợp pháp luật có quy định khác.
                </p>

                <h3>Thời gian lưu trữ thông tin</h3>
                <p>
                    Dữ liệu cá nhân của Thành viên sẽ được lưu trữ cho đến khi có yêu cầu hủy bỏ hoặc tự thành viên đăng nhập và thực hiện hủy bỏ. 
                    Còn lại trong mọi trường hợp thông tin cá nhân thành viên sẽ được bảo mật trên máy chủ của <a href="trang-chu.aspx">www.logivan.com</a>
                </p>

                <h3>Cơ chế tiếp nhận và giải quyết khiếu nại liên quan đến việc thông tin cá nhân khách hàng</h3>
                <p>
                    Thành viên có quyền gửi khiếu nại về việc lộ thông tin các nhân cho bên thứ 3 đến Ban quản trị của <a href="trang-chu.aspx">www.logivan.com</a> đến địa chỉ Công ty hoặc qua email.
                    <br />
                    <br />
                    Email: hotro@logivan.com
                    <br />
                    <br />
                    Công ty có trách nhiệm thực hiện các biện pháp kỹ thuật, nghiệp vụ để xác minh các nội dung được phản ánh.
                    <br />
                    <br />
                    Thời gian xử lý phản ánh liên quan đến thông tin cá nhân khách hàng là 15 ngày.
                </p>
            </td>
        </tr>
    </table>
</asp:Content>
