using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class addBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addBook_button_Click(object sender, EventArgs e)
        {
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
                    }
                    //check if file extension is not one of above (you can rename extension so do other check first)
                   else if (Path.GetExtension(FileUpload1.PostedFile.FileName).ToLower() != ".jpg"
                          && Path.GetExtension(FileUpload1.PostedFile.FileName).ToLower() != ".png"
                          && Path.GetExtension(FileUpload1.PostedFile.FileName).ToLower() != ".gif"
                          && Path.GetExtension(FileUpload1.PostedFile.FileName).ToLower() != ".jpeg")
                    {
                        //ERROR
                    }
                    
                    using(var db = new textbookContext())
                    {

                    }

                    var path = "~/img/books/" + Path.GetFileName(FileUpload1.PostedFile.FileName);
                    FileUpload1.SaveAs(Server.MapPath("~/img/books/" +
                        Path.GetFileName(FileUpload1.PostedFile.FileName)));

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
          
        }

       
    }
}