using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvPROJE
{
    public partial class MessageDetails_ : System.Web.UI.Page
    {
        DBCVENTITYEntitiess db=new DBCVENTITYEntitiess();
        protected void Page_Load(object sender, EventArgs e)
        {
            int findId = int.Parse(Request.QueryString["ID"]);  
            var message=db.TBLCONTACT.Find(findId);
            txtNameSurname.Text = message.NAMESURNAME;
            txtMail.Text = message.MAIL;
            txtSubject.Text = message.SUBJECT;
            txtMessage.Text = message.MESSAGE;
            //db.SaveChanges();

        }
    }
}