using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SinaQueryAppEntity.Models;

namespace SinaQueryAppEntity.pages
{
    public partial class LoginPage : System.Web.UI.Page
    {
        sinaDbEnt db = new sinaDbEnt();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserName"] != null)
            {

                Response.Redirect("userPage.aspx");
            }
        }

        protected void UserLogin_Click(object sender, EventArgs e)
        {
            Session["UserName"] = null;

            string login = null;
            int userid = 0;
            login = (from c in db.UserProfiles where c.User_Login == this.txtlogId.Text && c.User_Password == this.txtLpwdId.Text select c.User_DisplayName).FirstOrDefault();
            userid= (from c in db.UserProfiles where c.User_DisplayName == this.txtlogId.Text && c.User_Password == this.txtLpwdId.Text select c.Id).FirstOrDefault();


            if (login != null)
            {
                if (this.txtlogId.Text == "admin")
                {
                    Session["UserName"] = "Welcome " + login;
                    Session["loginName"] = "admin";
                    Session["UserId"] = userid;
                 
                     Response.Redirect("..\\admin\\sys_admin_123@sina.aspx");
                   // errormsg.Text = "Admin";

                }
                else
                {
                    Session["UserName"] = "Welcome " + login;
                    
                    Session["loginName"] = null;
                    Session["UserId"] = userid;
                    Response.Redirect("userPage.aspx");
                    // errormsg.Text = "Success";
                }

            }
            else
            {
                errormsg.Visible = true;
                errormsg.Text = "Login Failed Check User Name And password";

            }

        }



    }
}