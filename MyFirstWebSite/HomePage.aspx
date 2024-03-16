<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="MyFirstWebSite.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="center" style="width:80%;">
        
        <h2>ברוכים הבאים!</h2>
        
        <table border="0" style="width:100%; border-spacing:15px;"">
            <tr>
                <td rowspan="4"><img src="/images/shalom.png"/></td>
                <td style="width:60%;">
                    כאן תוכלו למצוא הסברים ודוגמאות קוד נדרשות לצורך פיתוח אתר האינטרנט הראשון שלכם.
                </td>
            </tr>
            <tr>
                <td>
                    אתר האינטרנט הוא מטלת ביצוע, במסגרת לימודי מגמת מדעי המחשב, אשר מהווה 30% מציון הבגרות.
                </td>
            </tr>
            <tr>
                <td>
                    הקוד שתמצאו כאן אינו מלא, אך יתן לכם נקודת התחלה טובה.<br />
                    מעבר לדרישות החובה, השמים הם הגבול ...
                </td>
            </tr>
            <tr>
                <td>
                    <h3>שלבי בניית האתר:</h3>
                    <ul>
                        <li>דפי HTML</li>
                        <li>עיצוב - CSS</li>
                        <li>בניית טופס הרשמה</li>
                        <li>בדיקות אימות נתונים (ולידציה) - Javascript</li>
                        <li>שמירת נתוני טופס בבסיס נתונים</li>
                        <li>התחברות מהירה + התנתקות</li>
                        <li>תצוגה מותאמת אישית</li>
                        <li>מונה מבקרים</li>
                        <li>ממשק מנהל אתר (דף בית, עדכון, מחיקה)</li>
                    </ul>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
