<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="tin-tuc-logivan.aspx.cs" Inherits="LogiVan.tin_tuc_logivan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #main h1{
            text-align:center;
        }
        .auto-style1 {
            width: 400px;
        }
        .a{
            text-decoration:none;
            color:inherit;
        }
        .a:hover{
            text-decoration:underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="main">
        <h1>TIN TỨC LOGIVAN</h1>
        <asp:DataList ID="DataList1" runat="server" Width="100%" DataKeyField="MaTinTuc" DataSourceID="SqlDataSource1" RepeatColumns="3" ShowFooter="False" ShowHeader="False" RepeatDirection="Horizontal">
            <ItemTemplate>
                
                <table class="auto-style1">
                    <tr>
                        <td>
                            <asp:Image ID="Image2" runat="server" Height="200px" Width="400px" ImageUrl='<%# "data:image/jpg;base64,"+Convert.ToBase64String((byte[])Eval("AnhBia")) %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:HyperLink ID="HyperLink1" runat="server" Text='<%# Eval("TieuDe") %>' href="#" Font-Bold="true" CssClass="a"></asp:HyperLink>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LogivanWebConnectionString %>" SelectCommand="SELECT TOP(9) * FROM [TinTuc] ORDER BY [NgayTao] DESC"></asp:SqlDataSource>
    </div>
</asp:Content>
