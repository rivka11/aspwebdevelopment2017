using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class LoginASP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //should I sign out a user if one is signed in?
               // FormsAuthentication.SignOut();
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            Login mylogin= (Login)LoginView1.FindControl("Login1");
            if (System.Web.Security.Membership.ValidateUser(mylogin.UserName, mylogin.Password))
            {
                // Log the user into the site
                FormsAuthentication.RedirectFromLoginPage(mylogin.UserName, mylogin.RememberMeSet);
            }
            //there was an error. You are NOT logged in!
        }
    }
}