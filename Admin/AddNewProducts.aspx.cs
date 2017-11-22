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
    public partial class AddNewProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                GetCategories();
                AddSubmitEvent();
                if (Request.QueryString["alert"]=="success")
                {
                    Response.Write("<script>alert('Record Saved Successfully.');</script>");
                
                }
            }
        }


        private void AddSubmitEvent() {
            UpdatePanel updatePanel = Page.Master.FindControl("AdminUpdatePanel") as UpdatePanel;
            UpdatePanelControlTrigger trigger = new PostBackTrigger();
            trigger.ControlID = btnSubmit.UniqueID;

            updatePanel.Triggers.Add(trigger);
        
        }

        private void GetCategories()
        {
            ShoppingCart k = new ShoppingCart();
            DataTable dt = k.GetCategories();
            if (dt.Rows.Count > 0)
            {
                ddlCategory.DataValueField = "CategoryID";
                ddlCategory.DataTextField = "CategoryName";
                ddlCategory.DataSource = dt;
                ddlCategory.DataBind();
            }
        }
        private void ClearText()
        {
            txtProductName.Text = string.Empty;
            txtProductPrice.Text = string.Empty;
            txtProductDescription.Text = string.Empty;
            txtProductQuantity.Text = string.Empty;
        }


        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
                if (uploadProductPhoto.PostedFile != null)
                {
                    SaveProductPhoto();
                ShoppingCart k = new ShoppingCart()
                {
                ProductName = txtProductName.Text,
                ProductImage = "~/ProductImages/" + uploadProductPhoto.FileName, 
                ProductPrice = txtProductPrice.Text,
                ProductDescription = txtProductDescription.Text,
                CategoryID = Convert.ToInt32(ddlCategory.SelectedValue),
                TotalProducts=Convert.ToInt32(txtProductQuantity.Text)
                };
                k.AddNewProduct();
                //Alert.Show("Record Saved Successfully");
                ClearText();

                Response.Redirect("~/Admin/AddNewProducts.aspx?alert=success");
                }
        else
        {
            Response.Write("<script>alert('Please Upload Photo.');</script>");
        }
        
        }


        private void SaveProductPhoto()
        {
            if (uploadProductPhoto.PostedFile != null)
            {
                string filename = uploadProductPhoto.PostedFile.FileName.ToString();
                string fileExt = System.IO.Path.GetExtension(uploadProductPhoto.FileName);

                //check file name legnth 
                if (filename.Length > 96)
                {
                    //Alert.Show("image name should not exceed 96 characters !a);
                }


        //check filetype
                else if (fileExt != ".jpeg" && fileExt != ".jpg" && fileExt != ".png" && fileExt != ".bmp")
                {
                    //Alert.Show("Only jpeg,jpg,bmp 8 png imags are allowed!");
                }
                //check file size
                else if (uploadProductPhoto.PostedFile.ContentLength > 4000000)
                {
                    //Alert.Show('image size should not be greater than 4M8 !");
                }
                else
                //Save images into Images folder else
                {
                    uploadProductPhoto.SaveAs(Server.MapPath("~/ProductImages/" + filename));

                }

            }


        }
    }

}