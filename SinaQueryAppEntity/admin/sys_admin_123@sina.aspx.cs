using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SinaQueryAppEntity.Models;
namespace SinaQueryAppEntity.admin
{
    public partial class sys_admin_123_sina : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                Tab1.CssClass = "Clicked";
                MainView.ActiveViewIndex = 0;
            }



        }

        protected void Tab1_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Clicked";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            Tab6.CssClass = "Initial";
            Tab7.CssClass = "Initial";
            MainView.ActiveViewIndex = 0;
        }

        protected void Tab2_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Clicked";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            Tab6.CssClass = "Initial";
            Tab7.CssClass = "Initial";
            MainView.ActiveViewIndex = 1;
        }

        protected void Tab3_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Clicked";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            Tab6.CssClass = "Initial";
            Tab7.CssClass = "Initial";
            MainView.ActiveViewIndex = 2;
        }
        protected void Tab4_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Clicked";
            Tab5.CssClass = "Initial";
            Tab6.CssClass = "Initial";
            Tab7.CssClass = "Initial";
            MainView.ActiveViewIndex = 3;
        }
        protected void Tab5_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Clicked";
            Tab6.CssClass = "Initial";
            Tab7.CssClass = "Initial";
            MainView.ActiveViewIndex = 4;
        }
        protected void Tab6_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            Tab6.CssClass = "Clicked";
            Tab7.CssClass = "Initial";
            MainView.ActiveViewIndex = 5;
        }
        protected void Tab7_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            Tab6.CssClass = "Initial";
            Tab7.CssClass = "Clicked";
            MainView.ActiveViewIndex = 6;
        }

       


        protected void gvMainForm_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

            // Get the datakey of the selected row
            var id = Convert.ToInt32(gvMainForm.DataKeys[e.NewSelectedIndex].Value);
            // Redirect to second page
            Response.Redirect("updateMain.aspx?Id=" + id);
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {



        }

        protected void search_click(object sender, EventArgs e)
        {

        }

    

       

      
    }
}