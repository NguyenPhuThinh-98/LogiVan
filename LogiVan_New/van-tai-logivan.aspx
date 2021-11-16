<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="van-tai-logivan.aspx.cs" Inherits="LogiVan_New.van_tai_logivan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #d1{
            margin-bottom:20px;
        }
        #d1 a {
            margin-left:50px;
            text-decoration:none;
        }
        #d1 a span{
            margin-left:70px;
            text-decoration:none;
            color:black;
        }
        #d2{
            background-color:lightgray;
            padding-bottom:10px;
            padding-top:10px;
            padding-left:20px;
        }
        #d2 ul{
            list-style:none;
        }
        #d2 ul li{
            display:inline-block;
            margin-right:20px;
        }
        #d2 ul li a{
            text-decoration:none;
            color:black;
            font-weight:bold;
        }
        #d2 ul li a:hover{
            color:orange;
        }
        #search-box{
            background-color:white;
            padding-right:5px;
        }
        #main_1{
            background-image:url("/HinhAnh/HinhAnhBlog/xe-tai-cho-hang-di-tinh-4.jpg");
            background-size:cover;
            background-repeat:no-repeat;
        }
        #main_1{
            padding-top:200px;
            padding-bottom:200px;
        }
        #main_1 table{
            width:90%;
            margin-left:5%;
        }
        #main_1 table td{
            vertical-align:top;
            width:50%;
            padding-right:50px;
        }
        .btn1{
            background-color:#5cb85c;
            color:white;
        }
        #main_2{
            padding-bottom:50px;
            padding-top:50px;
        }
        #main_2 table{
            width:100%;
        }
        #main_2 table td{
            width:50%;
            text-align:center;
            padding-left:50px;
        }
        #main_3{
            text-align:center;
            background-color:lightgray;
            padding-top:50px;
            padding-bottom:100px;
        }
        #main_3 table{
            width:100%;
        }
        #main_3 table td{
            width:33%;
        }
        
        #left, #center, #right{
            background-color:white;
            padding-top:50px;
            height:700px;
        }
        #left{
            width:80%;
            margin-left:20%;
        }
        #center{
            width:80%;
            margin-left:10%;
        }
        #right{
            width:80%;
            margin-right:20%;
        }
        .image{
            border-radius:25%;
        }
        .img{
            border-radius:50%;
        }
        #main_3 a{
            text-decoration:none;
            color:green;
        }
        #main_3 ol li {
            color:orange;
            font-weight:bold;
        }
        #main_3 ol li a{
            color:orange;
        }
        #main_4{
            padding-bottom:50px;
            padding-top:50px;
        }
        #main_4 table{
            width:90%;
            margin-left:5%;
        }
        #main_4 table td{
            width:50%;
            text-align:center;
        }
        #main_5{
            text-align:center;
            background-color:orange;
            padding-bottom:50px;
            padding-top:50px;
        }
        #main_5 h1{
            color:green;
        }
        #main_5 a{
            text-decoration:none;
            color:inherit;
        }
        .table{
            width:80%;
            margin-left:10%;
            margin-top:50px;
        }
        .table td{
            width:50%;
        }
        .table2{
            width:100%;
            background-color:rgba(255,255,255,.25);
            color:white;
        }
        .table2 th{
            width:10%;
        }
        .table2 td,th{
            padding-bottom:20px;
            padding-top:20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="d1">
            <a href="#">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/HinhAnh/HinhAnhBlog/logo.jpg" />
                <br />
                <br />
                <span>Blog thông tin vận tải</span>
            </a>
        </div>
        <div id="d2">
            <ul>
                <li>
                    <a href="#">Tin tức vận tải</a>
                </li>
                <li>
                    <a href="#">Thành viên mới - New Member</a>
                </li>
                <li>
                    <a href="chu-hang.aspx">LOGIVAN chủ hàng</a>
                </li>
                <li>
                    <a href="chu-xe.aspx">LOGIVAN chủ xe</a>
                </li>
                <li>
                    <a href="#">Chứng từ/Thủ tục vận tải</a>
                </li>
                <li>
                    <div id="search-box">
                        <asp:TextBox ID="TextBox1" runat="server" Text="Tìm kiếm" BorderStyle="None" Height="20px"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" Width="20px" 
                            ImageUrl="~/HinhAnh/HinhAnhBlog/search-icon.png" />
                    </div>
                </li>
            </ul>
        </div>
        <div id="main">
            <h1>
                Thành viên Mới – New Member
            </h1>
            <div id="main_1">
                <table>
                    <tr>
                        <td>
                            <video src="HinhAnh/HinhAnhBlog/van-tai-logivan.mp4" autoplay="autoplay" loop="loop" muted="muted" 
                                width="600" height="300"></video>
                        </td>
                        <td>
                            <h1>
                                Làm thế nào để sử dụng APP LOGIVAN CHỦ HÀNG ?
                            </h1>
                            <p>
                                Giải pháp công nghệ giúp kết nối trực tiếp các doanh nghiệp với mạng lưới đối tác vận tải trên toàn quốc.
                            </p>
                            <p>
                                LOGIVAN luôn sẵn sàng đáp ứng mọi nhu cầu vận chuyển hàng, 
                                hỗ trợ tìm kiếm và quản lý xe tải chở hàng với độ tin cậy và chất lượng cao nhất.
                            </p>
                            <asp:Button ID="Button1" runat="server" Text="Start your APP FREE" CssClass="btn1" />
                        </td>
                    </tr>
                </table>
            </div>
            <div id="main_2">
                <table>
                    <tr>
                        <td>
                            <h1>
                                Tại sao nên sử dụng app?
                            </h1>
                            <p>
                                LOGIVAN với các sản phẩm CÔNG NGHỆ : APP CHỦ XE- APP CHỦ HÀNG, 
                                chúng tôi mang đến giải pháp Kết nối CHỦ XE và CHỦ HÀNG trên toàn quốc trên nền tảng công nghệ 4.0. 
                                Nhưng giá trị mà chúng tôi mang lại không dừng ở đó, với ứng dụng LOGIVAN CHỦ HÀNG, nhà vận chuyển sẽ: 
                                1.Tiết kiệm thời gian tìm kiếm đối tác vận tải phù hợp. 
                                2.Tiết kiệm chi phí trung gian và logistics. 
                                3. Tiết kiệm chi phí nhân sự. 
                                4.Yên tâm giao hàng hóa cho chủ xe đã được xác thực uy tín và được đảm bảo bởi LOGIVAN.
                            </p>
                        </td>
                        <td>
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/HinhAnh/HinhAnhBlog/img7.jpg" />
                        </td>
                    </tr>
                </table>
            </div>
            <div id="main_3">
                <h1>
                    Tất Tần Tật Về APP LOGIVAN CHỦ HÀNG
                </h1>
                <table>
                    <tr>
                        <td>
                            <div id="left">
                                <asp:Image ID="Image3" runat="server" 
                                    ImageUrl="~/HinhAnh/HinhAnhBlog/loginow2h-banner-mobile.jpg" Width="250px" CssClass="image" />
                                <h1>
                                    Hướng dẫn sử dụng ứng dụng LOGIVAN Chủ Hàng
                                </h1>
                                <a href="#">
                                    Chi tiết tại đây.
                                    <ol>
                                        <li>Tải ứng dụng và đăng ký tài khoản
                                        </li>
                                        <li>Cách đặt xe chở hàng
                                        </li>
                                        <li>Quản lý đơn hàng và đánh giá tài xế
                                        </li>
                                    </ol>
                                </a>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="ImageButton2" runat="server" Width="50px" Height="50px" BackColor="Purple" 
                                                ImageUrl="~/HinhAnh/HinhAnhBlog/facebook.png" 
                                                PostBackUrl="https://www.facebook.com/logivan.asia" CssClass="img" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="ImageButton3" runat="server" Width="50px" Height="50px" BackColor="Purple" 
                                                ImageUrl="~/HinhAnh/HinhAnhBlog/twitter.png" 
                                                CssClass="img" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="ImageButton4" runat="server" Width="50px" Height="50px" BackColor="Purple" 
                                                ImageUrl="~/HinhAnh/HinhAnhBlog/linkedin.png" 
                                                PostBackUrl="https://www.linkedin.com/company/18317128/" 
                                                CssClass="img" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td>
                            <div id="center">
                                <asp:Image ID="Image4" runat="server" 
                                    ImageUrl="~/HinhAnh/HinhAnhBlog/banner-tra-cuu-sidebar-2.jpg" Width="250px" CssClass="image" />
                                <h1>
                                    Tra cứu giá cước trực tiếp
                                </h1>
                                <a href="#">
                                    Chi tiết tại đây.
                                    <ol>
                                        <li>Nhập Thông tin đơn hàng
                                        </li>
                                        <li>Nhận báo giá vận chuyển
                                        </li>
                                        <li>Xác nhận đơn hàng nếu đồng ý mức giá vận chuyển
                                        </li>
                                    </ol>
                                </a>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="ImageButton5" runat="server" Width="50px" Height="50px" BackColor="Purple" 
                                                ImageUrl="~/HinhAnh/HinhAnhBlog/facebook.png" 
                                                PostBackUrl="https://www.facebook.com/logivan.asia" CssClass="img" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="ImageButton6" runat="server" Width="50px" Height="50px" BackColor="Purple" 
                                                ImageUrl="~/HinhAnh/HinhAnhBlog/twitter.png" 
                                                CssClass="img" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="ImageButton7" runat="server" Width="50px" Height="50px" BackColor="Purple" 
                                                ImageUrl="~/HinhAnh/HinhAnhBlog/linkedin.png" 
                                                PostBackUrl="https://www.linkedin.com/company/18317128/" 
                                                CssClass="img" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                        <td>
                            <div id="right">
                                <asp:Image ID="Image5" runat="server" 
                                    ImageUrl="~/HinhAnh/HinhAnhBlog/img6.jpg" Width="250px" CssClass="image" />
                                <h1>
                                    Những câu hỏi thường gặp
                                </h1>
                                <p style="color:green;">
                                    Chi tiết tại đây.
                                </p>
                                <ol>
                                    <li>
                                        <a href="chu-hang.aspx">
                                            LOGIVAN là gì, hoạt động như thế nào?
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ho-tro.aspx">
                                            Làm thế nào để đăng ký tài khoản tìm xe cho doanh nghiệp?
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ho-tro.aspx">
                                            LOGIVAN có thu phí gì không?
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ho-tro.aspx">
                                            LOGIVAN hỗ trợ tìm những loại xe nào?
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ho-tro.aspx">
                                            LOGIVAN hoạt động vào thời gian và tuyến đường nào?
                                        </a>
                                    </li>
                                    <li>
                                        <a href="ho-tro.aspx">
                                            Sử dụng LOGIVAN thanh toán như thế nào?
                                        </a>
                                    </li>
                                </ol>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:ImageButton ID="ImageButton8" runat="server" Width="50px" Height="50px" BackColor="Purple" 
                                                ImageUrl="~/HinhAnh/HinhAnhBlog/facebook.png" 
                                                PostBackUrl="https://www.facebook.com/logivan.asia" CssClass="img" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="ImageButton9" runat="server" Width="50px" Height="50px" BackColor="Purple" 
                                                ImageUrl="~/HinhAnh/HinhAnhBlog/twitter.png" 
                                                CssClass="img" />
                                        </td>
                                        <td>
                                            <asp:ImageButton ID="ImageButton10" runat="server" Width="50px" Height="50px" BackColor="Purple" 
                                                ImageUrl="~/HinhAnh/HinhAnhBlog/linkedin.png" 
                                                PostBackUrl="https://www.linkedin.com/company/18317128/" 
                                                CssClass="img" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
            <div id="main_4">
                <table>
                    <tr>
                        <td>
                            <asp:Image ID="Image6" runat="server" ImageUrl="~/HinhAnh/HinhAnhBlog/Chu-Hang-Android-1639x2048.png" Width="450px" />
                        </td>
                        <td style="background-color:lightgray;">
                            <h1>
                                Liên tục kiểm tra chuyến hàng của bạn
                            </h1>
                            <p>
                                Thông qua trang quản lý trực tuyến, 
                                hãy theo sát hành trình vận chuyển của tài xế và hàng hóa. 
                                Mọi thông tin sẽ được cập nhật thường xuyên theo thời gian thực, 
                                bạn sẽ an tâm hơn về chuyến hàng của mình.
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td style="background-color:lightgray;">
                            <h1>
                                Đánh giá xếp hạng chủ xe
                            </h1>
                            <p>
                                Để lại đánh giá xếp hạng chủ xe sau mỗi chuyến hàng được thực hiện. 
                                Những góp ý phản hồi của bạn sẽ giúp LOGIVAN cải thiện và nâng cao dịch vụ vận tải, 
                                mang lại những trải nghiệm sử dụng tốt nhất cho khách hàng.
                            </p>
                        </td>
                        <td>
                            <asp:Image ID="Image7" runat="server" Width="450px" ImageUrl="~/HinhAnh/HinhAnhBlog/xe-tai-cho-hang-di-tinh-4.jpg" />
                        </td>
                    </tr>
                </table>
            </div>
            <div id="main_5">
                <h1>
                    Vẫn không tìm thấy câu trả lời cho mình?
                </h1>
                <p>
                    Hãy liên hệ ngay với LOGIVAN để nhận được tư vấn trực tiếp và giải đáp mọi thắc mắc!
                </p>
                <p>
                    <asp:Image ID="Image8" runat="server" Width="20px" Height="20px" ImageUrl="~/HinhAnh/HinhAnhLienHe/icon-phone.svg" />
                    <a href="tel:0333131618">0333-13-16-18</a>
                </p>
                <p>
                    <asp:Image ID="Image9" runat="server" Width="20px" Height="20px" ImageUrl="~/HinhAnh/HinhAnhLienHe/icon-phone.svg" />
                    <a href="tel:02473001828">024-7300-1828</a>
                </p>
                <p>
                    <asp:Image ID="Image10" runat="server" Width="20px" Height="20px" ImageUrl="~/HinhAnh/HinhAnhLienHe/icon-phone.svg" />
                    <a href="tel:02873003828">028-7300-3828</a>
                </p>
                <p>
                    <asp:Image ID="Image11" runat="server" Width="20px" Height="20px" ImageUrl="~/HinhAnh/HinhAnhLienHe/icon-mail.svg" />
                    <a href="mailto:hotro@logivan.com">hotro@logivan.com</a>
                </p>
                <table class="table">
                    <tr>
                        <td>
                            <table class="table2">
                                <tr>
                                    <th>
                                        <asp:Image ID="Image12" runat="server" Width="50px" Height="50px" 
                                            ImageUrl="~/HinhAnh/HinhAnhBlog/clock.png" />
                                    </th>
                                    <td>
                                        <h1 style="color:white;">
                                            Thời gian làm việc
                                        </h1>
                                        <p>
                                            Thứ hai - Thứ 7 : 8H30-17H30
                                            <br />
                                            Hỗ trợ 24/7
                                        </p>
                                    </td>
                                </tr>
                            </table>
                            <table style="margin-top:100px" class="table2">
                                <tr>
                                    <th>
                                        <asp:Image ID="Image13" runat="server" Width="50px" Height="50px" 
                                            ImageUrl="~/HinhAnh/HinhAnhBlog/map.png" />
                                    </th>
                                    <td>
                                        <h1 style="color:white;">
                                            Trụ sở
                                        </h1>
                                        <p>
                                            - Ô 10, Tầng 3, D2 Giảng Võ, Ba Đình, Hà Nội. 
                                            - Lầu 5, Tòa nhà Phượng Long 2, 16 Nguyễn Trường Tộ, Phường 12, Quận 4, Thành phố Hồ Chí Minh
                                        </p>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            
                        </td>
                    </tr>
                </table>
            </div>
            <div id="news">

            </div>
        </div>
    </form>
</body>
</html>
