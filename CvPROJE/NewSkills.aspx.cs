using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvPROJE
{
    public partial class NewSkills : System.Web.UI.Page
    {
        DBCVENTITYEntitiess db=new DBCVENTITYEntitiess();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSaveSkills_Click(object sender, EventArgs e)
        {
            TBLSKİLLS tblskills=new TBLSKİLLS();
            tblskills.SKILLS=txtSkills.Text;
            db.TBLSKİLLS.Add(tblskills);
            db.SaveChanges();
            Clear();
            Response.Redirect("Skills.aspx");
        }

        public void Clear()
        {
            txtSkills.Text = string.Empty;

        }
    }
}