<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="MyFirstWebSite.Result" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <br />
    <h2>דוגמה לדף טיפול בקודי הודעות מהשרת</h2>
    <br />

    <div class="box center" style="width:35%">
        בדף זה תוכלו לראות כיצד ניתן להציג הודעת שגיאה מותאמת החוזרת מהשרת כקוד.<br /><br />
        כאן אנו רואים הודעת שגיאה למצב בו משתמש שאינו רשום ו/או מחובר מנסה לגשת לדף עם הרשאת גישה:<br />
        <b>
            <%
            if (Request.QueryString["code"] == "1")
            { %>
                <br /><br />
                קוד מספר 1 - התרחשה שגיאה בתהליך ההרשמה
            <%}
                else if (Request.QueryString["code"] == "2")
                { %>
                <br /><br />
                קוד מספר 2 - ההרשמה הסתיימה בהצלחה
            <%}
                else if (Request.QueryString["code"] == "3")
                { %>
                <br /><br />
                <img src="/Images/accessDenied.png" width="15" height="15"/>
                    אין הרשאה לגשת לדף זה<br />
                <p style="color:red; font-size:small;">ניסית לגשת לדף הזמין למשתמשים רשומים ומחוברים בלבד [code 3]</p>
                    
            <%}%>
        </b>
    </div>

</asp:Content>
