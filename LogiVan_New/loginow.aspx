<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="loginow.aspx.cs" Inherits="LogiVan_New.loginow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #top table{
            width:40%;
            margin-left:200px;
            margin-top:70px;
        }
        .table{
            width:72%;
            margin-left:200px;
        }
        .table td{
            vertical-align:top;
            text-align:justify;
        }
        .table a{
            color:inherit;
            font-size:20px;
            margin-left:20px;
        }
        .button{
            width:100%;
            background-color:inherit;
            border-color:orange;
            color:orange;
            font-size:x-large;
        }
        #register{
            background-image:url(HinhAnh/HinhAnhLoginow/bg_newsletter.png);
            background-repeat:no-repeat;
            background-size:cover;
            text-align:center;
            padding-top:25px;
            padding-bottom:25px;
        }
        .tieude{
            text-decoration:none;
            color:inherit;
        }
        .tieude:hover{
            text-decoration:underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <div id="top">
            <table>
                <tr>
                    <td colspan="2" style="color:orange">
                        TIN TỨC VẬN TẢI
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <h1 style="font-size:xx-large; text-align:justify;">
                            LOGIVAN CHÍNH THỨC RA MẮT LOGINOW - GÓI DỊCH VỤ CHUYỂN HÀNG 5 SAO
                        </h1>
                    </td>
                </tr>
                <tr>
                    <td style="color:gray">
                        Đăng bởi:
                        <span style="color:blue; font-weight:bold">
                            LOGIVAN
                        </span>
                    </td>
                    <td style="color:gray">
                        Ngày đăng: 24/10/2019
                    </td>
                </tr>
            </table>
        </div>
        <div style="text-align:center;">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/HinhAnh/HinhAnhLoginow/loginow-banner-web-1.jpg" Width="80%" />
        </div>
        <table class="table">
            <tr>
                <td style="width:80%; padding-right:50px;">
                    <h1>LOGINOW là gì?</h1>
                    <p>
                        Trong một cuộc khảo sát của LOGIVAN với chủ hàng về cước phí và tỉ lệ xe tải nhận chuyến, 
                        đa số chủ hàng cho rằng khi làm việc trực tiếp với chủ xe, các đơn hàng thường báo giá khá cao, 
                        không phù hợp với ngân sách của chủ hàng.
                    </p>
                    <p>
                        Bên cạnh đó, vì đặc thù hàng hóa, nhiều chủ hàng mong muốn luôn có xe nhận chuyến cho đơn hàng của họ.
                    </p>
                    <p>
                        Xuất phát từ nhu cầu này, ngày 21/10/2019 vừa qua, LOGIVAN đã chính thức ra mắt gói dịch vụ đặt xe LOGINOW, 
                        giúp chủ hàng có <strong>báo giá ngay</strong> và <strong>100% có xe</strong> cùng nhiều tiện ích nổi bật khác.
                    </p>
                    <p>
                        Với LOGINOW, chủ hàng sẽ được <strong>LOGIVAN trực tiếp báo giá và sắp xếp tài xế cho đơn hàng</strong>. 
                        Giá cước LOGINOW không chỉ được hiển thị <strong>ngay lập tức cho tất cả tuyến đường</strong>, 
                        mà còn luôn <strong>tốt và cạnh tranh so với thị trường</strong> nhờ hệ thống báo giá hiện đại của LOGIVAN.
                    </p>
                    <p>
                        Vậy, LOGINOW có gì khác so với hình thức đặt xe truyền thống trước đây là 
                        chủ hàng-chủ xe trao đổi giá trực tiếp với nhau?
                    </p>
                    <asp:Image ID="Image4" runat="server" 
                        ImageUrl="~/HinhAnh/HinhAnhLoginow/shutterstock_1450022900_huge.jpg" Width="100%" />
                    <h1>
                        Điểm khác biệt lớn nhất là tính năng tự động báo giá và giá luôn tốt!
                    </h1>
                    <p>
                        Mọi đơn hàng đặt qua LOGIVAN và sử dụng LOGINOW đều nhận ngay mức giá chính xác và tốt nhất, 
                        giúp chủ hàng tiết kiệm chi phí và thời gian khi không phải tự mình tìm báo giá theo cách truyền thống. 
                    </p>
                    <p>
                        Để có được điều này, LOGIVAN đã áp dụng toàn diện công nghệ và trí tuệ nhân tạo (AI) vào hệ thống báo giá tự động, 
                        giúp các hoạt động tính toán và đưa ra giá cước cực kỳ nhanh chóng và chính xác. 
                    </p>
                    <h1>
                        LOGINOW cam kết 100% có xe
                    </h1>
                    <p>
                        Với dói dịch vụ LOGINOW, chủ hàng sẽ luôn tìm được xe phù hợp nhất, 
                        không còn các bước tìm xe phức tạp và tốn thời gian như cách tìm xe truyền thống trước đây, 
                        cũng không còn tình trạng bị hủy xe hay tìm không được xe chở hàng.  
                    </p>
                    <p>
                        Hãy tưởng tượng, chỉ cần chủ hàng ngồi tại nhà đặt xe qua ứng dụng LOGIVAN Chủ Hàng và chọn báo giá của 
                        LOGINOW là xe hàng sẽ tự động đến điểm bốc hàng theo thời gian hẹn.
                    </p>
                    <p>
                        Không cần gọi điện hỏi từng nhà xe, 
                        cũng không cần hồi hộp liệu tài xế có “bom” đơn hàng hay không mà vẫn có chuyến hàng như ý. 
                        Chỉ có thể là gói dịch vụ LOGINOW!
                    </p>
                    <h1>
                        An toàn hàng hóa tuyệt đối
                    </h1>
                    <p>
                        Với tính năng LOGINOW, đội ngũ LOGIVAN sẽ theo dõi và quản lý xuyên suốt lộ trình của chuyến hàng. 
                        Đồng thời, chủ hàng cũng có thể biết được tình trạng hàng hóa của mình bằng việc chủ động theo dõi hành trình 
                        di chuyển của xe được hiển thị trực tuyến trên ứng dụng LOGIVAN Chủ hàng. 
                    </p>
                    <p>
                        Đặc biệt, LOGINOW còn có dịch vụ bảo hiểm hàng hóa và làm hợp đồng vận chuyển nhằm mang đến sự minh bạch 
                        và an tâm cho chủ hàng. Như vậy, chủ hàng sẽ không còn bận tâm về sự an toàn của hàng hóa khi sử dung tính 
                        năng LOGINOW.
                    </p>
                    <h1>
                        Tài xế tiêu chuẩn 5 sao
                    </h1>
                    <p>
                        Tất cả chuyến hàng được đặt qua LOGIVAN và sử dụng LOGINOW đều được phụ trách bởi đội ngũ tài xế chất lượng 5 sao 
                        do LOGIVAN chọn lọc. Chỉ những tài xế có đầy đủ thông tin, thái độ làm việc chuyên nghiệp, kinh nghiệm chuyển hàng 
                        dày dặn mới được tiếp nhận đơn hàng LOGINOW. 
                    </p>
                    <p>
                        Điều này giúp giảm thiểu rủi ro khi vận chuyển hàng hóa, mang đến sự an tâm cho chủ hàng. 
                    </p>
                    <p>
                        Hãy trải nghiệm LOGINOW – dịch vụ chuyển hàng đẳng cấp 5 sao của LOGIVAN để 
                        không phải lãng phí thời gian và tiền bạc mỗi khi chuyển hàng.
                    </p>
                    <p>
                        <strong>
                            Chạm là có giá, đặt là có xe!
                        </strong>
                    </p>
                    <p>
                        Thông tin liên hệ
                    </p>
                    <p>
                        LOGIVAN
                    </p>
                    <p>
                        Hotline: 0822 13 16 18
                    </p>
                    <p>
                        Email: hotro@logivan.com
                    </p>
                    <p>
                        Website: www.logivan.com
                    </p>
                    <p>
                        App LOGIVAN – Chủ hàng: www.logivan.com/hang
                    </p>
                    <p>
                        App LOGIVAN – Chủ xe: www.logivan.com/xe
                    </p>
                    <p style="text-align:center;">
                        Video hướng dẫn sử dụng gói dịch vụ LOGINOW
                    </p>
                    <video src="HinhAnh/HinhAnhLoginow/loginow.mp4" width="700" muted="muted" autoplay="autoplay" loop="loop">

                    </video>
                    <p>
                        Chia sẻ bài viết này trên:
                        <asp:Image ID="Image5" runat="server" Height="20px" Width="20px" ImageUrl="~/HinhAnh/HinhAnhLoginow/facebook.png" />
                        <a href="https://www.facebook.com/sharer.php?u=https%3A%2F%2Fwww.logivan.com%
                            2Floginow-dich-vu-chuyen-hang-5-sao-da-xuat-hien%2F"
                           style="color:orange">
                            Facebook</a>
                        -
                        <asp:Image ID="Image6" runat="server" Height="20px" Width="20px" ImageUrl="~/HinhAnh/HinhAnhLoginow/twitter-icon.png" />
                        <a href="https://twitter.com/intent/tweet?url=https://www.logivan.com/
                            loginow-dich-vu-chuyen-hang-5-sao-da-xuat-hien/"
                            style="color:orange">
                            Twitter</a>
                    </p>
                </td>
                <td>
                    <p>
                        <strong>
                            Chia sẻ bài viết náy trên:
                        </strong>
                    </p>
                    <p>
                        <asp:Image ID="Image2" runat="server" Width="20px" Height="20px" ImageUrl="~/HinhAnh/HinhAnhLoginow/facebook.png" />
                        <a href="#">Facebook</a>
                    </p>
                    <p>
                        <asp:Image ID="Image3" runat="server" Width="20px" Height="20px" ImageUrl="~/HinhAnh/HinhAnhLoginow/twitter-icon.png" />
                        <a href="#">Twitter</a>
                    </p>
                    <p>
                        <strong>
                            Hoặc theo dõi chúng tôi qua email:
                        </strong>
                    </p>
                    <p style="color:gray">
                        Bạn sẽ được cập nhật tin tức mới nhất từ LOGIVAN qua hộp thư điện tử của mình
                    </p>
                    <asp:Button ID="Button1" runat="server" Text="Theo dõi ngay" CssClass="button" OnClick="Button1_Click"/>
                </td>
            </tr>
        </table>
        <div id="register">
            <h3>LOGIVAN Newsletter</h3>
            <p>Bạn sẽ được cập nhật tin tức mới nhất từ LOGIVAN qua hộp thư điện tử của mình</p>
            <div style="border:1px solid black; width:50%; margin-left:25%;text-align:left; background-color:white; padding-top:20px; padding-bottom:20px; padding-left:20px;">
                <asp:TextBox ID="TextBox1" runat="server" Text="Địa chỉ email" BorderStyle="None" Width="65%"></asp:TextBox>
                <asp:Button ID="Button2" runat="server" Text="Theo dõi ngay" Width="25%" CssClass="button" BorderStyle="None" Font-Size="Medium" />
            </div>
        </div>
        <div style="margin-top:50px; padding-left:50px; margin-bottom:50px;">
            <h3>TIN TỨC LIÊN QUAN</h3>
            <asp:DataList ID="DataList1" runat="server" Width="94%" DataKeyField="MaTinTuc" DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <asp:Image ID="imgAnhBia" runat="server" ImageUrl='<%# "data:image/jpg;base64,"+Convert.ToBase64String((byte[])Eval("AnhBia")) %>' Width="300px" Height="200px" />
                    <br />
                    <br />
                    <asp:HyperLink ID="hlTieuDe" runat="server" Text='<%# Eval("TieuDe") %>' Font-Bold="true" href="#" Width="300px" CssClass="tieude"></asp:HyperLink>
                    <br />
                    <br />
                    <asp:Label ID="lbNgayTao" runat="server" Text='<%# "Ngày đăng: " + Eval("NgayTao", "{0:d}") %>' Width="300px" ForeColor="Gray"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lbTomTat" runat="server" Text='<%# Eval("TomTat") %>' Width="300px"></asp:Label>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LogivanWebConnectionString %>" SelectCommand="SELECT TOP (3) MaTinTuc, AnhBia, TieuDe, TomTat, NgayTao FROM TinTuc ORDER BY NgayTao desc"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
