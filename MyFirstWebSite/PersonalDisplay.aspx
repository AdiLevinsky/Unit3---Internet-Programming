<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeBehind="PersonalDisplay.aspx.cs" Inherits="MyFirstWebSite.PersonalDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <br />
    <h2>תצוגה מותאמת אישית</h2>
    <br />
    
    <ul class="stickyNote center" style="width:40em; height: 21em; transform: rotate(-1deg);">
        <img src="/images/washi-tape.png" class="stickyTape" style="left:90px;"/>
        <h3>תצוגה מותאמת אישית כוללת את התוספות הבאות:</h3>
        <table>
            <tr>
                <td style="width:10%"></td>
                <td>
                    <li>קראו את קובץ ההסברים, וממשו מתוכו את סעיפים 5.3 - 5.7:</li><br />
                    <li>5.3 - הוספת קובץ Global.asax + הוספת מונה מבקרים באתר</li><br />
                    <li>5.4 - הצגת שם המשתמש לאחר שביצע התחברות או שלום אורח אם לא התחבר</li><br />
                    <li>5.5 - הוספת פונקציונליות להתנתקות</li><br />
                    <li>5.6 - תפריט אישי מותאם למשתמש - מותאם למצב החיבור שלו לאתר</li><br />
                    <li>5.7 - יצירת דפים מוגנים</li><br />
                </td>
            </tr>
            <tr><td></td><td>להורדת הקובץ <a href="Files/PesonalDisplay_Global_Logout.pdf" download>לחצו כאן</a>.</td></tr>
        </table>
                    
    </ul>
</asp:Content>
