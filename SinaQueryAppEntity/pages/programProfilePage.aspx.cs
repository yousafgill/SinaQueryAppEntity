using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SinaQueryAppEntity.Models;

namespace SinaQueryAppEntity.pages
{

    public partial class programProfilePage : System.Web.UI.Page
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
            catch (Exception exc)
            {
                status.Text = "Failed";
            }
        }

        private void saveDataEntity()
        {
            ProgramProfile pg = new ProgramProfile();
            pg.ProgramTitle = this.txtPgTitleId.Text;
            pg.ProgramDescription = this.txtPgDesId.Text;
            db.ProgramProfiles.Add(pg);
            db.SaveChanges();
        }

        protected void txtPgTitleId_TextChanged(object sender, EventArgs e)
        {

        }


    }
}