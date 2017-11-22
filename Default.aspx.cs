using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading;
using System.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MyAmazon.BusinessLayer;
using System.Data.SqlClient;
using System.IO;
using System.Web.Configuration;

namespace MyAmazon
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblCategoryName.Text = "Popular Products at MY AMAZON";
                GetCategory();
                GetProducts(0);//Get ALL Products
               // SetImageUrl();
            }
            lblAvailableStockAlert.Text = string.Empty;
        }

        private void GetCategory()
        {
            ShoppingCart k = new ShoppingCart();
            dlCategories.DataSource = null;
            dlCategories.DataSource = k.GetCategories();
            dlCategories.DataBind();

        }

        private void GetProducts(int CategoryID)
        {
            ShoppingCart k = new ShoppingCart();

            k.CategoryID = CategoryID;
            dlProducts.DataSource = null;
            dlProducts.DataSource = k.GetAllProducts();
            dlProducts.DataBind();

        }

        protected void lbtnCategory_Click(object sender, EventArgs e)
        {
            pnlMyCart.Visible = false;
            pnlProducts.Visible = true;
            int CategoryID = Convert.ToInt16((((LinkButton)sender).CommandArgument));
            GetProducts(CategoryID);
            HighlightCartProducts();
        }

        protected void lblLogo_Click(object sender, EventArgs e)
        {
            lblCategoryName.Text = "Popular Products At Amazon";
            lblProducts.Text = "Products";
            pnlCategories.Visible = true;
            pnlProducts.Visible = true;
            pnlMyCart.Visible = false;
            pnlCheckOut.Visible = false;
            pnlEmptyCart.Visible = false;
            pnlOrderPlacedSuccessfully.Visible = false;
            GetProducts(0);
            HighlightCartProducts();
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {

            string ProductID = Convert.ToInt16((((Button)sender).CommandArgument)).ToString();
            string ProductQuantity = "1";
            DataListItem currentItem = (sender as Button).NamingContainer as DataListItem;
            Label lblAvailableStock = currentItem.FindControl("lblAvailableStock") as Label;

            if (Session["MyCart"] != null)
            {
                DataTable dt = (DataTable)Session["MyCart"];
                var checkProdcut = dt.AsEnumerable().Where(r => r.Field<string>("ProductID") == ProductID);

                if (checkProdcut.Count() == 0)
                {

                    string query = "select * from Products where ProductID=" + ProductID + "";

                    DataTable dtProducts = GetData(query);

                    DataRow dr = dt.NewRow();
                    dr["ProductID"] = ProductID;
                    dr["Name"] = Convert.ToString(dtProducts.Rows[0]["Name"]);
                    dr["Description"] = Convert.ToString(dtProducts.Rows[0]["Description"]);
                    dr["Price"] = Convert.ToString(dtProducts.Rows[0]["Price"]);
                    dr["ImageUrl"] = Convert.ToString(dtProducts.Rows[0]["ImageUrl"]);
                    dr["ProductQuantity"] = ProductQuantity;
                    dr["AvailableStock"] = lblAvailableStock.Text;
                    dt.Rows.Add(dr);
                    Session["MyCart"] = dt;
                    btnShoppingHeart.Text = dt.Rows.Count.ToString();
                }
            }
            else
            {
                string query = "select * from Products where ProductID=" + ProductID + "";
                DataTable dtProducts = GetData(query);
                DataTable dt = new DataTable();

                dt.Columns.Add("ProductID", typeof(string));
                dt.Columns.Add("Name", typeof(string));
                dt.Columns.Add("Description", typeof(string));
                dt.Columns.Add("Price", typeof(string));
                dt.Columns.Add("ImageUrl", typeof(string));
                dt.Columns.Add("ProductQuantity", typeof(string));
                dt.Columns.Add("AvailableStock", typeof(string));

                DataRow dr = dt.NewRow();

                dr["ProductID"] = ProductID;
                dr["Name"] = Convert.ToString(dtProducts.Rows[0]["Name"]);
                dr["Description"] = Convert.ToString(dtProducts.Rows[0]["Description"]);
                dr["Price"] = Convert.ToString(dtProducts.Rows[0]["Price"]);
                dr["ImageUrl"] = Convert.ToString(dtProducts.Rows[0]["ImageUrl"]);
                dr["ProductQuantity"] = ProductQuantity;
                dr["AvailableStock"] = lblAvailableStock.Text;
                dt.Rows.Add(dr);
                Session["MyCart"] = dt;
                btnShoppingHeart.Text = dt.Rows.Count.ToString();

            }

            HighlightCartProducts();
        }

        public DataTable GetData(string query)
        {

            DataTable dt = new DataTable();
            string conn = WebConfigurationManager.ConnectionStrings["MyConn"].ConnectionString;
            SqlConnection con = new SqlConnection(conn);
            con.Open();

            SqlDataAdapter da = new SqlDataAdapter(query, con);
            da.Fill(dt);
            con.Close();
            return dt;
        }

        private void HighlightCartProducts()
        {
            if (Session["MyCart"] != null)
            {
                DataTable dtProductsAddedToCart = (DataTable)Session["MyCart"];

                if (dtProductsAddedToCart.Rows.Count > 0)
                {

                    foreach (DataListItem item in dlProducts.Items)
                    {

                        HiddenField hfProductID = item.FindControl("hfProductID") as HiddenField;

                        if (dtProductsAddedToCart.AsEnumerable().Any(row => hfProductID.Value == row.Field<String>("ProductID")))
                        {
                            //item.BackColor	System.Drawing.Color.Red;
                            Button btnAddToCart = item.FindControl("btnAddToCart") as Button;
                            btnAddToCart.BackColor = System.Drawing.Color.Green;
                            btnAddToCart.Text = "Added To Cart";
                            Image imgGreenStar = item.FindControl("imgStar") as Image;
                            imgGreenStar.Visible = true;

                        }
                    }
                }
            }
        }

        protected void btnShoppingHeartClick(object sender, EventArgs e)
        {
            GetMyCart();

            lblCategoryName.Text = "Products in Your Chopping Cart";
            lblProducts.Text = "Customer Details";
        }

        private void GetMyCart()
        {
            DataTable dtProducts;

            if (Session["MyCart"] != null)
            {
                dtProducts = (DataTable)Session["MyCart"];
            }
            else
            {
                dtProducts = new DataTable();
            }
            if (dtProducts.Rows.Count > 0)
            {
                txtTotalProducts.Text = dtProducts.Rows.Count.ToString();
                btnShoppingHeart.Text = dtProducts.Rows.Count.ToString();
                dlCartProducts.DataSource = dtProducts;
                dlCartProducts.DataBind();

                UpdateTotalBill();

                pnlMyCart.Visible = true;
                pnlCheckOut.Visible = true;
                pnlEmptyCart.Visible = false;
                pnlCategories.Visible = false;
                pnlProducts.Visible = false;
                pnlOrderPlacedSuccessfully.Visible = false;
            }
            else
            {
                pnlEmptyCart.Visible = true;
                pnlMyCart.Visible = false;
                pnlCheckOut.Visible = false;
                pnlCategories.Visible = false;
                pnlProducts.Visible = false;
                pnlOrderPlacedSuccessfully.Visible = false;

                dlCartProducts.DataSource = null;
                dlCartProducts.DataBind();
                txtTotalProducts.Text = "0";
                txtTotalPrice.Text = "0";
                btnShoppingHeart.Text = "0";

            }
        }

        private void UpdateTotalBill()
        {
            long TotalPrice = 0;
            long TotalProducts = 0;
            foreach (DataListItem item in dlCartProducts.Items)
            {
                Label PriceLabel = item.FindControl("lblPrice") as Label;
                TextBox pQuantity = item.FindControl("pquantity") as TextBox;
                long ProductPrice = Convert.ToInt64(PriceLabel.Text) * Convert.ToInt64(pQuantity.Text);
                TotalPrice = TotalPrice + ProductPrice;
                TotalProducts = TotalProducts + Convert.ToInt32(pQuantity.Text);
            }

            txtTotalPrice.Text = Convert.ToString(TotalPrice);
            txtTotalProducts.Text = Convert.ToString(TotalProducts);

        }

        protected void txtProductQuantity_TextChanged(object sender, EventArgs e)
        {
            TextBox txtQuantity = (sender as TextBox);
            DataListItem currentItem = (sender as TextBox).NamingContainer as DataListItem;
            HiddenField ProductID = currentItem.FindControl("hfProductID") as HiddenField;

            Label lblAvailableStock = currentItem.FindControl("lblAvailableStock") as Label;

            if (txtQuantity.Text == string.Empty || txtQuantity.Text == "0" || txtQuantity.Text == "1")
            {
                txtQuantity.Text = "1";
            }

            else
            {
                if (Session["MyCart"] != null)
                {
                    if (Convert.ToInt32(txtQuantity.Text) <= Convert.ToInt32(lblAvailableStock.Text))
                    {
                        DataTable dt = (DataTable)Session["MyCart"];

                        DataRow[] rows = dt.Select("ProductID='" + ProductID.Value + "'");
                        int index = dt.Rows.IndexOf(rows[0]);

                        dt.Rows[index]["ProductQuantity"] = txtQuantity.Text;
                        Session["myCart"] = dt;
                    }
                    else
                    {

                        lblAvailableStockAlert.Text = "Alert : Product Buyout Should not be more than Available Stock !!!";


                        txtQuantity.Text = "1";

                    }
                }
            }
            UpdateTotalBill();
        }

        protected void btnRemovefromCart_Click(object sender, EventArgs e)
        {
            string ProductID = Convert.ToInt16((((Button)sender).CommandArgument)).ToString();
            if (Session["MyCart"] != null)
            {
                DataTable dt = (DataTable)Session["MyCart"];
                DataRow drr = dt.Select("ProductID=" + ProductID + " ").FirstOrDefault();

                if (drr != null)
                {
                    dt.Rows.Remove(drr);
                    Session["MyCart"] = dt;
                } 

                GetMyCart();

            }
        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            string productids = string.Empty;
            DataTable dt;
            if (Session["MyCart"] != null)
            {
                dt = (DataTable)Session["MyCart"];

                ShoppingCart k = new ShoppingCart()
                {
                    CustomerName = txtCustomerName.Text,
                    CustomerEmailID = txtCustomerEmailID.Text,
                    CustomerAddress = txtCustomerAddress.Text,
                    CustomerPhoneNo = txtCustomerPhoneNo.Text,
                    TotalProducts = Convert.ToInt32(txtTotalProducts.Text),
                    TotalPrice = Convert.ToInt32(txtTotalPrice.Text),
                    ProductList = productids,
                    PaymentMethod = rblPaymentMethod.SelectedItem.Text
                };

                DataTable dtResult = k.SaveCustomerDetails();

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    ShoppingCart SaveProducts = new ShoppingCart()
                    {

                        CustomerID = Convert.ToInt32(dtResult.Rows[0][0]),

                        ProductID = Convert.ToInt32(dt.Rows[i]["ProductID"]),
                        TotalProducts = Convert.ToInt32(dt.Rows[i]["ProductQuantity"])
                    };

                    SaveProducts.SaveCustomerProducts();
                }
                Session.Clear();
                GetMyCart();
                lblTransactionNo.Text = "Your Transaction No :-" + dtResult.Rows[0][0];
                pnlOrderPlacedSuccessfully.Visible = true;
                pnlCheckOut.Visible = false;
                pnlCategories.Visible = false;
                pnlMyCart.Visible = false;
                pnlEmptyCart.Visible = false;
                pnlProducts.Visible = false;
                pnlEmptyCart.Visible = false;

                SendOrderPlacedAlert(txtCustomerName.Text, txtCustomerEmailID.Text, Convert.ToString(dtResult.Rows[0][0]));

                txtCustomerAddress.Text = string.Empty;
                txtCustomerEmailID.Text = string.Empty;
                txtCustomerName.Text = string.Empty;
                txtCustomerPhoneNo.Text = string.Empty;
                txtTotalPrice.Text = "0";
                txtTotalProducts.Text = "0";
            }
        }

        private string PopulateOrderEmailBody(string customerName, string transactionNo)
        {
            string body = string.Empty;
            using (StreamReader reader = new StreamReader(Server.MapPath("~/OrderTemplate.html")))
            {
                body = reader.ReadToEnd();
            }
            body = body.Replace("{CustomerName}", customerName);
            body = body.Replace("{OrderNo}", transactionNo);
            body = body.Replace("{TransactionURL}", "http://localhost:5372/Admin/Login.aspx" + transactionNo);
            return body;
        }
        private void SendOrderPlacedAlert(string CustomerName, string CustomerEmailID, string TransactionNo)
        { 
        string body = this.PopulateOrderEmailBody(CustomerName, TransactionNo); 
        EmailEngine.SendEmail(CustomerEmailID, "My Amazon -- Your OrderOetails", body); 
        }

        protected void dlCartProducts_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


        //private void SetImageUrl()
        //{
        //    // Create an instance of Random class
        //    Random _rand = new Random();
        //    // Generate a random number between 1 and 8
        //    int i = _rand.Next(1, 4);
        //    // Set ImageUrl using the generated random number
        //    Image1.ImageUrl = "~/images/" + i.ToString() + ".jpg";
        //}


        //protected void Timer1_Tick(object sender, EventArgs e)
        //{
        //    SetImageUrl();
        //}
    
    }


}
