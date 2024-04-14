using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace MyFirstWebSite
{
    public partial class AdminEditUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] != null) // הדף זמין רק למנהל האתר
            {
                if (!IsPostBack) // טעינה ראשונה של הדף
                {
                    FirstRender();
                }
                else // לחיצה על כפתור ה- submit
                {
                    UpdateUserData();
                }
            }
            else // משתמש לא מורשה
            {
                Response.Redirect("Login.aspx"); 
            }
        }

        private void FirstRender()
        {
            // שליפת הנתונים
            string uMail = Request.Form["userMail"];
            string uFname = Request.Form["userFname"];
            string uLname = Request.Form["userLname"];
            string uPhone = Request.Form["userPhone"];
            string uGender = Request.Form["userGender"];
            string uColors = Request.Form["userColors"];
            string uDistrict = Request.Form["userDistrict"];

            // שתילת הערכים בתוך שדות טופס העדכון
            userMail.Value = uMail;
            userFname.Value = uFname;
            userLname.Value = uLname;
            userPhone.Value = uPhone;
            userMail.Value = uMail;

            // סימון כפתור הרדיו הבחור
            if (uGender == "male")
                male.Checked = true;
            else if (uGender == "female")
                female.Checked = true;

            // סימון תיבות הסימון checkbox
            string[] colors = uColors.Split(',');
            for (int i = 0; i < colors.Length; i++)
            {
                if (colors[i] == "white")
                    white.Checked = true;
                else if (colors[i] == "gray")
                    gray.Checked = true;
                else if (colors[i] == "black")
                    black.Checked = true;
            }

            // סימון הבחירה ברשימה הנפתחת select
            // סימון האפשרות הבחורה לפי האינדקס - המיקום של האפשרות בקוד
            //1-north, 2-center, 3-south
            if (uDistrict == "north")
                userDistrict.SelectedIndex = 1;
            else if (uDistrict == "center")
                userDistrict.SelectedIndex = 2;
            else if (uDistrict == "south")
                userDistrict.SelectedIndex = 3;
        }

        private void UpdateUserData()
        {
            string uGender = "male", uDistrict = "", uColors = "";
            
            // טיפול בערך כפתורי הרדיו לשמירה
            if (female.Checked)
                uGender = "female";

            // טיפול בערך רשימת ה- select הבחור
            if (userDistrict.SelectedIndex == 1)
                uDistrict = "north";
            else if (userDistrict.SelectedIndex == 2)
                uDistrict = "center";
            else if (userDistrict.SelectedIndex == 3)
                uDistrict = "south";

            // טיפול בערכי תיבות הסימון שנבחרו - checkbox
            if (white.Checked && uColors == "") uColors += "white";
            else if (white.Checked && uColors != "") uColors += ",white";
            
            if (gray.Checked && uColors == "") uColors += "gray";
            else if (gray.Checked && uColors != "") uColors += ",gray";
            
            if (black.Checked && uColors == "") uColors += "black";
            else if (black.Checked && uColors != "") uColors += ",black";

            // יצירת שאילתת העדכון
            // שימו N לפני שדות שערכיהם יכולים להיות בעברית
            string queryStr = "UPDATE tbl_users SET";
            queryStr += "  userFname=N'" + userFname.Value + "'";
            queryStr += ", userLname=N'" + userLname.Value + "'";
            queryStr += ", userDistrict='" + uDistrict + "'";
            queryStr += ", userGender='" + uGender + "'";
            queryStr += ", userPhone='" + userPhone.Value + "'";
            queryStr += ", userColors='" + uColors + "'";
            queryStr += " WHERE userMail='" + userMail.Value + "'";

            // ניתוב לדף הבא
            if (SqlDBHelper.ExecuteNonQuery(queryStr))
                Response.Redirect("AdminHome.aspx");
            else // התרחשה שגיאה בזמן עדכון בסיס הנתונים
                Response.Redirect("AdminHome.aspx?code=1"); //GET
        }

    }
}