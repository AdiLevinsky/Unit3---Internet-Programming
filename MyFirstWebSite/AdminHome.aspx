<%@ Page Title="" Language="C#" MasterPageFile="~/MyMasterPage.master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="MyFirstWebSite.AdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div style="width:90%; right: 100px; position:fixed;">
        <br />
        <h2>פרטי המשתמשים הרשומים לאתר</h2>
        <h3>סינון תוצאות חיפוש לפי:</h3>
        <form name ="search" method="post" action="AdminHome.aspx" runat="server">
            <table>
                <tr>
                    <td>
                        <label style="font-weight:bold;">מין:</label>
                        <input type="radio" id="male"   name="userGender" value="male"/> זכר
                        <input type="radio" id="female" name="userGender" value="female"/> נקבה
                    </td>
                    <td style="width:15%;"></td>
                    <td>
                        <label style="font-weight:bold;">אזור מגורים:</label>
                        <select name="userDistrict" id="userDistrict">
                            <option value="choose">בחר</option>
                            <option value="north">צפון</option>
                            <option value="center">מרכז</option>
                            <option value="south">דרום</option>
                        </select>
                    </td>
                    <td style="width:10%;"></td>
                    <td>
                        <input type="submit" name="submitSearch" id="submitSearch" value="סנן"/>
                    </td>
                </tr>

            </table>
        </form>
        <br /><hr />

        <%if(Request.QueryString["code"] == "1") { %>
            <div style="color:red;">התרחשה שגיאה בעת הניסיון לעדכן את בסיס הנתונים, אנא בדקו ותקנו אותה</div>
        <%} else if(Request.QueryString["code"] == "2") { %>
            <div style="color:red;">התרחשה שגיאה בעת הניסיון למחוק רשומה מבסיס הנתונים, אנא בדקו ותקנו אותה</div>
        <%}%>

        <div style="height:25em;overflow-y: scroll;">
            <%=adm %>   
        </div>
    </div>
    
</asp:Content>
