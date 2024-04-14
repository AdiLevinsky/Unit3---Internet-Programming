<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeBehind="AdminEditUser.aspx.cs" Inherits="MyFirstWebSite.AdminEditUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br /><br />
    <h2>עדכון פרטי משתמש רשום</h2>
    <br />

    <div class="box center" style="width: 23em; height:21em;">

        <form name="updateForm" method="post" action="AdminEditUser.aspx" runat="server" >
            <table style="width: 100%;border-spacing: 5px;">
                <tr>
                    <td style="color: red; width: 10px;"> *</td>
                    <td style="width: 35%;">כתובת דוא"ל:</td>
                    <td><input type="text" id="userMail" name="userMail" class="inputToLabelLarge" style="font-weight:bold;" readonly runat="server"/></td>
                    <td style="color:red;" id="userMailErr" class="ErrMsg"></td>
                </tr>

                <tr>
                    <td style="color: red; width: 10px;"> *</td>
                    <td>שם פרטי:</td>
                    <td><input type="text" id="userFname" name="userFname" runat="server"/></td>
                    <td style="color:red;" id="userFnameErr" class="ErrMsg"></td>
                </tr>

                <tr>
                    <td style="color: red; width: 10px;"> *</td>
                    <td>שם משפחה:</td>
                    <td><input type="text" id="userLname" name="userLname" runat="server"/></td>
                    <td style="color:red;" id="userLnameErr" class="ErrMsg"></td>
                </tr>

                <tr>
                    <td style="color: red; width: 10px;"> *</td>
                    <td>מספר טלפון:</td>
                    <td><input type="text" id="userPhone" name="userPhone" runat="server"/></td>
                    <td style="color:red;" id="userPhoneErr" class="ErrMsg"></td>
                </tr>

                <tr>
                    <td style="color: red; width: 10px;"> *</td>
                    <td>מין:</td>
                    <td>
                        <input type="radio" id="male"   name="userGender" value="male"   runat="server"/> זכר
                        <input type="radio" id="female" name="userGender" value="female" runat="server"/> נקבה
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td>צבעים אהובים:</td>
                    <td>
                        <input type="checkbox" id="black"  name="userColors" value="black" runat="server"/> שחור
                        <input type="checkbox" id="gray"   name="userColors" value="gray"  runat="server"/> אפור
                        <input type="checkbox" id="white"  name="userColors" value="white" runat="server"/> לבן
                    </td>
                    <td style="color: red;" id="userColorsErr" class="ErrMsg"></td>
                </tr>

                <tr>
                    <td></td>
                    <td>אזור מגורים:</td>
                    <td>
                    <select name="userDistrict" id="userDistrict" runat="server">
                        <option value="choose">בחר</option>
                        <option value="north" >צפון</option>
                        <option value="center">מרכז</option>
                        <option value="south" >דרום</option>
                    </select></td>
                    <td style="color:red;" id="userDistrictErr" class="ErrMsg"></td>
                </tr>

                <tr>
                    <td colspan="4" style="color:red;">* שדות חובה<br/></td>
                </tr>

                <tr>
                    <td colspan="2"></td>
                    <td>
                    <input type="submit" name="submit_update" id="submit_update" value="עדכן" />&nbsp;&nbsp;
                    <input type="button" value="חזור" onclick="window.history.back();">
                    </td>
                    <td></td>
                </tr>
            </table>
        </form>
    </div>

</asp:Content>
