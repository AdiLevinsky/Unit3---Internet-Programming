using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWebSite
{
    public partial class AdminEditUser : System.Web.UI.Page
    {
        public string edit;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Admin"] != null) // הדף זמין רק למנהל האתר
            {
                if (!IsPostBack) // במקרה הנ"ל מדובר על טעינה ראשונה
                {
                    // שאילת הנתונים
                    string userMail = Request.Form["userMail"];
                    string userPwd = Request.Form["userPwd"];
                    string userFname = Request.Form["userFname"];
                    string userLname = Request.Form["userLname"];
                    string userPhone = Request.Form["userPhone"];
                    string userGender = Request.Form["userGender"];
                    string userColors = Request.Form["userColors"];
                    string userDistrict = Request.Form["userDistrict"];

                    // הגדרת הטופס
                    edit = "<form name='updateForm' method='post' onsubmit='return validateForm(false)' action='AdminUpdateUser.aspx' runat='server'>";
                    edit += "<table style='width: 100%;border-spacing: 5px;'>";
                    edit += "<tr>";
                    edit += "<td style='color: red; width: 10px;'> *</td>";
                    edit += "<td style='width: 15%;'>כתובת דוא\"ל:</td>";
                    edit += "<td><input type='text' id='userMail' name='userMail' value='" + userMail + "' class='inputToLabelLarge' style='font-weight:bold;' readonly/></td>";
                    edit += "<td style='color:red;' id='userMailErr' class='ErrMsg'></td>";
                    edit += "</tr>";

                    edit += "<tr>";
                    edit += "<td style='color: red; width: 10px;'> *</td>";
                    edit += "<td>סיסמה:</td>";
                    edit += "<td><input type='password' id='userPwd' name='userPwd' value='" + userPwd + "'/>&nbsp;&nbsp;";
                    edit += "<img src='Images/show.png' id='showHidePwd' onclick='togglePassword(this)' width='23' height='23' style='vertical-align:bottom;'/></td>";
                    edit += "<td style='color:red;' id='userPwdErr' class='ErrMsg'></td>";
                    edit += "</tr>";

                    edit += "<tr>";
                    edit += "<td style='color: red; width: 10px;'> *</td>";
                    edit += "<td>שם פרטי:</td>";
                    edit += "<td><input type='text' id='userFname' name='userFname' value='" + userFname + "'/></td>";
                    edit += "<td style='color:red;' id='userFnameErr' class='ErrMsg'></td>";
                    edit += "</tr>";

                    edit += "<tr>";
                    edit += "<td style='color: red; width: 10px;'> *</td>";
                    edit += "<td>שם משפחה:</td>";
                    edit += "<td><input type='text' id='userLname' name='userLname' value='" + userLname + "'/></td>";
                    edit += "<td style='color:red;' id='userLnameErr' class='ErrMsg'></td>";
                    edit += "</tr>";

                    edit += "<tr>";
                    edit += "<td style='color: red; width: 10px;'> *</td>";
                    edit += "<td>מספר טלפון:</td>";
                    edit += "<td><input type='text' id='userPhone' name='userPhone' value='" + userPhone + "'/></td>";
                    edit += "<td style='color:red;' id='userPhoneErr' class='ErrMsg'></td>";
                    edit += "</tr>";

                    edit += "<tr>";
                    edit += "<td style='color: red; width: 10px;'> *</td>";
                    edit += "<td>מין:</td>";
                    edit += "<td>";
                    edit += "<input type='radio' id='male'   name='userGender' value='male'  " + IsChecked(userGender, "male") + "/> זכר";
                    edit += "<input type='radio' id='female' name='userGender' value='female'" + IsChecked(userGender, "female") +"/> נקבה";
                    edit += "</td></tr>";

                    edit += "<tr>";
                    edit += "<td></td>";
                    edit += "<td>צבעים אהובים:</td>";
                    edit += "<td>";
                    edit += "<input type='checkbox' id='black'  name='userColors' value='black' " + IsCBChecked("black", userColors) + "/> שחור";
                    edit += "<input type='checkbox' id='gray'   name='userColors' value='gray'  " + IsCBChecked("gray", userColors) + "/> אפור";
                    edit += "<input type='checkbox' id='white'  name='userColors' value='white' " + IsCBChecked("white", userColors) + "/> לבן";
                    edit += "</td><td style='color: red;' id='userColorsErr' class='ErrMsg'></td></tr>";

                    edit += "<tr>";
                    edit += "<td></td>";
                    edit += "<td>אזור מגורים:</td>";
                    edit += "<td>";
                    edit += "<select name='userDistrict' id='userDistrict'>";
                    edit += "<option value='choose'" + IsSelected(userDistrict, "choose") + ">בחר</option>";
                    edit += "<option value='north' " + IsSelected(userDistrict, "north") + ">צפון</option>";
                    edit += "<option value='center'" + IsSelected(userDistrict, "center") + ">מרכז</option>";
                    edit += "<option value='south' " + IsSelected(userDistrict, "south") + ">דרום</option>";
                    edit += "</select></td>";
                    edit += "<td style='color:red;' id='userDistrictErr' class='ErrMsg'></td>";
                    edit += "</tr>";

                    edit += "<tr>";
                    edit += "<td colspan='4' style='color:red;'>* שדות חובה<br/></td>";
                    edit += "</tr>";

                    edit += "<tr>";
                    edit += "<td colspan='2'></td>";
                    edit += "<td>";
                    edit += "<input type='submit' name='submit_update' id='regSubmit' value='עדכן'/>&nbsp;&nbsp;";
                    edit += "<input type='button' value='חזור' onclick='window.history.back();'>";
                    edit += "</td><td></td></tr>";

                    edit += "</table>";
                    edit += "</form>";
                }
                else // כניסה לא תקינה לדף העדכון - אין שדה מפתח דואל
                {
                    Response.Redirect("AdminHome.aspx");
                }
            }
            else // משתמש לא מורשה
            {
                Response.Redirect("AdminHome.aspx"); 
            }
        }

        private string IsSelected(string distrinct, string currentValue)
        {
            if (currentValue == distrinct)
                return " selected";
            return "";
        }

        private string IsChecked(string gender, string currentValue)
        {
            if (currentValue == gender)
                return " checked";
            return "";
        }

        private string IsCBChecked(string color, string savedColors)
        {
            if (savedColors.IndexOf(color) != -1)
                return " checked";
            return "";
        }
    }
}