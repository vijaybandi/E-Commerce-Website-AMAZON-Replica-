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
    public partial class UpdateCategory : System.Web.UI.Page
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

        public void UpdateTheCategory(object sender, EventArgs e)
        {
            ShoppingCart k = new ShoppingCart
            {
                CategoryName = TextBoxUpdatingCategory1.Text,
                CategoryName2 = TextBoxUpdatingCategory2.Text
            };
            k.UpdateCategory();
            TextBoxUpdatingCategory1.Text = string.Empty;
            TextBoxUpdatingCategory2.Text = string.Empty;
            Response.Redirect("~/Admin/UpdateCategory.aspx");
        }




    }
}