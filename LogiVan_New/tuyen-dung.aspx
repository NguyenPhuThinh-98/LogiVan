<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tuyen-dung.aspx.cs" Inherits="LogiVan_New.tuyen_dung" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #d1 {
            background-color: orange;
            color: white;
            padding-bottom:10px;
            padding-top:10px;
        }
        #d1 a{
            text-decoration:none;
            color:inherit;
        }
        #d1 table{
            width:100%;
        }
        .img{
            margin-left:10px;
            margin-right:10px;
        }
        #d2 table{
            width:100%;
        }
        .btn{
            border-style:none;
            background-color:inherit;
        }
        #d3{
            background-image:url("/HinhAnh/HinhAnhTuyenDung/Slideshow-Image-3-Ben-Tre-2020-scaled.jpg");
            background-repeat:no-repeat;
            background-size:cover;
            text-align:center;
            color:white;
            padding-top:100px;
            padding-bottom:100px;
        }
        .btn2{
            background-color:deepskyblue;
            color:white;
            border:none;
            margin-right:50px;
            padding: 10px;
        }
        .btn3{
            background-color:transparent;
            border:1px solid white;
            color:white;
            padding:10px;
        }
        #d4 table{
            width:100%;
        }
        #d4 table td{
            width:33%;
        }
        #d4 table td p{
            text-align:justify;
        }
        #d4d1{
            width:80%;
            margin-left:20%;
            background-color:deepskyblue;
            color:white;
            text-align:center;
            padding-bottom:20px;
            padding-top:20px;
            padding-left:1px;
            padding-right:1px;
        }
        #d4d2{
            width:80%;
            margin-left:10%;
            background-color:orangered;
            color:white;
            text-align:center;
            padding-bottom:20px;
            padding-top:20px;
            padding-left:1px;
            padding-right:1px;
        }
        #d4d3{
            width:80%;
            margin-right:20%;
            background-color:orange;
            color:white;
            text-align:center;
            padding-bottom:20px;
            padding-top:20px;
            padding-left:1px;
            padding-right:1px;
        }
        #d5 h1{
            text-align:center;
        }
        #d5 table{
            width:90%;
            margin-left:5%;
            border-collapse:collapse;
        }
        #d5 table td{
            width:25%;
            text-align:center;
            vertical-align:top;
            padding:15px;
            border:1px solid lightgray;
        }
        #d6{
            background-image:url("/HinhAnh/HinhAnhTuyenDung/bg-purple-blue-ombre.jfif");
            background-size:cover;
            background-repeat:no-repeat;
            padding-bottom:25px;
            padding-top:25px;
        }
        #d6 table{
            width:90%;
            margin-left:5%;
        }
        #d6 h1{
            color:white;
            font-size:35px;
        }
        .btn7{
            border:none;
            background-color:orange;
            color:white;
            padding-bottom:10px;
            padding-left:20px;
            padding-right:20px;
            padding-top:10px;
        }
        #d7{
            text-align:center;
            padding-bottom:25px;
            padding-top:25px;
            color:gray;
        }
        #d7 a{
            text-decoration:none;
            color:orange;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div id="d1">
        <table>
            <tr>
                <td style="padding-left:50px">
                    <asp:Image ID="Image1" runat="server" Width="20px" CssClass="img" 
                        ImageUrl="~/HinhAnh/HinhAnhTuyenDung/icons8-location-64.png" />
                    Hà Nội & Hồ Chí Minh
                    <asp:Image ID="Image2" runat="server" Width="20px" CssClass="img" 
                        ImageUrl="~/HinhAnh/HinhAnhTuyenDung/icons8-phone-50.png" />
                    028 7300 3828
                    <a href="mailto:careers@logivan.com">
                        <asp:Image ID="Image3" runat="server" Width="20px" CssClass="img" 
                            ImageUrl="~/HinhAnh/HinhAnhTuyenDung/icons8-mail-24.png" />
                        careers@logivan.com
                    </a>
                </td>
                <td style="text-align:right; padding-right:50px;">
                    <a href="https://www.facebook.com/logivancareers/">
                        <asp:Image ID="Image4" runat="server" Width="20px" CssClass="img" 
                            ImageUrl="~/HinhAnh/HinhAnhTuyenDung/icons8-facebook-24.png" />
                    </a>
                    <a href="https://www.youtube.com/channel/UC-_XDXkRmtp1EcsI6YDtx2A">
                        <asp:Image ID="Image5" runat="server" Width="20px" CssClass="img" 
                            ImageUrl="~/HinhAnh/HinhAnhTuyenDung/icons8-youtube-30.png" />
                    </a>
                    <a href="https://www.linkedin.com/company/logivan">
                        <asp:Image ID="Image6" runat="server" Width="20px" CssClass="img" 
                            ImageUrl="~/HinhAnh/HinhAnhTuyenDung/icons8-linkedin-30.png" />
                    </a>
                </td>
            </tr>
        </table>
    </div>
        <div id="d2">
            <table>
                <tr>
                    <td style="padding-left:50px">
                        <asp:Image ID="Image7" runat="server" ImageUrl="~/HinhAnh/HinhAnhTuyenDung/cropped-LOGIVAN_logo-1.png" Width="335px" />
                    </td>
                    <td style="text-align:right; padding-right:50px;">
                        <asp:Button ID="Button1" runat="server" Text="HOME" CssClass="btn" />
                        <asp:Button ID="Button2" runat="server" Text="CAREERS" CssClass="btn" />
                        <asp:Button ID="Button3" runat="server" Text="LOGINEER'S LIFE" CssClass="btn" />
                        <asp:Button ID="Button4" runat="server" Text="BLOG" CssClass="btn" />
                    </td>
                </tr>
            </table>
        </div>
        <div id="d3">
            <h1 style="font-size:50px;">
                Tại sao bạn sẽ yêu thích 
                <br />
                làm việc tại LOGIVAN?
            </h1>
            <p>
                Hãy ứng tuyển tại LOGIVAN ngay hôm nay!
            </p>
            <asp:Button ID="Button5" runat="server" Text="CÁC VỊ TRÍ TUYỂN DỤNG" CssClass="btn2" />
            <asp:Button ID="Button6" runat="server" Text="TÌM HIỂU THÊM VỀ LOGIVAN" CssClass="btn3" />
        </div>
        <div id="d4">
            <table>
                <tr>
                    <td>
                        <div id="d4d1">
                            <asp:Image ID="Image8" runat="server" Width="50px" Height="50px" 
                                ImageUrl="~/HinhAnh/HinhAnhTuyenDung/icons8-add-user-male-24.png" />
                            <p>
                                LOGIVAN có rất nhiều LOGINEERs cực kỳ thông minh, tài năng & đầy thú vị.
                            </p>
                        </div>
                    </td>
                    <td>
                        <div id="d4d2">
                            <asp:Image ID="Image9" runat="server" Width="50px" Height="50px" 
                                ImageUrl="~/HinhAnh/HinhAnhTuyenDung/icons8-smile-48.png" />
                            <p>
                                Chúng tôi làm việc đầy hăng say nhưng cũng không quên giữ niềm vui xen kẽ.
                            </p>
                        </div>
                    </td>
                    <td>
                        <div id="d4d3">
                            <asp:Image ID="Image10" runat="server" Width="50px" Height="50px" 
                                ImageUrl="~/HinhAnh/HinhAnhTuyenDung/icons8-people-24.png" />
                            <p>
                                Chúng tôi xây dựng những mối quan hệ trung thực & minh bạch.
                            </p>
                        </div>
                    </td>
                </tr>
            </table>
        </div>
        <div id="d5">
            <h1>
                Quy trình tuyển dụng của 
                <span>
                    LOGIVAN
                </span>
            </h1>
            <table>
                <tr>
                    <td>
                        <asp:Image ID="Image11" runat="server" Width="50px" Height="50px" 
                            ImageUrl="~/HinhAnh/HinhAnhTuyenDung/icons8-file-50.png" />
                        <p>
                            <strong>
                                CHỌN LỌC HỒ SƠ
                            </strong>
                        </p>
                        <p>
                            Việc chọn lọc hồ sơ được dựa trên nhiều tiêu chí. 
                            Chúng tôi sẽ chỉ liên hệ những ứng viên đạt tiêu chuẩn.
                        </p>
                    </td>
                    <td>
                        <asp:Image ID="Image12" runat="server" Width="50px" Height="50px" 
                            ImageUrl="~/HinhAnh/HinhAnhTuyenDung/icons8-paper-plane-50.png" />
                        <p>
                            <strong>
                                GỬI BÀI KIỂM TRA
                            </strong>
                        </p>
                        <p>
                            Tùy theo từng vị trí, chúng tôi sẽ gửi bài kiểm tra để bạn hoàn thành tại nhà hoặc công ty.
                        </p>
                    </td>
                    <td>
                        <asp:Image ID="Image13" runat="server" Width="50px" Height="50px" 
                            ImageUrl="~/HinhAnh/HinhAnhTuyenDung/icons8-truck-24.png" />
                        <p>
                            <strong>
                                PHỎNG VẤN KỸ THUẬT
                            </strong>
                        </p>
                        <p>
                            Chúng tôi sẽ liên hệ với các ứng viên đạt bài kiểm tra để phỏng vấn cùng quản lý trực tiếp & đại diện nhân sự.
                        </p>
                    </td>
                    <td>
                        <asp:Image ID="Image14" runat="server" Width="50px" Height="50px" 
                            ImageUrl="~/HinhAnh/HinhAnhTuyenDung/icons8-truck-50.png" />
                        <p>
                            <strong>
                                PHỎNG VẤN VĂN HÓA
                            </strong>
                        </p>
                        <p>
                            Chúng tôi sẽ liên hệ với các ứng viên đạt phỏng vấn kỹ thuật 
                            để tiến tới vòng cuối cùng CEO & Nhà sáng lập của LOGIVAN là Linh Phạm. 
                            Theo thống kê, các ứng viên vượt qua vòng cuối này đều dành thời gian 
                            tìm hiểu về sứ mệnh cũng như mô hình kinh doanh của LOGIVAN.
                        </p>
                    </td>
                </tr>
            </table>
        </div>
        <div id="d6">
            <table>
                <tr>
                    <td>
                        <h1>
                            Ứng tuyển tại LOGIVAN ngay hôm nay!
                        </h1>
                    </td>
                    <td style="text-align:right;">
                        <asp:Button ID="Button7" runat="server" Text="XEM CÁC VỊ TRÍ TUYỂN DỤNG" CssClass="btn7" />
                    </td>
                </tr>
            </table>
        </div>
        <div id="d7">
            <p>
                © 2021 LOGIVAN Careers. Created for free using WordPress and
                <a href="https://colibriwp.com/">
                    Colibri
                </a>
            </p>
            
        </div>
    </form>
</body>
</html>
