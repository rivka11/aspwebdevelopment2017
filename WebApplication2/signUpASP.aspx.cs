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
            var myuserID = System.Web.Security.Membership.GetUser(CreateUserWizard1.UserName).ProviderUserKey;
            //make sure there is no user with that email address
            using (var db = new textbookbasicEntitiesContext())
            {
                var email = (TextBox)(CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Email"));
                string emailadd = email.Text;
                if (db.sellers.Any(y => y.email == emailadd))
                {
                           System.Web.Security.Membership.DeleteUser(CreateUserWizard1.UserName);
                    (CreateUserWizard1.FindControl("complete") as Literal).Text = "there was an error";
                }
                //get data
                var userID = (Guid)myuserID;
                TextBox firstNametxt = CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("firstname") as TextBox;
                TextBox lastNametxt = CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("lastname") as TextBox;
                DropDownList campusd = CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("campus") as DropDownList;

                DropDownList prefContactd = CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("prefcontact") as DropDownList;
                TextBox contactInfotxt = CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("contactinfo") as TextBox;

                if (userID == null || firstNametxt == null || lastNametxt == null || campusd == null || prefContactd == null || contactInfotxt == null)
                {
                    throw new Exception("something didnt casrt right");
                }
                //insert info into database
                db.sellers.Add(
                    new seller()
                    {
                        userID = (Guid)myuserID,
                        firstName = firstNametxt.Text,
                        lastName = lastNametxt.Text,
                        campus = Convert.ToInt32(campusd.SelectedValue),
                        userType = 1,
                        email = emailadd,
                        prefContact = Convert.ToInt32(prefContactd.SelectedValue),
                        contactInfo = contactInfotxt.Text,

                    });

                db.SaveChanges();

            }
        }


        protected void CreateUserWizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            var myuserID= System.Web.Security.Membership.GetUser(CreateUserWizard1.UserName).ProviderUserKey;
            //make sure there is no user with that email address
            using (var db = new textbookbasicEntitiesContext())
            {
                var emailadd = (CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Email") as TextBox).Text;

                if (db.sellers.Any(y => y.email == emailadd))
                {
                    e.Cancel = true;
                    CreateUserWizard1.FinishDestinationPageUrl = String.Empty;
                    System.Web.Security.Membership.DeleteUser(CreateUserWizard1.UserName);
                    (CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("complete") as Literal).Text = "there was an error";
                }
                //get data
                var userID = (Guid)myuserID;
                TextBox firstNametxt = CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("firstname") as TextBox;
                TextBox lastNametxt = CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("lastname") as TextBox;
                DropDownList campusd = CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("campus") as DropDownList;

                DropDownList prefContactd = CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("prefcontact") as DropDownList;
                TextBox contactInfotxt = CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("contactinfo") as TextBox;

                if (userID == null || firstNametxt == null || lastNametxt == null || campusd == null || prefContactd == null || contactInfotxt == null)
                {
                    throw new Exception("something didnt casrt right");
                }


                //insert info into database
                db.sellers.Add(
                    new seller()
                {
                    userID = (Guid)myuserID,
                    firstName = firstNametxt.Text,
                    lastName = lastNametxt.Text,
                    campus = Convert.ToInt32(campusd.SelectedValue),
                    userType = 1,
                    email = emailadd,
                    prefContact = Convert.ToInt32((CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("prefcontact") as DropDownList).SelectedValue),
                    contactInfo = (CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("contactinfo") as Literal).Text,
                   
                    });

                db.SaveChanges();
                
            }
        }

        //before user created check that no user with that email
        protected void CreateUserWizard1_CreatingUser(object sender, LoginCancelEventArgs e)
        {
            using (var db = new textbookbasicEntitiesContext())
            {
                var email = (TextBox)(CreateUserWizard1.CreateUserStep.ContentTemplateContainer.FindControl("Email"));
                if(email == null)
                {
                    throw new Exception();
                }
                string emailadd = email.Text;

                if (db.sellers.Any(y => y.email == emailadd))
                {
                    
                    e.Cancel = true;
                    CreateUserWizard1.FinishDestinationPageUrl = String.Empty;
                   // throw new Exception();
                }
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