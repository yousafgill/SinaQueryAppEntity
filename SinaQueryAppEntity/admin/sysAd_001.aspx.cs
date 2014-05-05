using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SinaQueryAppEntity.Models;
namespace SinaQueryAppEntity.admin
{
    public partial class sysAd_001 : System.Web.UI.Page
    {
        sinaDbEnt db = new sinaDbEnt();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AdminLogin_Click(object sender, EventArgs e)
        {
            Session["UserName"] = null;

            string login = null;

            login = (from c in db.UserProfiles where c.User_Login == this.txtlogId.Text && c.User_Password == this.txtLpwdId.Text select c.User_DisplayName).FirstOrDefault();


            if (login != null)
            {

                Session["UserName"] = "Welcome " + login;
                Response.Redirect("userPage.aspx");
                // errormsg.Text = "Success";

            }
            else
            {
                errormsg.Visible = true;
                errormsg.Text = "Login Failed Check User Name And password";

            }

        }

    }
}