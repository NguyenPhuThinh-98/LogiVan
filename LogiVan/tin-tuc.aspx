<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="tin-tuc.aspx.cs" Inherits="LogiVan.tin_tuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #main{
            width:80%;
            margin-left:10%;
            min-height:500px;
        }
        .left{
            width:70%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table id="main">
        <tr>
            <td class="left">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnItemDataBound="DataList1_ItemDataBound">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("AnhBia") %>' Width="500px" Height="200px" />
                    </ItemTemplate>
                </asp:DataList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LogivanWebConnectionString %>" SelectCommand="SELECT TOP (1) TinTuc.* FROM TinTuc ORDER BY NgayTao DESC"></asp:SqlDataSource>
            </td>
            <td>
                <p>
                    <strong>
                        TIN MỚI NHẤT
                    </strong>
                </p>
            </td>
        </tr>
        <tr>
            <td class="left">

            </td>
            <td>

            </td>
        </tr>
    </table>
</asp:Content>
