using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SinaQueryAppEntity.Models;
using System.Data.Objects;
using System.Data.Entity;

using System.Collections.Specialized;
using System.Data;
namespace SinaQueryAppEntity.admin
{
    public partial class updateMain : System.Web.UI.Page
    {
        sinaDbEnt db = new sinaDbEnt();
        int QId;


        protected void Page_Load(object sender, EventArgs e)
        {

            NameValueCollection n = Request.QueryString;
            if (n.HasKeys())
            {
                string k = n.GetKey(0);
                if (k == "Id")
                {
                    string v = n.Get("Id");
                    //    var user = n.Get("UserId");

                    QId = int.Parse(v);

                    if (!Page.IsPostBack == true)     //remember to use it with care else will generate bugs...
                    {

                        GetRecordsById(int.Parse(v));
                    }
                }
            }
        }

        protected void save_Click(object sender, EventArgs e)
        {
            try
            {
                //SqlDataSource1.DataBind();
                updateData();
                //error.Visible = true;
                //error.Enabled = true;
                //error.Text = "Record Updated";
                Response.Redirect("sys_admin_123@sina.aspx");
            }
            catch (Exception exc)
            {
                error.Text = "failed";
            }
        }



        #region Fill Form with Records
        private void GetRecordsById(int Id)
        {

            QueryMain qm = db.QueryMains.FirstOrDefault(m => m.Id == Id);
            var userids = (from c in db.UserProfiles where c.Id == qm.QueryUser select c.Id).FirstOrDefault();

            // dduser.SelectedValue = qm.QueryUser.ToString;
            txtNameId.Text = qm.PersonName;
            txtFNameId.Text = qm.FatherName;
            //txtdob.Text = DateTime.Parse(qm.DateOfBirth.ToString()).ToShortDateString();
            Qdate.Text = DateTime.Parse(qm.QueryDate.ToString()).ToShortDateString();
            txtCellNoId.Text = qm.CellNo;
            txtDesigId.Text = qm.Designation;
            txtEMailId.Text = qm.EmailAddress;
            txtGradeId.Text = qm.Grade;
            txtLandId.Text = qm.LandLineNo;
            txtorg.Text = qm.Organization;
            txtQCommentId.Text = qm.QueryComment;
            var selectUser = qm.QueryUser;
            UserProfile um = db.UserProfiles.FirstOrDefault(m => m.Id == selectUser);

            lblusername.Text = um.User_DisplayName;

        }

        #endregion

        private void updateData()
        {



            QueryMain qm = db.QueryMains.Find(QId);
            var user = qm.QueryUser;
            int ddP = int.Parse(ddProgram.SelectedValue.ToString());
            int ddQ = int.Parse(ddQtype.SelectedValue.ToString());
            int ddqu = int.Parse(ddqualification.SelectedValue.ToString());
            int ddC = int.Parse(ddCourse.SelectedValue.ToString());
            int ddcatValue = int.Parse(ddcat.SelectedValue.ToString());
            //    int dduserID = int.Parse(dduser.SelectedValue.ToString());
            DateTime QD = DateTime.Parse(Qdate.Text.ToString(), null);
            //DateTime DOB = DateTime.Parse(txtdob.Text.ToString(), null);
            qm.QueryDate = QD;
            qm.PersonName = txtNameId.Text;
            qm.FatherName = txtFNameId.Text;
            qm.EmailAddress = txtEMailId.Text;
            qm.CellNo = txtCellNoId.Text;
            qm.LandLineNo = txtLandId.Text;
            //qm.DateOfBirth = DOB;
            qm.Grade = txtGradeId.Text;
            qm.Organization = txtorg.Text;
            qm.Designation = txtDesigId.Text;
            qm.QualificationId = ddqu;
            qm.ProgramId = ddP;
            qm.CourseId = ddC;
            qm.CategoryId = ddcatValue;
            qm.QueryTypeId = ddQ;
            qm.QueryUser = user;
            qm.QueryComment = txtQCommentId.Text;
            db.QueryMains.Attach(qm);
            db.Entry(qm).State = EntityState.Modified;
            db.SaveChanges();


        }
    }
}