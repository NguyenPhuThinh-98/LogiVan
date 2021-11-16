<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="admin-login.aspx.cs" Inherits="LogiVan_New.admin_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #tbl{
            width:50%;
            margin-left:25%;
            margin-top:50px;
            margin-bottom:50px;
            border-collapse:collapse;
            background-color:orange;
        }
        #tbl h1{
            text-align:center;
        }
        #tbl th{
            width:20%;
        }
        .validation{
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <table id="tbl">
            <tr>
                <td colspan="2">
                    <h1>THÔNG TIN ĐĂNG NHẬP</h1>
                </td>
            </tr>
            <tr>
                <th>TÀI KHOẢN</th>
                <td>
                    <asp:TextBox ID="txtTaiKhoan" runat="server" width="98%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="validation">
                    <asp:requiredfieldvalidator runat="server" errormessage="tài khoản không được để trống" ControlToValidate="txtTaiKhoan" ForeColor="Red"></asp:requiredfieldvalidator>
                </td>
            </tr>
            <tr>
                <th>MẬT KHẨU</th>
                <td>
                    <asp:TextBox ID="txtMatKhau" runat="server" width="98%" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" class="validation">
                    <asp:requiredfieldvalidator runat="server" errormessage="mật khẩu không được để trống" ControlToValidate="txtMatKhau" ForeColor="Red"></asp:requiredfieldvalidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:button runat="server" text="ĐĂNG NHẬP" width="100%" ID="btnDangNhap" OnClick="btnDangNhap_Click" Font-Size="XX-Large" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
