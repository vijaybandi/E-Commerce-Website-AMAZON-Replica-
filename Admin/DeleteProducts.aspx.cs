using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using MyAmazon.BusinessLayer;

namespace MyAmazon.Admin
{
    public partial class DeleteProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetProducts(0);

            }
        }

        private void GetProducts(int CategoryID)
        {
            ShoppingCart k = new ShoppingCart()
            {
                CategoryID = CategoryID
            };
            gvAvailableProducts.DataSource = null;
            gvAvailableProducts.DataSource = k.GetAllProducts();
            gvAvailableProducts.DataBind();

        }

        public void DeleteTheProduct(object sender, EventArgs e)
        {
            ShoppingCart k = new ShoppingCart
            {
                ProductName = TextBoxDeletingProducts.Text
            };
            k.DeleteProduct();
            TextBoxDeletingProducts.Text = string.Empty;
            Response.Redirect("~/Admin/DeleteProducts.aspx");
        }

    }
}