using System;


namespace MyFirstWebSite
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) // אבחנה האם טעינה ראשונה של הקובץ או לאחר שליחת הטופס
            {
                string queryStr, fname, isAdmin;
                string userMail = Request.Form["userMail"];
                string userPwd = Request.Form["userPwd"];

                //בדיקה האם קיימת רשומה בטבלה עם אותם ערכים בשדות דואל וסיסמה
                queryStr = "SELECT * FROM tbl_users WHERE userMail = '" + userMail + "' AND userPwd = '" + userPwd + "'";

                // שליפת השם הפרטי וסוג המשתמש מתוך הרשומה במידה ונמצאה התאמה בבסיס הנתונים
                fname   = SqlDBHelper.GetFieldValue(queryStr, "userFname");
                isAdmin = SqlDBHelper.GetFieldValue(queryStr, "isAdmin");

                if(isAdmin != null && isAdmin.ToLower() == "true") // כניסת מנהל
                {
                    Session["userName"] = "מנהל";
                    Session["Admin"] = true;
                    Response.Redirect("AdminHome.aspx"); //ניתוב לדף הבית של המנהל
                }
                else if (fname != null) //כניסת משתמש רגיל
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