using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvPROJE
{
    public partial class NewExperiences : System.Web.UI.Page
    {
        DBCVENTITYEntitiess db = new DBCVENTITYEntitiess();
        protected void Page_Load(object sender, EventArgs e)
        {
            int findId = int.Parse(Request.QueryString["ID"]);
            if (Page.IsPostBack == false)
            {
                var experiences = db.TBLABOUTME.Find(findId);
                txtUpdateExperiences.Text = experiences.WORKEXPERIENCES;
            }
        }

        

        
        protected void btnUpdateExperiences_Click(object sender, EventArgs e)
        {
            int findId = int.Parse(Request.QueryString["ID"]);
            var experiences = db.TBLABOUTME.Find(findId);
            experiences.WORKEXPERIENCES = txtUpdateExperiences.Text;
            db.SaveChanges();
            Response.Redirect("Experiences.aspx");
        }
    }
}