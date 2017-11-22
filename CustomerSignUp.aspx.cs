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
    public partial class CustomerSignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitBtn(object sender, EventArgs e)
        {
            ShoppingCart k = new ShoppingCart
            {
                FirstName = FName.Text,
                LastName = LName.Text,
                Pwd1=          Password1.Text ,
                Pwd2=    Password2.Text,
                Emailing =  Email1.Text,
                DateofBirth = DOB1.Text ,
           

            };

            if (Male.Checked)
            {
                k.Gender = "M";
             
            }
            else
            {
                k.Gender = "F";
               
            }


            k.AddingCustomer();

            FName.Text = string.Empty;
            LName.Text = string.Empty;
            Password1.Text = string.Empty;
            Password2.Text = string.Empty;
            Email1.Text = string.Empty;
            DOB1.Text = string.Empty;
            Male.Checked = false;
            Female.Checked = false;

            Response.Redirect("~/CustomerLogin.aspx");

        }

        protected void ResetBtn(object sender, EventArgs e)
        {
            FName.Text = string.Empty;
            LName.Text = string.Empty;
            Password1.Text = string.Empty;
            Password2.Text = string.Empty;
            Email1.Text = string.Empty;
            DOB1.Text = string.Empty;
            Male.Checked=false;
            Female.Checked = false;


        }


    }
}