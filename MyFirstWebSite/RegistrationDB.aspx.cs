using MyFirstWebSite;
using System;

public partial class RegistrationDB : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack) // אבחנה האם טעינה ראשונה של הקובץ או לאחר שליחת הטופס
        {
            string queryStr;

            //--- שליפת ערכי השדות מתוך טופס ההרשמה המלא
            string userMail = Request.Form["userMail"];
            string userPwd = Request.Form["userPwd"];
            string userFname = Request.Form["userFname"];
            string userLname = Request.Form["userLname"];
            string userPhone = Request.Form["userPhone"];
            string userBDay = Request.Form["userBDay"];
            string userGender = Request.Form["userGender"];
            string userColors = Request.Form["userColors"];
            string userDistrict = Request.Form["userDistrict"];
            string userComments = Request.Form["userComments"];

            //TODO - add all the fields from the form

            //בדיקה האם קיימת רשומה בטבלה עם אותם שדות מפתח
            queryStr = "SELECT * FROM tbl_users WHERE userMail = '" + userMail + "'"; 
            
            if (SqlDBHelper.IsExist(queryStr))
            {
                //במקרה בו קיימת בבסיס הנתונים רשומה עם אותו שדה מפתח נציג למשתמש הודעת שגיאה
                Response.Redirect("RegistrationDB.aspx?code=1"); //GET
            }
            else
            {
                //ניתן לשמור את פרטי המשתמש בבסים הנתונים
                // לפני שדות שהתוכן שלהם יכול להיות בעברית יש להזין N לפני הגרש הפותח
                queryStr = "INSERT INTO tbl_users ";
                queryStr += "(userMail, userPwd, userFname, userLname, userGender, userDistrict, userBDay, userColors, userPhone, userComments) ";
                queryStr += "VALUES (";
                queryStr += "'" + userMail + "'";
                queryStr += ",'" + userPwd + "'";
                queryStr += ",N'" + userFname + "'";
                queryStr += ",N'" + userLname + "'";
                queryStr += ",'" + userGender + "'";
                queryStr += ",'" + userDistrict + "'";
                queryStr += ",'" + userBDay + "'";
                queryStr += ",'" + userColors + "'";
                queryStr += ",'" + userPhone + "'";
                queryStr += ",N'" + userComments + "'";
                queryStr += ")";

                // ניתוב לדף הבא
                if (SqlDBHelper.ExecuteNonQuery(queryStr))
                {
                    Session["userName"] = userFname;
                    Response.Redirect("HomePage.aspx");
                }
                else // התרחשה שגיאה בזמן השמירה בבסיס הנתונים
                {
                    Response.Redirect("RegistrationDB.aspx?code=2"); //GET
                }
            }
        }
    }
}