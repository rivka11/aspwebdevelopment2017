using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress(Email.Text);
            msg.To.Add("textbookgemachtouro@gmail.com");
            msg.Subject = List.Text;
            msg.Body = "From:<br />" + Name.Text + "<br />" + Email.Text + "<br /><br /><br />Message:<br />" + Details.Text;
            msg.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            System.Net.NetworkCredential NetworkCred = new System.Net.NetworkCredential();
            NetworkCred.UserName = "textbookgemachtouro@gmail.com";
            NetworkCred.Password = "textbook";
            smtp.UseDefaultCredentials = false;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.EnableSsl = true;
            try
            {
                smtp.Send(msg);
                HttpCookie nameCookie = new HttpCookie("name");
                nameCookie.Value = Name.Text;
                //expire in a day
                nameCookie.Expires = DateTime.Now.AddDays(1);

                Response.Cookies.Add(nameCookie);
          
            }
            catch (Exception)
            {
                Response.Redirect("error.aspx");
            }

            Response.Redirect("EmailConfirm.aspx");

        }
    }
}