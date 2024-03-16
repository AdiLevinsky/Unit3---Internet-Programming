<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeFile="HTML.aspx.cs" Inherits="HTML" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <h2 id="ancorUpLinkId">תגיות HTML</h2>
   
    <ul class="ulSticky">
        <li class="liSticky">
            <img src="/Images/washi-tape.png" class="stickyTapeSmall" />
            <h3>קישור חיצוני</h3>
            <p>קישור לדף אינטרנט שאינו שייך לאתר שלנו, למשל לאתר <a href="https://www.w3schools.com/default.asp">w3schools</a>.</p>
            <p style="font-size:small;">חפשו כיצד פותחים את הקישור בלשונית חדשה.</p>
        </li>

        <li class="liSticky">
            <img src="/Images/washi-tape.png" class="stickyTapeSmall" />
            <h3>תמונה</h3>
            <p style="text-align:center"><img src="Images/hi.jpeg" width="140" height="120" style="border:groove;border-width:thick;"/></p>
        </li>

        <li class="liSticky">
            <img src="/Images/washi-tape.png" class="stickyTapeSmall" />
            <h3>קישור עוגן</h3>
            <p>קישור למיקום פנימי בתוך אותו הדף.</p>
            <p style="font-size:small;">כדי להגיע לתחתית העמוד לחצו <a href="#ancorBottomLinkId">כאן</a>.</p>
        </li>

        <li class="liSticky" style="height:33em; width:35em;" >
            <img src="/Images/washi-tape.png" class="stickyTapeSmall" style="left:160px;"/>
            <h3>סרטון</h3>
            <p style="text-align:center"><iframe style="vertical-align:top;" width="560" height="315" src="https://www.youtube.com/embed/Msyl-stMklk"> </iframe></p>
            <h4>על מנת לשלב סרטון מ- YouTube באתר שלכם:</h4>
            <ol>
                <li>היכנסו ל- YouTube ומצאו את הסרטון המתאים לכם.</li>
                <li>לחצו על הכפתור <b>SHARE</b>.</li>
                <li>לחצו על הכפתור <b>EMBED</b>.</li>
                <li>העתיקו את קוד ה- HTML שמוצג על המסך לתוך הדף שלכם.</li>
            </ol>
        </li>
    </ul>
    
    <ul class="ulSticky">
        <li class="liSticky" style="height:18em; width:17em;"  >
            <img src="/Images/washi-tape.png" class="stickyTapeSmall" style="left:-30px;"/>
            <h3>טבלה</h3>
            כדאי להשתמש בטבלה גם כשרוצים לארגן את האלמנטים בדף בצורה מיושרת<br /><br />
            <table border="1" >
                <thead>
                    <th>שם התלמיד</th>
                    <th>נושא האתר</th>
                    <th>רמת מורכבות</th>
                </thead>
                <tr>
                    <td>אבי</td>
                    <td>כדורסל</td>
                    <td>בינונית</td>
                </tr>
                <tr>
                    <td>בני</td>
                    <td>חתולים</td>
                    <td>קלה</td>
                </tr>
                <tr>
                    <td>גלי</td>
                    <td>מתכונים</td>
                    <td>קשה</td>
                </tr>
                <tr>
                    <td>דני</td>
                    <td>מוזיקה</td>
                    <td>בינונית</td>
                </tr>
            </table>
           
        </li>
    </ul>
    <a href="#ancorUpLinkId" id="ancorBottomLinkId">לתחילת הדף</a>
</asp:Content>

