using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication2
{
    public partial class signUpASP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
        {
            //check if user witg
        }


        protected void CreateUserWizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            var myuserID= System.Web.Security.Membership.GetUser(CreateUserWizard1.UserName).ProviderUserKey;
            //make sure there is no user with that email address
            using (var db = new textbookbasicEntitiesContext())
            {
                var email = (CreateUserWizard1.FindControl("Email") as Literal).Text;
                
                if (db.sellers.Any(y => y.email == email))
                {
                    e.Cancel = true;
                    CreateUserWizard1.FinishDestinationPageUrl = String.Empty;
                    System.Web.Security.Membership.DeleteUser(CreateUserWizard1.UserName);
                    (CreateUserWizard1.FindControl("complete") as Literal).Text = "there was an error";
                }

                //insert info into database
                db.sellers.Add(
                    new seller()
                {
                    userID = (Guid)myuserID,
                    firstName = (CreateUserWizard1.FindControl("firstname") as Literal).Text,
                    lastName = (CreateUserWizard1.FindControl("lastname") as Literal).Text,
                    campus = Convert.ToInt32((CreateUserWizard1.FindControl("campus") as DropDownList).SelectedValue),
                    userType = 1,
                    email = (CreateUserWizard1.FindControl("Email") as Literal).Text,
                    prefContact = Convert.ToInt32((CreateUserWizard1.FindControl("prefcontact") as DropDownList).SelectedValue),
                    contactInfo = (CreateUserWizard1.FindControl("contactinfo") as Literal).Text,
                   
                    });

                db.SaveChanges();
                
            }
        }

        protected void CreateUserWizard1_FinishButtonClick(object sender, LoginCancelEventArgs e)
        {
            var myuserID = System.Web.Security.Membership.GetUser(CreateUserWizard1.UserName).ProviderUserKey;
            //make sure there is no user with that email address
            using (var db = new textbookbasicEntitiesContext())
            {
                var email = (CreateUserWizard1.FindControl("Email") as Literal).Text;

                if (db.sellers.Any(y => y.email == email))
                {
                    e.Cancel = true;
                    CreateUserWizard1.FinishDestinationPageUrl = String.Empty;
                }

                //insert info into database
                db.sellers.Add(
                    new seller()
                    {
                        userID = (Guid)myuserID,
                        firstName = (CreateUserWizard1.FindControl("firstname") as Literal).Text,
                        lastName = (CreateUserWizard1.FindControl("lastname") as Literal).Text,
                        campus = Convert.ToInt32((CreateUserWizard1.FindControl("campus") as DropDownList).SelectedValue),
                        userType = 1,
                        email = (CreateUserWizard1.FindControl("Email") as Literal).Text,
                        prefContact = Convert.ToInt32((CreateUserWizard1.FindControl("prefcontact") as DropDownList).SelectedValue),
                        contactInfo = (CreateUserWizard1.FindControl("contactinfo") as Literal).Text,

                    });

                db.SaveChanges();

            }

        }
    }
}