using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyAmazon.Admin
{
    public partial class OrderDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             if (!string.IsNullOrEmpty(Request.QueryString["Id"]))
            {
            string TransactionNo = Request.QueryString["Id"];
            ucCustomerOrder1.TransactionNoText = TransactionNo;
            }
             if (!string.IsNullOrEmpty(Convert.ToString(Session["MYAMAZON ADMIN"])))
            {
                ucCustomerOrder1.IsAuthorizedToAddStatus = true;
            }
            else
            {
                ucCustomerOrder1.IsAuthorizedToAddStatus= false;
                Response.Redirect("~/Admin/login.aspx");
            }

            
        }


        protected void btnClear_Click(object sender, EventArgs e)
        {

            Response.Redirect("~/Admin/OrderDetails.aspx");
        }

        
    }
}







