using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CvPROJE
{
    public partial class Default : System.Web.UI.Page
    {
        DBCVENTITYEntitiess db=new DBCVENTITYEntitiess();
        protected void Page_Load(object sender, EventArgs e)
        {
            Repeater1.DataSource = db.TBLABOUTME.ToList();
            Repeater1.DataBind();

            Repeater2.DataSource=db.TBLABOUTME.ToList();
            Repeater2.DataBind();

            Repeater3.DataSource=db.TBLABOUTME.ToList();
            Repeater3.DataBind();

            Repeater4.DataSource=db.TBLSKİLLS.ToList();
            Repeater4.DataBind();
        }

        public void Clear()
        {
            txtNameSurname.Text = string.Empty;
            txtEmail.Text=string.Empty;
            txtSubject.Text=string.Empty;
            txtMessage.Text=string.Empty;
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Clear();
        }

        protected void btnSendMessage_Click(object sender, EventArgs e)
        {
            TBLCONTACT tblcontact = new TBLCONTACT(); 
            tblcontact.NAMESURNAME = txtNameSurname.Text; 
            tblcontact.MAIL = txtEmail.Text; 
            tblcontact.SUBJECT = txtSubject.Text; 
            tblcontact.MESSAGE = txtMessage.Text; 
            db.TBLCONTACT.Add(tblcontact); 
            db.SaveChanges(); 
            Clear();
        }
    }
}