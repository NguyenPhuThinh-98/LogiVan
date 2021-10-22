<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="lien-he.aspx.cs" Inherits="LogiVan.lien_he" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #banner{
            background-image:url(HinhAnh/HinhAnhLienHe/bg-top-landing.png);
            background-size:cover;
            background-position:center;
            color:white;
            padding-bottom:50px;
            padding-left:50px;
            padding-top:100px;
        }
        #div-2{
            margin-bottom:30px;
            margin-top:30px;
        }
        #div-2 table{
            width:100%;
        }
        #left{
            padding-left:90px;
            width:50%;
        }
        #left image{
            height:20px;
        }
        #left a{
            text-decoration:none;
            color:orange;
        }
        #left a:hover{
            text-decoration:underline;
        }
        #right{
            vertical-align:top;
        }
        #right input{
            width:80%;
        }
        #right textarea{
            width:80%;
        }
        .btn{
            background-color:orange;
            color:white;
            border:none;
            font-size:xx-large;
            float:right;
            margin-right:20%;
        }
        .color-red{
            color:red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="banner">
        <h1>Contact</h1>
    </div>
    <div id="div-2">
        <table>
            <tr>
                <td id="left">
                    <h1>Thông tin liên lạc</h1>
                    <br />
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/HinhAnh/HinhAnhLienHe/icon-mail.svg" />
                    <a href="mailto:hotro@logivan.com" style="color:black;">hotro@logivan.com</a>
                    <br />
                    <br />
                    <h1>Địa chỉ văn phòng</h1>
                    <h4>Khách Hàng Doanh Nghiệp Hotline</h4>
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/HinhAnh/HinhAnhLienHe/icon-phone.svg" />
                    <a href="tel:0869900018">086-990-0018</a>
                    <br />
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/HinhAnh/HinhAnhLienHe/icon-locate.svg" />
                    <a href="#">Hướng dẫn trên bản đồ</a>
                    <br />
                    <h4>Hà Nội</h4>
                    <p>
                        Công ty TNHH Công nghệ LOGIVAN Việt Nam
                        <br />
                        Ô 10, Tầng 3, D2 Giảng Võ, Ba Đình, Hà Nội
                    </p>
                    <asp:Image ID="Image4" runat="server" ImageUrl="~/HinhAnh/HinhAnhLienHe/icon-phone.svg" />
                    <a href="tel:02473001828">024-7300-1828</a>
                    <br />
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/HinhAnh/HinhAnhLienHe/icon-locate.svg" />
                    <a href="https://www.google.com/maps/place/D2+Gi%E1%BA%A3ng+V%C3%B5,+%C4%90%E1%BB%91ng+%C4%90a,+H%C3%A0+N%E1%BB%99i,+Vi%E1%BB%87t+Nam/@21.0258298,105.8198215,17z/data=!3m1!4b1!4m5!3m4!1s0x3135ab71397e29a9:0xab6ea6ed69bc977!8m2!3d21.0258298!4d105.8220102">Hướng dẫn trên bản đồ</a>
                    <br />
                    <h4>Hồ Chí Minh</h4>
                    <p>
                        Công ty TNHH Công nghệ LOGIVAN Việt Nam
                        <br />
                        Lầu 5, 16 Nguyễn Trường Tộ, Phường 12, Quận 4, Thành phố Hồ Chí Minh
                    </p>
                    <asp:Image ID="Image6" runat="server" ImageUrl="~/HinhAnh/HinhAnhLienHe/icon-phone.svg" />
                    <a href="tel:02873003828">028-7300-3828</a>
                    <br />
                    <asp:Image ID="Image7" runat="server" ImageUrl="~/HinhAnh/HinhAnhLienHe/icon-locate.svg" />
                    <a href="https://www.google.com/maps/place/506+Nguy%E1%BB%85n+%C4%90%C3%ACnh+Chi%E1%BB%83u,+Ph%C6%B0%E1%BB%9Dng+4,+Qu%E1%BA%ADn+3,+H%E1%BB%93+Ch%C3%AD+Minh,+Vietnam/@10.7715123,106.6811943,17z/data=!3m1!4b1!4m5!3m4!1s0x31752f23c8abcc41:0xfe29d012615cf4e4!8m2!3d10.771507!4d106.683383">Hướng dẫn trên bản đồ</a>
                </td>
                <td id="right">
                    <h1>Liên hệ với chúng tôi</h1>
                    <asp:Label ID="Label1" runat="server" Text="Họ và tên"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Yêu cầu bắt buộc." ControlToValidate="txtName" CssClass="color-red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Địa chỉ Email"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Yêu cầu bắt buộc." ControlToValidate="txtEmail" CssClass="color-red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Số điện thoại"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Yêu cầu bắt buộc." ControlToValidate="txtPhone" CssClass="color-red"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Tiêu đề"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label5" runat="server" Text="Nội dung"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtNoiDung" runat="server" TextMode="MultiLine" Height="50px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Gửi" CssClass="btn" Width="300px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
