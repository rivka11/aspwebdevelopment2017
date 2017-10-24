using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class myAddedBooks : System.Web.UI.Page
    {
        Guid currUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            if((HttpContext.Current.User == null) || !HttpContext.Current.User.Identity.IsAuthenticated)
            {
                Response.Redirect("LoginASP.aspx");
            }

            currUser = (Guid)(System.Web.Security.Membership.GetUser().ProviderUserKey);
            SqlDataSource1.SelectParameters["sellerID"].DefaultValue = currUser.ToString();
        }
    }
}