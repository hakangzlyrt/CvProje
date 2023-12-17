using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvPROJE
{

    public partial class DeleteSkills : System.Web.UI.Page
    {
        DBCVENTITYEntitiess db=new DBCVENTITYEntitiess();
        protected void Page_Load(object sender, EventArgs e)
        {
            int findId = Convert.ToInt32(Request.QueryString["ID"]);
            var skills=db.TBLSKİLLS.Find(findId);
            db.TBLSKİLLS.Remove(skills);
            db.SaveChanges();
            Response.Redirect("Skills.aspx");
        }
    }
}