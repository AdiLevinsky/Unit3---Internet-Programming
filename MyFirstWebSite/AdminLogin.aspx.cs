using System;

namespace MyFirstWebSite
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) // אבחנה האם טעינה ראשונה של הקובץ או לאחר שליחת הטופס
            {
                string queryStr;
                string userMail = Request.Form["userMail"];
                string userPwd = Request.Form["userPwd"];

                //בדיקה האם קיימת רשומה בטבלת המנהלים עם אותם ערכים בשדות דואל וסיסמה
                queryStr = "SELECT * FROM tbl_admin WHERE userMail = '" + userMail + "' AND userPwd = '" + userPwd + "'";
                
                if (SqlDBHelper.IsExist(queryStr))
                {
                    Session["userName"] = "מנהל";
                    Session["Admin"] = true;
                    Response.Redirect("AdminHome.aspx"); //ניתוב לדף הבית
                }
                else //כשלון
                {
                    Response.Redirect("AdminLogin.aspx?code=1");
                }
            }
        }
    }
}