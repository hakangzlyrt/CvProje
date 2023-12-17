using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvPROJE
{
    public partial class UpdateSkills : System.Web.UI.Page
    {
        DBCVENTITYEntitiess db=new DBCVENTITYEntitiess();
        protected void Page_Load(object sender, EventArgs e)
        {
            int findId = int.Parse(Request.QueryString["ID"]);
            if (Page.IsPostBack==false)
            {
                var skills = db.TBLSKİLLS.Find(findId);
                txtUpdateSkills.Text = skills.SKILLS;
            }         
        }

        protected void btnUpdateSkills_Click(object sender, EventArgs e)
        {
            int findId = int.Parse(Request.QueryString["ID"]);
            var skills = db.TBLSKİLLS.Find(findId);
            skills.SKILLS=txtUpdateSkills.Text;
            db.SaveChanges();
            Response.Redirect("Skills.aspx");

        }
    }
}