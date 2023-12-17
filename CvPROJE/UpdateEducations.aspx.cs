using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvPROJE
{
    public partial class UpdateEducations : System.Web.UI.Page
    {
        DBCVENTITYEntitiess db=new DBCVENTITYEntitiess();
        protected void Page_Load(object sender, EventArgs e)
        {
            int findId = int.Parse(Request.QueryString["ID"]);
            if (Page.IsPostBack == false)
            {
                var educations = db.TBLABOUTME.Find(findId);
                txtUpdateEducations.Text = educations.EDUCATIONS;
            }
        }

        protected void btnUpdateEducations_Click(object sender, EventArgs e)
        {
            int findId = int.Parse(Request.QueryString["ID"]);
            var educations = db.TBLABOUTME.Find(findId);
            educations.EDUCATIONS = txtUpdateEducations.Text;
            db.SaveChanges();
            Response.Redirect("Educations.aspx");
        }
    }
}