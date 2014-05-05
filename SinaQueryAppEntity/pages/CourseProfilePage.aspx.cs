using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SinaQueryAppEntity.Models;

namespace SinaQueryAppEntity.pages
{
    public partial class CourseProfilePage : System.Web.UI.Page
    {
        sinaDbEnt db = new sinaDbEnt();

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

        protected void save_Click(object sender, EventArgs e)
        {
            try
            {
                saveDataEntity();
                status.Visible = true;
                status.Text = "Record Entered";

            }
            catch(Exception exc)
            {
                status.Text = "Failed";
            }
        }

        private void saveDataEntity ()
        {
            
            int ddpgtID = int.Parse(ddPgId.SelectedValue.ToString());
            CourseProfile cp = new CourseProfile();
            cp.CourseTitle = this.txtTitleId.Text;
            cp.CourseDescription = this.txtDesId.Text;
            cp.CourseProgramId = ddpgtID;
            db.CourseProfiles.Add(cp);
            db.SaveChanges();

            

        }

    }
}