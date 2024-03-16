<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="MyFirstWebSite.AdminLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <h2>התחברות מהירה - מנהל אתר</h2>
    <br />
        <div class="center" style="width: 25%;">

        <div class="box" >
            
            <form name="AdminLoginFrm" id="AdminLoginFrm" method="post" action="AdminLogin.aspx" runat="server" >
                <table border="0" style="width:100%; border-spacing:5px;">
                    <tr>
                        <td>
                            <h2>Admin Login <img src="/Images/login.png" height="18" width="20"/></h2>
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
                        <td>&emsp;&emsp;&emsp;<label style="color:red; width:10px;">* </label>שם משתמש:</td>
                    </tr>
                    <tr>
                        <td>&emsp;&emsp;&emsp;<input type="text" id="userMail" name="userMail" value="admin"/></td>
                    </tr>
                    <tr>
                        <td>&emsp;&emsp;&emsp;<label style="color:red; width:10px;">* </label>סיסמה:</td>
                    </tr>
                    <tr>
                        <td>&emsp;&emsp;&emsp;<input type="password" id="userPwd" name="userPwd" value="admin"/></td>
                    </tr>
                    <tr>
                        <td style="text-align:center;"><br />
                            <input type="submit" name="loginSubmit" id="loginSubmit" value="התחבר"/>
                            <input type="reset"  name="loginReset"  id="loginReset"  value="נקה טופס"/>
                        </td>
                    </tr>
                </table>
            </form>

        </div>
    </div>
</asp:Content>
