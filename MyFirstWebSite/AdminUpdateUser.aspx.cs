using System;

namespace MyFirstWebSite
{
    public partial class AdminUpdateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] != null) // הדף זמין רק למנהל האתר
            {
                if (!IsPostBack) // במקרה הנ"ל מדובר על טעינה ראשונה
                {
                    // שליפת נתונים מהטופס
                    string userMail = Request.Form["userMail"];
                    string userPwd = Request.Form["userPwd"];
                    string userFname = Request.Form["userFname"];
                    string userLname = Request.Form["userLname"];
                    string userPhone = Request.Form["userPhone"];
                    string userGender = Request.Form["userGender"];
                    string userColors = Request.Form["userColors"];
                    string userDistrict = Request.Form["userDistrict"];

                    // יצירת שאילתת העדכון
                    // שימו N לפני שדות שערכיהם יכולים להיות בעברית
                    string queryStr = "UPDATE tbl_users SET";
                    queryStr += "  userFname=N'"     + userFname     + "'";
                    queryStr += ", userLname=N'"     + userLname     + "'";
                    queryStr += ", userPwd='"        + userPwd       + "'";
                    queryStr += ", userDistrict='"   + userDistrict  + "'";
                    queryStr += ", userGender='"     + userGender    + "'";
                    queryStr += ", userPhone='"      + userPhone     + "'";
                    queryStr += ", userColors='"     + userColors    + "'";
                    queryStr += " WHERE userMail='"  + userMail      + "'";

                    SqlDBHelper.ExecuteNonQuery(queryStr);

                    Response.Redirect("AdminHome.aspx");// הפנייה לדף
                }
            }
            else // אם המנהל לא מחובר
                Response.Redirect("AdminLogin.aspx"); // הפנייה לדף
        }
    }
}