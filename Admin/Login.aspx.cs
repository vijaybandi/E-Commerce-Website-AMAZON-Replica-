using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;



namespace MyAmazon.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtloginid.Focus();
        }


        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string LoginID = WebConfigurationManager.AppSettings["AdminLoginID"];
            string Password = WebConfigurationManager.AppSettings["AdminPassword"];

            if (txtloginid.Text == LoginID && txtpassword.Text == Password)
            {
                Session["MyAmazon Admin"] = "MyAmazon Admin";
                Response.Redirect("~/Admin/AddNewProducts.aspx");
               // Response.Redirect("~/Admin/Login.aspx");
                
            }
            else
            {
                lblAlert.Text = "Incorrect Login/Password";
            }
        }
    }
}