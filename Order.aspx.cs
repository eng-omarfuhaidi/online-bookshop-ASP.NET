using OnlineBookShope.Model;
using OnlineBookShope.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBookShope
{
    public partial class Order : System.Web.UI.Page

    {
        private Book selectedProduct;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["User_id"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            BookShopEntities bookShop = new BookShopEntities();
            int User_id = (int)Session["User_id"];
            users usr = bookShop.users.First(u => u.User_id == User_id);
            LblOwner.Text = usr.Ownername;

            //bind drop-down list on first load   
            if (!IsPostBack) ddlProducts.DataBind();

            //get and show product on every load
            selectedProduct = this.GetSelectedProduct();
            lblName.Text = selectedProduct.Name;
            lblShortDescription.Text = selectedProduct.ShortDescription;
            lblLongDescription.Text = selectedProduct.LongDescription;
            lblUnitPrice.Text = selectedProduct.UnitPrice.ToString("c") + " each";
           imagebook.ImageUrl = "Images/Books/" + selectedProduct.ImageFile;


            Image1.ImageUrl = "Images/Books/logo.jpg";
        }

        private Book GetSelectedProduct()
        {
            //get row from SqlDataSource based on value in drop-down list
            DataView productsTable = (DataView)
                SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            productsTable.RowFilter =
                "BookID = '" + ddlProducts.SelectedValue + "'";
            DataRowView row = productsTable[0];

            //create a new product object and load with data from row
            Book p = new Book();
            p.BookID = row["BookID"].ToString();
            p.Name = row["Name"].ToString();
            p.ShortDescription = row["ShortDescription"].ToString();
            p.LongDescription = row["LongDescription"].ToString();
            p.UnitPrice = (decimal)row["UnitPrice"];
            p.ImageFile = row["ImageFile"].ToString();
            return p;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                //get cart from session and selected item from cart
                CartItemList cart = CartItemList.GetCart();
                CartItem cartItem = cart[selectedProduct.BookID];

                //if item isn’t in cart, add it; otherwise, increase its quantity
                if (cartItem == null)
                {
                    cart.AddItem(selectedProduct,
                                 Convert.ToInt32(txtQuantity.Text));
                }
                else
                {
                    cartItem.AddQuantity(Convert.ToInt32(txtQuantity.Text));
                }
                Response.Redirect("Cart.aspx", false);
            }
        }
    }
}