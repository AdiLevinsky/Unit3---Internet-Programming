<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyFirstWebSite.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <h2>התחברות מהירה</h2>
    <br />
    
    <div class="center" style="width: 18%;">

        <div class="box">
            
            <form name="loginFrm" id="loginFrm" method="post" action="Login.aspx" runat="server">
                <table border="0" style="width:100%; border-spacing:5px;">
                    <tr>
                        <td>
                            <h2>Login <img src="/Images/login.png" height="18" width="20"/></h2>
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td>
                             <%
                            if(Request.QueryString["code"] == "1")
                            { %>
                                &emsp;<label style="color:red;">ההתחברות נכשלה. אנא נסה שנית</label><br />
                            <%}%>
                        </td>
                    </tr>
                    <tr>
                        <td>&emsp;&emsp;&emsp;<label style="color:red; width:10px;">* </label>כתובת דוא"ל:</td>
                    </tr>
                    <tr>
                        <td>&emsp;&emsp;&emsp;<input type="text" id="userMail" name="userMail" style="direction:ltr;"/></td>
                    </tr>
                    <tr>
                        <td>&emsp;&emsp;&emsp;<label style="color:red; width:10px;">* </label>סיסמה:</td>
                    </tr>
                    <tr>
                        <td>&emsp;&emsp;&emsp;<input type="password" id="userPwd" name="userPwd" style="direction:ltr;"/></td>
                    </tr>
                    <tr>
                        <td style="text-align:center;"><br />
                            <input type="submit" name="loginSubmit" id="loginSubmit" value="התחבר"/>
                            <input type="reset"  name="loginReset"  id="loginReset"  value="נקה טופס"/>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align:center; font-size:small;"><br />
                            עוד לא נרשמת לאתר? <a href="RegistrationDB.aspx">הרשם עכשיו</a>!
                        </td>
                    </tr>
                </table>
            </form>

        </div>
    </div>
</asp:Content>
