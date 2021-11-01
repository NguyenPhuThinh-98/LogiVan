<%@ Page Title="" Language="C#" MasterPageFile="~/LogiVan.Master" AutoEventWireup="true" CodeBehind="admin-menu.aspx.cs" Inherits="LogiVan.admin_menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        #div_2 {
            padding-bottom: 10px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server" Width="100%" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" ShowFooter="False" ShowHeader="False" CellSpacing="20">
        <ItemTemplate>
            <asp:Button ID="btnTableName" runat="server" Text='<%# Eval("TABLE_NAME") %>' Height="100px" Width="200px" Font-Size="X-Large"/>
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LogivanWebConnectionString %>" SelectCommand="SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES where table_name not like 'sys%' order by table_name"></asp:SqlDataSource>
    </div>
    <div id="div_2">
        <asp:Button ID="Button2" runat="server" Text="Thống Kê Báo Cáo" Height="100px" Width="100%" Font-Size="X-Large" PostBackUrl="admin-thong-ke.aspx" />
    </div>
</asp:Content>
