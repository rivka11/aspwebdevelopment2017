﻿using System;
using System.IO;
using System.Web.Security;

using System.Security.Claims;


namespace WebApplication2
{
    public partial class addBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage();
            }
        }

        protected void addBook_button_Click(object sender, EventArgs e)
        {
            string path = null;
            string shortpath = null;

            if (FileUpload1.HasFile)
            //file is up to 4mb
            {//make sure file is image and in right format
                try
                {//check content is image
                    if (FileUpload1.PostedFile.ContentType.ToLower() != "image/jpg" &&
                        FileUpload1.PostedFile.ContentType.ToLower() != "image/jpeg" &&
                        FileUpload1.PostedFile.ContentType.ToLower() != "image/gif" &&
                        FileUpload1.PostedFile.ContentType.ToLower() != "image/png")
                    {
                        //ERROR
                        throw new Exception("not image");
                    }
                    //check if file extension is not one of above (you can rename extension so do other check first)
                    else if (Path.GetExtension(FileUpload1.PostedFile.FileName).ToLower() != ".jpg"
                           && Path.GetExtension(FileUpload1.PostedFile.FileName).ToLower() != ".png"
                           && Path.GetExtension(FileUpload1.PostedFile.FileName).ToLower() != ".gif"
                           && Path.GetExtension(FileUpload1.PostedFile.FileName).ToLower() != ".jpeg")
                    {
                        //ERROR
                        throw new Exception("not an image");
                    }

                    path = Server.MapPath("~/img/books/")+
                        Path.GetFileName(FileUpload1.PostedFile.FileName);
                   shortpath = "~/img/books/" + Path.GetFileName(FileUpload1.PostedFile.FileName);
                    FileUpload1.SaveAs(path);

                    Label1.Text = "File name: " +
                        path + "<br/>" +
                         FileUpload1.PostedFile.ContentLength + " kb<br/>" +
                         "Content type: " +
                         FileUpload1.PostedFile.ContentType;


                }
                catch (Exception ex)
                {
                    Label1.Text = "ERROR: " + ex.Message.ToString();
                }
            }
            else
            {
                Label1.Text = "You have not specified a file.";

            }
         

            using (var db = new textbookbasicEntitiesContext())
            {
                var currUser = (Guid)(System.Web.Security.Membership.GetUser().ProviderUserKey);
                int x;
                db.books.Add(new book()
                {
                    ISBN = isbn.Text,
                    Title = titletb.Text,
                    Author = author.Text,
                    //allowed to have null
                    Edition = Int32.TryParse(edition.Text, out x)? (int?)x:null,
                    imageurl = shortpath ?? "~/img/books/na.jpg",
                    sellerID = currUser
                }
                );


              //  try
              //  {

                    db.SaveChanges();
                Response.Redirect("searchBooks.aspx");
              //  }
              //  catch(Exception o)
              //  {

              //  }
            }



        }


    }
}