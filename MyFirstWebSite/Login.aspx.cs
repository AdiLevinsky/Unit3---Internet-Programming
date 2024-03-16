using System;


namespace MyFirstWebSite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) // אבחנה האם טעינה ראשונה של הקובץ או לאחר שליחת הטופס
            {
                string queryStr, fname;
                string userMail = Request.Form["userMail"];
                string userPwd = Request.Form["userPwd"];

                //בדיקה האם קיימת רשומה בטבלה עם אותם ערכים בשדות דואל וסיסמה
                queryStr = "SELECT userFname FROM tbl_users WHERE userMail = '" + userMail + "' AND userPwd = '" + userPwd + "'";

                // שליפת השם הפרטי של המשתמש מתוך הרשומה במידה ונמצאה התאמה בבסיס הנתונים
                fname = SqlDBHelper.GetFieldValue(queryStr, "userFname");

                if (fname != null) //הצלחה
                {
                    Session["userName"] = fname;
                    Response.Redirect("HomePage.aspx"); //ניתוב לדף הבית
                }
                else //כשלון
                {
                    Response.Redirect("Login.aspx?code=1");
                }
            }
        }
    }
}