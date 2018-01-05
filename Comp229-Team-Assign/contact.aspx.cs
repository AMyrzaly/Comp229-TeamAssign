using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Comp229_Team_Assign
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Set email user name - Change this as per your settings
            const string username = "testuser@googlemail.com";
            //Set the email password - Change this as per your settings
            const string password = "xxxxxxxxx";
            SmtpClient smtpclient = new SmtpClient();
            System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
            //Set the email from address of mail message -  Change this as per your settings
            MailAddress fromaddress = new MailAddress("testuser@googlemail.com");
            //Set the email smtp host -  Change this as per your settings
            smtpclient.Host = "smtp.gmail.com";
            //Set the email client port -  Change this as per your settings
            smtpclient.Port = 587;
            mail.From = fromaddress;
            //Adding email id of receiver link
            mail.To.Add("testuser@googlemail.com");
            //Set the email subject
            mail.Subject = ("Test Subject");
            mail.IsBodyHtml = true;
            //Set the email body - Change this as per your logic
            mail.Body = "This is test Mail";
            smtpclient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpclient.Credentials = new System.Net.NetworkCredential(username, password);
            try
            {
                //Sending Email
                smtpclient.Send(mail);
                Response.Write("<B>Email Has been sent successfully.</B>");
            }
            catch (Exception ex)
            {
                //Catch if any exception occurs
                Response.Write(ex.Message);
            }
        }
    }
}