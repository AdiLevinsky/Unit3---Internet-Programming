using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstWebSite
{
    public partial class MembersOnly : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if((string)Session["userName"] == "אורח")
            {
                Response.Redirect("Result.aspx?code=3");
            }
        }
    }
}