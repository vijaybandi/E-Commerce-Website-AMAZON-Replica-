using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace MyAmazon.Admin
{
    public partial class AdminMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["MyAmazon Admin"] == null)
            {
               Response.Redirect("~/Admin/Login.aspx");
            }


        }

        protected void lblLogo_Click(object sender, EventArgs e)
        {
            if (Session["MyAmazon Admin"] != null)
            {
                Response.Redirect("~/Admin/AddNewProducts.aspx");
            }

        }
    }
}