using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SinaQueryAppEntity.pages
{
    public partial class searchQuery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {

            }
            else
            {
                Response.Redirect("LoginPage.aspx");
            }
        }

     
        protected void search_Click(object sender, EventArgs e)
        {

        }
    }
}