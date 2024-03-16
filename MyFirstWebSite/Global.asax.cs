using System;

namespace MyFirstWebSite
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            //איפוס מונה המבקרים עם עליית השרת של האפליקציה
            Application["counter"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["userName"] = "אורח";
            Session["admin"] = false;
            Application["counter"] = (int)Application["counter"] + 1; // הגדלת מונה המבקרים ב- 1
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Session["userName"] = "אורח";
            Session["admin"] = false;
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}