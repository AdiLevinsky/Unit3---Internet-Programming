<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeBehind="Links.aspx.cs" Inherits="MyFirstWebSite.Links" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h2>קישורים חשובים</h2>
    <br />
    <ul class="ulSticky">
        
        <li class="liSticky">
            <img src="/Images/washi-tape.png" class="stickyTapeSmall" />
            <h3>תכנית הלימודים</h3>
            <p>מכילה את פירוט הנושאים והגדרת הפרויקט.</p><br />
            <p><a href="https://meyda.education.gov.il/files/CSIT/introduction-to-programming-in-web-environment.pdf" target="_blank">מבוא לתכנות בסביבת האינטרנט</a></p>
        </li>

        <li class="liSticky">
            <img src="/Images/washi-tape.png" class="stickyTapeSmall" />
            <h3>תבנית לתיק פרויקט</h3>
            <p>מסמך שלד.</p>
            <p>תוכלו להיעזר בו בזמן כתיבת תיק הפרויקט.</p>
            <p><a href="https://cms.education.gov.il/NR/rdonlyres/FD397E5B-40BE-4B38-9B8F-93E30CE5C738/180461/Tavnit1121.pdf" target="_blank">תבנית לתיק פרויקט</a></p>
        </li>

        <li class="liSticky">
            <img src="/Images/washi-tape.png" class="stickyTapeSmall" />
            <h3>מחוון לבדיקת הפרויקט</h3>
            <p>הקריטריונים על פיהם יבדק אתר האינטרנט.</p>
            <p><a href="https://meyda.education.gov.il/files/CSIT/specifications-and-criteria.pdf" target="_blank">מחוון לבדיקת אתר האינטרנט</a></p>
        </li>

    </ul>
</asp:Content>
