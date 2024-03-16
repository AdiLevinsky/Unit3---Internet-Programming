<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeBehind="CSS.aspx.cs" Inherits="MyFirstWebSite.CSS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <br />
    <h2>עיצוב דפי האתר</h2>


    <ul class="ulSticky">
        <li class="liSticky3">
            <img src="/images/washi-tape.png" class="stickyTapeSmall3"/>
            <h3 style="text-align:center;">Inline</h3>
            <p> הגדרת העיצוב ישירות על תגית ה- HTML באמצעות תכונת ה- style.<br /><br />
                
                <b>לדוגמה:</b><br />
                אם נרצה להציג את המילה text בצבע אדום, נכתוב את שורת הקוד הבאה:
                            
                <pre style="background-color:#f2f2f2;">
                    <b><code style="font-size:14px; position:relative; left:125px; top: 7px;">&lt;p style="color: red"&gt;text&lt;/p&gt;</code></b>
                </pre>
            </p>
        </li>
        
        <li class="liSticky3">
            <img src="/images/washi-tape.png" class="stickyTapeSmall3"/>
            <h3 style="text-align:center;">Internal</h3>
            <p>הגדרות עיצוב מוגדרות וזמינות לכל הדף.  <br />
                מוגדרות בתוך תגית ה- head. <br /><br />
                           
                <b>לדוגמה:</b><br />
                כל הפסקאות בדף יצבעו באדום, וכל הקישורים בירוק
                           
                <pre dir="ltr" style="background-color:#f2f2f2; text-align: left;">
                    <code class="oldLang language-html" style="position:relative; left:-120px; top: 10px;">
                        &lt;!DOCTYPE html&gt;
                        &lt;html&gt;
                        &lt;head&gt;
                        &lt;title&gt;CSS Example&lt;/title&gt;
                        <strong>&lt;style&gt;</strong>

                        <strong>    p {</strong>
                        <strong>        color: red;</strong>
                        <strong>    }</strong>

                        <strong>    a {</strong>
                        <strong>        color: green;</strong>
                        <strong>    }</strong>

                        <strong>&lt;/style&gt;</strong>
                        ...
                    </code>
                </pre>
            </p>
        </li>

        <li class="liSticky3">
            <img src="/images/washi-tape.png" class="stickyTapeSmall3"/>
            <h3 style="text-align:center;">External</h3>
            <p>הגדרות העיצוב מוגדרת בתוך קובץ ייעודי <br />
               (סיומת css.). <br /><br />
               על מנת להשתמש בהגדרות שבקובץ,<br />
               יש להוסיף את השורה הבאה בתוך תגית <br />
               ה- head:<br />
                            
               <pre dir="ltr" style="background-color:#f2f2f2; text-align: left;">
                   <b><code style="font-size:14px; position:relative; left:-170px; top: -3px;">
                       &lt;link rel="stylesheet" <br />
                       type="text/css" href="style.css"/&gt;</code></b>
               </pre>
               כאשר לקובץ שלנו קוראים style.css<br />
               והוא ממוקם בתוך הפרויקט שלנו במיקום המופיע בתכונת ה- href.

            </p>
        </li>

    </ul>
 
</asp:Content>
