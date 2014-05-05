using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SinaQueryAppEntity.Models;
namespace SinaQueryAppEntity.pages
{
    public partial class mainForm : System.Web.UI.Page
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
            if (IsPostBack)
            {
                
                return;
            }
           
        }


        protected void save_Click(object sender, EventArgs e)
        {
            try
            {

                saveData();
                error.Visible = true;
                error.Enabled = true;
                error.Text = "Record Entered";
              
                this.txtCellNoId.Text = null;
                this.txtDesigId.Text = null;
                this.txtQCommentId.Text = null;
                this.txtGradeId.Text = null;
                this.txtFNameId.Text = null;
                this.txtEMailId.Text = null;
                this.txtNameId.Text = null;
                this.txtLandId.Text = null;
                this.txtorg.Text = null;

            }

            catch
            {
                
                Response.Write("<script>alert('Entry Failed! Please Try Again')</script>");
            }
        }

        private void saveData()
        {
            int ddP = int.Parse(ddProgram.SelectedValue.ToString());
            int ddQ = int.Parse(ddQtype.SelectedValue.ToString());
            int ddqu = int.Parse(ddqualification.SelectedValue.ToString());
            int ddC = int.Parse(ddCourse.SelectedValue.ToString());
            int ddcatValue = int.Parse(ddcat.SelectedValue.ToString());
            //int dduserID = int.Parse(dduser.SelectedValue.ToString());
            QueryMain qm = new QueryMain();
            DateTime QD = DateTime.Parse(this.Qdate.Text.ToString(), null);
            //DateTime DOB = DateTime.Parse(this.txtdob.Text.ToString(), null);
            qm.Designation = this.txtDesigId.Text;
            qm.LandLineNo = this.txtLandId.Text;
            qm.QueryComment = this.txtQCommentId.Text;
            qm.Grade = this.txtGradeId.Text;
            qm.FatherName = this.txtFNameId.Text;
            qm.EmailAddress = this.txtEMailId.Text;
            qm.CellNo = this.txtCellNoId.Text;
            qm.Organization = this.txtorg.Text;
            //qm.DateOfBirth = DOB;
            qm.QueryDate = QD;
            qm.QueryTypeId = ddQ;
            qm.QualificationId = ddqu;
            qm.CourseId = ddC;
            qm.ProgramId = ddP;
            qm.CategoryId = ddcatValue;
            qm.QueryUser = Int32.Parse(((int)Session["UserId"]).ToString());
            qm.PersonName = this.txtNameId.Text;
            db.QueryMains.Add(qm);
            db.SaveChanges();
        }

        protected void ddProgram_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddCourse.Focus();
        }

       



    }
}