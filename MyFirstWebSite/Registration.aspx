<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table style="width:100%">
        <tr>
            <td><h2>טופס הרשמה</h2></td>
            <td></td>
        </tr>
        <tr>
            <td style="text-align:center;">[<a href="RegistrationDB.aspx">לטופס הרשמה עם שמירה בבסיס הנתונים</a>]</td>
            <td></td>
        </tr>
        <tr>
            <td>
                <form name="registrationFrm" id="registrationFrm" method="post" action="mailto:mymail@gmail.com?subject=Registration" enctype="text/plain">
                    <table>
                        <tr>
                            <td>כתובת דוא"ל:</td>
                            <td><input type="text" id="userMail" name="userMail"/></td>
                        </tr>
                        <tr>
                            <td>סיסמה:</td>
                            <td><input type="password" id="userPwd" name="userPwd"/></td>
                        </tr>
                        <tr>
                            <td>שם פרטי:</td>
                            <td><input type="text" id="userFname" name="userFname"/></td>
                        </tr>
                        <tr>
                            <td>שם משפחה:</td>
                            <td><input type="text" id="userLname" name="userLname"/></td>
                        </tr>
                            <tr>
                            <td>מספר טלפון:</td>
                            <td><input type="text" id="userPhone" name="userPhone"/></td>
                        </tr>
                        <tr>
                            <td>תאריך לידה:</td>
                            <td><input type="date" id="userBDay" name="userBDay"/></td>
                        </tr>
                        <tr>
                            <td>מין:</td>
                            <td>
                                <input type="radio" id="male"   name="userGender" value="male" checked/> זכר
                                <input type="radio" id="female" name="userGender" value="female"/> נקבה
                            </td>
                        </tr>
                            <tr>
                            <td>צבעים אהובים:</td>
                            <td>
                                <input type="checkbox" id="black"  name="userColors" value="black"/> שחור
                                <input type="checkbox" id="gray"   name="userColors" value="gray"/> אפור
                                <input type="checkbox" id="white"  name="userColors" value="white"/> לבן
                            </td>
                        </tr>
                            <tr>
                            <td>אזור מגורים:</td>
                            <td>
                                <select name="userDistrict" id="userDistrict">
                                    <option value="choose">בחר</option>
                                    <option value="north">צפון</option>
                                    <option value="center">מרכז</option>
                                    <option value="south">דרום</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>הערות:</td>
                            <td><textarea name="userComments" id="userComments" rows="3"></textarea></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input type="submit" name="regSubmit" id="regSubmit" value="הרשמה"/>
                                <input type="reset"  name="regReset"  id="regReset"  value="נקה שדות"/>
                            </td>
                        </tr>
                    </table>

                </form>
            </td>

            <td style="width:45%"> 
                <ul class="stickyNote">
                    <img src="/images/washi-tape.png" class="stickyTape" />
                    <h3>טופס ההרשמה חייב לכלול את השדות הבאים:</h3>
                    <table>
                        <tr>
                            <td width="10%"></td>
                            <td>
                                <li>שם משתמש</li>
                                <li>סיסמה</li>
                                <li>שם פרטי</li>
                                <li>שם משפחה</li>
                                <li>דוא"ל (יכול גם לשמש כשם משתמש)</li>
                                <li>מספר טלפון (בשדה יחיד)</li>
                                <li>תאריך לידה</li>
                                <li>כפתורי רדיו</li>
                                <li>Checkbox</li>
                                <li>Select</li>
                                <li>Textarea</li>
                                <li>2 כפתורים: Submit + Reset</li>
                            </td>
                        </tr>
                    </table>
                    
                </ul>
            </td>
        </tr>
    </table>
</asp:Content>

