using OnlineBookShope.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace OnlineBookShope.Models
{
    public class CartItem
    {
        public CartItem() { }

        public CartItem(Book book, int quantity)
        {
            this.book = book;
            this.Quantity = quantity;
        }

        public Book book { get; set; }
        public int Quantity { get; set; }

        public void AddQuantity(int quantity)
        {
            this.Quantity += quantity;
        }

        public string Display()
        {
            string displayString = string.Format("{0} ({1} at {2})",
                book.Name,
                Quantity.ToString(),
                book.UnitPrice.ToString("c")
            );
            return displayString;
        }
    }
}