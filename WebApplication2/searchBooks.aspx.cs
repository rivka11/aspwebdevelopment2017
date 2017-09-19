using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class searchBooks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void ListView1_SelectedIndexChanged(Object sender, EventArgs e)
        {
       // ListView1.Items = 
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if(searchBox.Text == "")
            {
                //dont do anything
            }
            else
            {
                using (var db = new textbookbasicEntitiesContext())
                {
                    ListView1.DataSource = db.sellers.ToList();
                    ListView1.DataBind();
                }

            
            }
          
        }
    }
}