<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeFile="Javascript.aspx.cs" Inherits="Javascript" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width:100%;">
        <tr>
            <td><br/><h2>טופס הרשמה עם בדיקות ולידציה</h2><br/></td>
            <td></td>
        </tr>
        <tr>
            <td>
                <form name="registrationFrm" id="registrationFrm" method="post" onsubmit="return validateForm();" onreset="resetErrorMsg();" action="mailto:mymail@gmail.com?subject=Registration" enctype="text/plain">
                    <table style="position:fixed; right: 200px; top:250px;">
                        <tr>
                            <td style="color:red; width:10px;">*</td>
                            <td>כתובת דוא"ל:</td>
                            <td><input type="text" id="userMail" name="userMail"/></td>
                            <td style="color:red;" id="userMailErr" class="ErrMsg"></td>
                        </tr>
                        <tr>
                            <td style="color:red; width:10px;">*</td>
                            <td>סיסמה:</td>
                            <td><input type="password" id="userPwd" name="userPwd"/></td>
                            <td style="color:red;"     id="userPwdErr" class="ErrMsg"></td>
                        </tr>
                        <tr>
                            <td style="color:red; width:10px;">*</td>
                            <td>שם פרטי:</td>
                            <td><input type="text" id="userFname" name="userFname"/></td>
                            <td style="color:red;" id="userFnameErr" class="ErrMsg"></td>
                        </tr>
                        <tr>
                            <td style="color:red; width:10px;">*</td>
                            <td>שם משפחה:</td>
                            <td><input type="text" id="userLname" name="userLname"/></td>
                            <td style="color:red;" id="userLnameErr" class="ErrMsg"></td>
                        </tr>
                            <tr>
                            <td style="color:red; width:10px;">*</td>
                            <td>מספר טלפון:</td>
                            <td><input type="text"  id="userPhone" name="userPhone"/></td>
                                <td style="color:red;" id="userPhoneErr" class="ErrMsg"></td>
                        </tr>
                        <tr>
                            <td style="color:red; width:10px;">*</td>
                            <td>תאריך לידה:</td>
                            <td><input type="date" id="userBDay" name="userBDay"/></td>
                            <td style="color:red;" id="userBDayErr" class="ErrMsg"></td>
                        </tr>
                        <tr>
                            <td style="color:red; width:10px;">*</td>
                            <td>מין:</td>
                            <td>
                                <input type="radio" id="male"   name="userGender" value="male" checked/> זכר
                                <input type="radio" id="female" name="userGender" value="female"/> נקבה
                            </td>
                            <td style="color:red;" id="userGenderErr" class="ErrMsg"></td>
                        </tr>
                            <tr>
                            <td></td>
                            <td>צבעים אהובים:</td>
                            <td>
                                <input type="checkbox" id="black"  name="userColors" value="black"/> שחור
                                <input type="checkbox" id="gray"   name="userColors" value="gray"/> אפור
                                <input type="checkbox" id="white"  name="userColors" value="white"/> לבן
                            </td>
                            <td style="color:red;" id="userColorsErr" class="ErrMsg"></td>
                        </tr>
                            <tr>
                            <td></td>
                            <td>אזור מגורים:</td>
                            <td>
                                <select name="userDistrict" id="userDistrict">
                                    <option value="choose">בחר</option>
                                    <option value="north">צפון</option>
                                    <option value="center">מרכז</option>
                                    <option value="south">דרום</option>
                                </select>
                            </td>
                            <td style="color:red;" id="userDistrictErr" class="ErrMsg"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>הערות:</td>
                            <td><textarea name="userComments" id="userComments" rows="3"></textarea></td>
                            <td style="color:red;" id="userCommentsErr" class="ErrMsg"></td>
                        </tr>
                        <tr>
                            <td colspan="4" style="color:red;">* שדות חובה</td>
                        </tr>
                        <tr>
                            <td colspan="2"></td>
                            <td>
                                <input type="submit" name="regSubmit" id="regSubmit" value="הרשמה"/>
                                <input type="reset"  name="regReset"  id="regReset"  value="נקה שדות"/>
                            </td>
                            <td></td>
                        </tr>
                    </table>

                </form>
            </td>

            <td style="width:45%">
                <ul class="stickyNote">
                    <img src="/images/washi-tape.png" class="stickyTape" />
                    <h3>חובה לכלול את בדיקות הולידציה הבאות:</h3>
                    <table>
                        <tr>
                            <td width="10%"></td>
                            <td>
                                <li>כוכביות אדומות לצד שדות שהם שדות חובה</li>
                                <li>הודעות שגיאה מותאמות למהות השגיאה</li>
                                <li>שדה לא ריק</li>
                                <li>השדה מכיל אותיות בלבד</li>
                                <li>השדה מכיל ספרות בלבד</li>
                                <li>מספר טלפון – מורכב מספרות ומקף</li>
                                <li>מספר הטלפון מתחיל בספרה 0</li>
                                <li>דוא"ל – מכיל @ ו- . בתוך המחרוזת ולא בקצוות</li>
                                <li>תאריך – מוגדר כטקסט או תאריך</li>

                                <li>מבנה קוד ה- JS - פונקציה ראשית המזמנת פונקציות משנה</li>
                                <li>הפונקציה הראשית מחזירה true או false</li>
                            </td>
                        </tr>
                    </table>
                    
                </ul>
            </td>
        </tr>
    </table>

</asp:Content>

