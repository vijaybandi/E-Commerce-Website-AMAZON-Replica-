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
    public partial class Product : System.Web.UI.Page
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
                ShoppingCart k=new ShoppingCart()
                {
                       CategoryID=CategoryID
                };
                gvAvailableProducts.DataSource = null;
                gvAvailableProducts.DataSource = k.GetAllProducts();
                gvAvailableProducts.DataBind();
        
        }
    }
}