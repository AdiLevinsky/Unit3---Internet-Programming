<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeBehind="AdminEditUser.aspx.cs" Inherits="MyFirstWebSite.AdminEditUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>עדכון פרטי משתמש רשום</h2>
        
    <div class="box center" style="width: 45em; height:21em;">
        <%=edit %>
    </div>

</asp:Content>
