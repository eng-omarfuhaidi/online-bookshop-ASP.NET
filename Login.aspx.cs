using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBookShope
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            BookShopEntities bookShop = new BookShopEntities();
            if (bookShop.users.Count(u => u.Username == TextUserName.Text && u.Password == TextBoxPassword.Text) == 1)
            {
                Session["User_id"] = bookShop.users.First(u => u.Username == TextUserName.Text && u.Password == TextBoxPassword.Text).User_id;
                Response.Redirect("Order.aspx");
            }
            else Labelinvalidlogin.Visible = true;
        }
    }
}