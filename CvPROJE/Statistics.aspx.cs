using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvPROJE
{
    public partial class Statistics : System.Web.UI.Page
    {
        DBCVENTITYEntitiess db=new DBCVENTITYEntitiess();
        protected void Page_Load(object sender, EventArgs e)
        {
            txtSkillCount.Text=db.TBLSKİLLS.Count().ToString();
            txtMessageCount.Text=db.TBLCONTACT.Count().ToString();
            //txtSkillAvg.Text=(int)db.TBLSKİLLS.Average(x=> x.RATING).ToString();
            var average = db.TBLSKİLLS.Average(x => x.RATING);
            txtSkillAvg.Text = ((int)average).ToString();

            //txtMaxSkillsRating.Text = db.TBLSKİLLS.Max(x=>x.RATING).ToString();
            var maxSkillRating=db.TBLSKİLLS.OrderByDescending(x=> x.RATING).FirstOrDefault();
            if (maxSkillRating != null)
            {
                txtMaxSkillsRating.Text = $"{maxSkillRating.SKILLS} - {maxSkillRating.RATING}";
            }
            else
            {
                // Eğer hiç yetenek yoksa veya değer null ise "N/A" yazdırabilirsiniz
                txtMaxSkillsRating.Text = "NULL";
            }





        }

    }
}