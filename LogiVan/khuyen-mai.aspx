<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="khuyen-mai.aspx.cs" Inherits="LogiVan.khuyen_mai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #main h1{
            text-align:center;
            margin-top:50px;
            margin-bottom:50px;
        }
        .auto-style1 {
            width:400px;
            
        }
        #main a{
            text-decoration:none;
            color:inherit;
        }
        #main a:hover{
            text-decoration:underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main">
        <h1>KHUYẾN MÃI</h1>
        <asp:DataList ID="DataList1" runat="server" Width="100%" DataSourceID="SqlDataSource1" RepeatColumns="3" ShowFooter="False" ShowHeader="False" HorizontalAlign="Justify">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Image ID="Image2" runat="server" ImageUrl='<%# "data:image/jpg;base64,"+Convert.ToBase64String((byte[])Eval("Anh")) %>' Width="400px" Height="200px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("TieuDe") %>' href="#" Font-Bold="true"></asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("NgayTao", "{0:d}") %>' ForeColor="LightGray"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("TomTat") %>'></asp:Label>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LogivanWebConnectionString %>" SelectCommand="SELECT TOP(9) * FROM [KhuyenMai] ORDER BY [NgayTao] DESC, [MaKM]"></asp:SqlDataSource>
    </div>
</asp:Content>
