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

        protected void Prerender(object sender, EventArgs e)
        {
            using (var db = new textbookbasicEntitiesContext())
            {

                if (searchBox.Text != "")
                {
                    ListView2.DataSource = db.books.Where(v => v.ISBN.Contains(searchBox.Text) || v.Title.Contains(searchBox.Text)).ToList();
                   
                }
                else
                {
                    ListView2.DataSource = db.books.ToList();
                    
                }
                ListView2.DataBind();
            }
        }

        protected void ListView1_SelectedIndexChanged(Object sender, EventArgs e)
        {
            // ListView1.Items = 
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Prerender(sender, e);

        }

        protected void ListView1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}