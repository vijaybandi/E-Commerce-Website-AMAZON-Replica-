using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MyAmazon.BusinessLayer;

namespace MyAmazon
{
    public partial class CustomerLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginCustomer(object sender, EventArgs e)
        {
            ShoppingCart k = new ShoppingCart
            {
                Emailing = EmailLogin.Text,
                Pwd1 = PasswordLogin.Text
             
            };


            k.CheckingLogin();

            EmailLogin.Text = string.Empty;
            PasswordLogin.Text = string.Empty;

            Response.Redirect("~/Default.aspx");

        }


    }
}