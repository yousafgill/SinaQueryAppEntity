using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SinaQueryAppEntity.Models;

namespace SinaQueryAppEntity.pages
{
    public partial class userProfilePage : System.Web.UI.Page
    {
        sinaDbEnt db = new sinaDbEnt();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("LoginPage.aspx");
                //lblNameId.Text = (String)Session["UserName"];
                //   lblNameId.Text = "Abdullah";
            }
            var pt = (from f in db.UserProfiles select f);
            GridView1.DataSource = pt.ToList();
            GridView1.DataBind();
           
        }

        protected void save_Click(object sender, EventArgs e)
        {
            saveData();
            //   this.GridView1.DataSource.Equals(mySina);
            this.GridView1.DataBind();
           Response.Redirect("..\\admin\\sys_admin_123@sina.aspx");
        }
        protected void search_Click(object sender, EventArgs e)
        {
            if (this.txtNameId.Text != "")
            {
                using (db)
                {
                    GridView1.DataSource = db.UserProfiles.Where(em => em.User_Login == this.txtNameId.Text).ToList();
                    GridView1.DataBind();
                }
            }
            else
            {
                var pt = (from f in db.UserProfiles select f);
                GridView1.DataSource = pt.ToList();
                GridView1.DataBind();
               
            }
        }

        private void saveData()
        {
            UserProfile us = new UserProfile();
            us.User_Login = this.txtNameId.Text;
            us.User_Email = this.txtEmailId.Text;
            us.User_Password = this.txtpwdId.Text;
            us.User_DisplayName = this.txtDisplayNameId.Text;
            db.UserProfiles.Add(us);
            db.SaveChanges();

        }

    }
}