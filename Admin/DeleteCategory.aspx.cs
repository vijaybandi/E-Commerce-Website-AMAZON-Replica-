using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MyAmazon.BusinessLayer;

using System.Data;


namespace MyAmazon.Admin
{
    public partial class DeleteCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCategories();

            }
        }
        private void GetCategories()
        {
            ShoppingCart k = new ShoppingCart();
            DataTable dt = k.GetCategories();
            if (dt.Rows.Count > 0)
            {
                gvAvailableCategories.DataSource = dt;
                gvAvailableCategories.DataBind();

            }

        }

        public void DeleteTheCategory(object sender, EventArgs e)
        {
            ShoppingCart k = new ShoppingCart
            {
                CategoryName = TextBoxDeletingCategory.Text
            };
            k.DeleteCategory();
            TextBoxDeletingCategory.Text = string.Empty;
            Response.Redirect("~/Admin/DeleteCategory.aspx");
        }

        
    }
}