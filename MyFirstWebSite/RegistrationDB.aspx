﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeFile="RegistrationDB.aspx.cs" Inherits="RegistrationDB" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table style="width:100%">
        <tr>
            <td><h2>טופס הרשמה עם שמירה לבסיס הנתונים</h2></td>
            <td></td>
        </tr>
        <tr>
            <td style="text-align:center;">[<a href="Registration.aspx">לטופס הרשמה ללא שמירה בבסיס הנתונים</a>]</td>
            <td></td>
        </tr>
        <tr>
            <td>
                <form name="registrationFrm" id="registrationFrm" method="post" onsubmit="return validateForm(true);" onreset="resetErrorMsg();" action="RegistrationDB.aspx" runat="server" >
                    <table>
                            <%
                            if (Request.QueryString["code"] == "1")
                            { %>
                                <tr><td colspan="4" style="color:red;">משתמש בעל אימייל זהה כבר רשום במערכת, אנא נסו שנית</td></tr>
                            <%}
                            %>
                        <tr>
                            <td style="color:red; width:10px;">*</td>
                            <td>כתובת דוא"ל:</td>
                            <td><input type="text" id="userMail" name="userMail" style="direction:ltr;"/></td>
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

            <td style="width:35%">  
                <ul class="stickyNote" style="width:20em; height:20em;">
                    <img src="/images/washi-tape.png" class="stickyTape" style="left:-30px" />
                    <h3>לפני הכל יש לוודא ש:</h3>
                    <table>
                        <tr>
                            <td width="10%"></td>
                            <td>
                                <li>יצרתם תיקיית DB_Services בפרוייקט.</li><br />
                                <li>יצרתם תיקיית App_Data בפרוייקט.</li><br />
                                <li>מיקמתם את הקובץ SqlDBHelper <br />בתיקיית DB_Services.</li><br />
                                <li>מיקמתם את קובץ ה- SQLServer (xxx.mdf) <br />בתיקיית App_Data.</li><br />
                            </td>
                        </tr>
                    </table>
                    
                </ul>
            </td>
        </tr>
    </table>
</asp:Content>

