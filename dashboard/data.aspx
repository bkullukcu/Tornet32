<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="data.aspx.vb" Inherits="data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="icerik" Runat="Server">
    <asp:DataGrid ID="dataGrid1" runat="server" DataSourceID="SqlDataSource1"></asp:DataGrid>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:all1nDataConnectionString %>" SelectCommand="SELECT * FROM [trfYogunlukTbl]"></asp:SqlDataSource>
</asp:Content>

