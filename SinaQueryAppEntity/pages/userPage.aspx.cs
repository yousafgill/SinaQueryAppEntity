using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SinaQueryAppEntity.pages
{
    public partial class userPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                lblNameId.Text = (String)Session["UserName"];
             
            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }
    }
}