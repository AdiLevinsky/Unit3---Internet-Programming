<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeBehind="MembersOnly.aspx.cs" Inherits="MyFirstWebSite.MembersOnly" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br /><h2>אתם רואים את הדף כי אתם מחוברים לאתר</h2><br />
        
    <div style="height:31em">

        <div class="box center" style="height:15em;">
            <br />
            אם לא הייתם רשומים ומחוברים, <br />
            הייתם מגיעים לדף עם קוד שגיאה.<br /><br /><br />

            בצעו התנתקות ונסו להיכנס שוב לדף הזה.<br /><br /><br />

            שימו לב לדף האינטרנט אליו אתם מנותבים בכל אחד מהמקרים.
        </div>
    </div>
</asp:Content>
