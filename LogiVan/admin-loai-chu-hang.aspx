﻿<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="admin-loai-chu-hang.aspx.cs" Inherits="LogiVan.admin_loai_chu_hang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .button{
            width:100%;
            margin-bottom:20px;
            margin-top:20px;
        }
        .table{
            width:100%;
        }
        .table th{
            width:30%;
            text-align:left;
        }
        .textbox{
            width:99%;
        }
        .dropdownlist{
            width:99%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main">
        <asp:GridView ID="GridView1" runat="server" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:Button ID="btnSelect" runat="server" Text="xem dữ liệu" CssClass="button" OnClick="btnSelect_Click" />
        <table class="table">
            <tr>
                <td>
                    <asp:Button ID="btnViewInsert" runat="server" Text="view thêm dữ liệu" CssClass="button" OnClick="btnViewInsert_Click" />
                </td>
                <td>
                    <asp:Button ID="btnViewDelete" runat="server" Text="view xóa dữ liệu" CssClass="button" OnClick="btnViewDelete_Click" />
                </td>
                <td>
                    <asp:Button ID="btnViewUpdate" runat="server" Text="view cập nhật dữ liệu" CssClass="button" OnClick="btnViewUpdate_Click" />
                </td>
            </tr>
        </table>
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">
                <table class="table">
                    <tr>
                        <th>Tên loại chủ hàng</th>
                        <td>
                            <asp:TextBox ID="inTenLoai" runat="server" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnInsert" runat="server" Text="thêm dữ liệu" CssClass="button" OnClick="btnInsert_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
                <table class="table">
                    <tr>
                        <th>Mã loại - Tên loại chủ hàng</th>
                        <td>
                            <asp:DropDownList ID="delMaLoai" runat="server" CssClass="dropdownlist"></asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Button ID="btnDelete" runat="server" Text="xóa dữ liệu" CssClass="button" OnClick="btnDelete_Click" />
                        </td>
                    </tr>
                </table>
            </asp:View>
            <asp:View ID="View3" runat="server">

            </asp:View>
        </asp:MultiView>
    </div>
</asp:Content>