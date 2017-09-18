﻿using System;
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
            if (System.Web.Security.Membership.ValidateUser(Login1.UserName, Login1.Password))
            {
                // Log the user into the site
                FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
            }
            //there was an error. You are NOT logged in!
        }
    }
}