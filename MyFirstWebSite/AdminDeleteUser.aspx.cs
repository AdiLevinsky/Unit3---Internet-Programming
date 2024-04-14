using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWebSite
{
    public partial class AdminDeleteUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] != null) // הדף זמין רק למנהל האתר
            {
                string email = Request.QueryString["userMail"]; // שליפת הדואר האלקטרוני ב- GET

                if (email != null) // הפרמטר של האימייל לא עבר מסיבה כלשהי
                {
                    // בניית שאילתת מחיקת המשתמש
                    string queryStr = "DELETE FROM tbl_users WHERE userMail='" + email + "'";

                    // ניתוב לדף הבא
                    if (SqlDBHelper.ExecuteNonQuery(queryStr))
                        Response.Redirect("AdminHome.aspx"); 
                    else // התרחשה שגיאה בזמן המחיקה מבסיס הנתונים
                        Response.Redirect("AdminHome.aspx?code=2"); //GET
                }
                
            }
            else // אם המנהל לא מחובר
                Response.Redirect("Login.aspx"); // הפנייה לדף
        }
    }
}