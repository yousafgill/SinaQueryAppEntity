using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SinaQueryAppEntity.Models;

namespace SinaQueryAppEntity.pages
{
    public partial class QueryTypePage : System.Web.UI.Page
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
            try{
            saveData();
                status.Visible=true;
                status.Text = "Record Entered";
            }
            catch (Exception exc)

            {
                status.Text = "Failed";
            }
        }

        private void saveData()
        {
            QueryType qt = new QueryType();
            qt.QueryTypeTitle = this.txtTitleId.Text;
            db.QueryTypes.Add(qt);
            db.SaveChanges();

        }
    }
}