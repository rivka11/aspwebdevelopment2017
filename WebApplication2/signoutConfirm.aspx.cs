using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class signoutConfirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (this.Page.User.Identity.IsAuthenticated)
                {
                    FormsAuthentication.SignOut();
                    Session.Clear();
                    Response.Redirect("default.aspx");
                }
                else
                {
                    //BIG ERROR how did they get to this page? typed it into browser?
                    throw new Exception();
                }
            }
            catch (Exception)
            {
                //user was null?
            }
        }
    }
}