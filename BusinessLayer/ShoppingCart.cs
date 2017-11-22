using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using MyAmazon.DataLayer;

namespace MyAmazon.BusinessLayer
{
    public class ShoppingCart
    {
        public string CategoryName;
        public string CategoryName2;
        public int CategoryID;
        public int ProductID;
        public int CustomerID;


        public string  FirstName ;
        public string LastName;
        public string Pwd1;
        public string Pwd2;
        public string Emailing;
        public string DateofBirth;
        public string Gender;

        public string ProductName;
        public string ProductImage;
        public string ProductPrice;
        public string ProductDescription;

        public string CustomerName;
        public string CustomerEmailID;
        public string CustomerPhoneNo;
        public string CustomerAddress;
        public string ProductList;
        public string PaymentMethod;

        public string OrderStatus;
        public string OrderNo;

        public int TotalProducts;
        public int TotalPrice;
        public int StockType;
        public int Flag;



    public void AddNewCategory()
        {
        SqlParameter[] parameters = new SqlParameter[1];
        parameters[0] = DataLayer.DataAccess.AddParamater("@CategoryName", CategoryName, System.Data.SqlDbType.VarChar, 200);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_AddNewCategory", parameters);
        }


    public void AddNewProduct()
    {
    SqlParameter[] parameters = new SqlParameter[6];
    parameters[0] = DataLayer.DataAccess.AddParamater("@ProductName", ProductName, System.Data.SqlDbType.VarChar, 300);
    parameters[1] = DataLayer.DataAccess.AddParamater("@ProductPrice", ProductPrice, System.Data.SqlDbType.Int, 100);
   
  parameters[2] = DataLayer.DataAccess.AddParamater("@ProductDescription", ProductDescription, System.Data.SqlDbType.VarChar, 1000);
    parameters[3] = DataLayer.DataAccess.AddParamater("@CategoryID", CategoryID, System.Data.SqlDbType.Int, 100);
    parameters[4] = DataLayer.DataAccess.AddParamater("@ImageUrl", ProductImage, System.Data.SqlDbType.VarChar, 500);
    parameters[5] = DataLayer.DataAccess.AddParamater("@ProductQuantity", TotalProducts, System.Data.SqlDbType.Int, 100);
    DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_Addingone", parameters);
    }


    public void AddingCustomer()
    {
        SqlParameter[] parameters = new SqlParameter[7];
        parameters[0] = DataLayer.DataAccess.AddParamater("@FName", FirstName, System.Data.SqlDbType.VarChar, 300);
        parameters[1] = DataLayer.DataAccess.AddParamater("@LName", LastName, System.Data.SqlDbType.VarChar, 300);

        parameters[2] = DataLayer.DataAccess.AddParamater("@Pwd1", Pwd1, System.Data.SqlDbType.VarChar, 1000);
        parameters[3] = DataLayer.DataAccess.AddParamater("@Pwd2", Pwd2, System.Data.SqlDbType.VarChar, 100);
        parameters[4] = DataLayer.DataAccess.AddParamater("@Emailing", Emailing, System.Data.SqlDbType.VarChar, 500);
        parameters[5] = DataLayer.DataAccess.AddParamater("@DOB1", DateofBirth, System.Data.SqlDbType.VarChar, 100);
        parameters[6] = DataLayer.DataAccess.AddParamater("@Gender", Gender, System.Data.SqlDbType.VarChar, 100);

        DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_AddingCustomer", parameters);
    }

         public void  CheckingLogin()
        {
        SqlParameter[] parameters = new SqlParameter[2];
        parameters[0] = DataLayer.DataAccess.AddParamater("@Emailing", Emailing, System.Data.SqlDbType.VarChar, 200);
        parameters[1] = DataLayer.DataAccess.AddParamater("@Pwd1", Pwd1, System.Data.SqlDbType.VarChar, 200);

            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_CheckLogin", parameters);
        }

        

    public DataTable GetCategories()
    {
        SqlParameter[] parameters = new SqlParameter[0];
        DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_GetAllCategories", parameters);
        return dt;
    
    }

    public DataTable GetAllProducts()
    {
        SqlParameter[] parameters = new SqlParameter[1];
        parameters[0] = DataLayer.DataAccess.AddParamater("@CategoryID", CategoryID, System.Data.SqlDbType.Int, 20);
        DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_GetAllProducts", parameters);

        return dt;

    }

    public DataTable DeleteProduct()
    {
        SqlParameter[] parameters = new SqlParameter[1];
        parameters[0] = DataLayer.DataAccess.AddParamater("@ProductName", ProductName, System.Data.SqlDbType.VarChar, 200);
        DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_DeleteTheProduct", parameters);

        return dt;

    }

         public DataTable DeleteCategory()
    {
        SqlParameter[] parameters = new SqlParameter[1];
        parameters[0] = DataLayer.DataAccess.AddParamater("@CategoryName", CategoryName, System.Data.SqlDbType.VarChar, 200);
        DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_DeleteCategory", parameters);

        return dt;

    }

         public DataTable UpdateCategory()
         {
             SqlParameter[] parameters = new SqlParameter[2];
             parameters[0] = DataLayer.DataAccess.AddParamater("@CategoryName", CategoryName, System.Data.SqlDbType.VarChar, 200);
             parameters[1] = DataLayer.DataAccess.AddParamater("@CategoryName2", CategoryName2, System.Data.SqlDbType.VarChar, 200);
             DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_UpdateCategory", parameters);

             return dt;

         }

        



    internal DataTable SaveCustomerDetails()
    { 
          SqlParameter [] parameters = new SqlParameter[7];
        parameters[0] = DataLayer .DataAccess.AddParamater("@CustomerName", CustomerName, System.Data.SqlDbType.VarChar, 100); 
        parameters[1] = DataLayer .DataAccess.AddParamater("@CustomerEmailID", CustomerEmailID, System.Data.SqlDbType.VarChar, 100);
        parameters[2] = DataLayer .DataAccess.AddParamater("@CustomerPhoneNo", CustomerPhoneNo, System.Data.SqlDbType.VarChar, 20); 
        parameters[3] = DataLayer .DataAccess.AddParamater("@CustomerAddress", CustomerAddress, System.Data.SqlDbType.VarChar, 500); 
        parameters[4] = DataLayer .DataAccess.AddParamater("@TotalProducts", TotalProducts, System.Data.SqlDbType.Int,100); 
        parameters[5] = DataLayer .DataAccess.AddParamater("@TotalPrice", TotalPrice, System.Data.SqlDbType.Int, 100);
         parameters[6] = DataLayer .DataAccess.AddParamater("@PaymentMethod", PaymentMethod, System.Data.SqlDbType.VarChar, 100);
        DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure ("SP_SaveCustomerDetails" ,parameters);
        return dt;
    }


    internal DataTable GetOrdersList()
    {
        SqlParameter[] parameters = new SqlParameter[1];
        parameters[0] = DataLayer.DataAccess.AddParamater("@Flag", Flag, System.Data.SqlDbType.Int, 20);
        DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_GetOrderList", parameters);
        return dt;
    }

        internal DataTable GetTransactionDetails()
        {
        SqlParameter[] parameters = new SqlParameter[1];
        parameters[0] = DataLayer.DataAccess.AddParamater("@TransactionNo", Flag, System.Data.SqlDbType.Int, 28);
        DataTable dt=DataLayer.DataAccess.ExecuteDTByProcedure("SP_GetTransactionDetails", parameters); 
        return dt;
        }

        internal DataTable GetSetOrderStatus()
        {
        SqlParameter[] parameters = new SqlParameter[3];
        parameters[0] = DataLayer.DataAccess.AddParamater("@TransactionNo", Convert.ToInt32(OrderNo), System.Data.SqlDbType.Int, 20);
        parameters[1] = DataLayer.DataAccess.AddParamater("@OrderStatus",OrderStatus, System.Data.SqlDbType.VarChar, 300);
        parameters[2] = DataLayer.DataAccess.AddParamater("@Flag", Flag, System.Data.SqlDbType.Int, 10);
        DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("Adding_orderstat", parameters);
        return dt;
        }
        internal void SaveCustomerProducts()
        {
            SqlParameter[] parameters = new SqlParameter[3];
            parameters[0] = DataLayer.DataAccess.AddParamater("@CustomerID", CustomerID, System.Data.SqlDbType.Int, 20);
            parameters[1] = DataLayer.DataAccess.AddParamater("@ProductID", ProductID, System.Data.SqlDbType.Int, 20);
            parameters[2] = DataLayer.DataAccess.AddParamater("@TotalProduct", TotalProducts, System.Data.SqlDbType.Int, 10);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_SaveCustomerProducts", parameters);

        }

            internal DataTable GetAvailableStock()
            {
            SqlParameter[] parameters = new SqlParameter[2];
            parameters[0] = DataLayer.DataAccess.AddParamater("@StockType", StockType, System.Data.SqlDbType.Int, 10);
            parameters[1] = DataLayer.DataAccess.AddParamater("@CategoryID", CategoryID, System.Data.SqlDbType.Int, 10);
                DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_GetAvailableStock", parameters);
            return dt;
            }
            internal DataTable GetIncomeReport()
            {
            SqlParameter[] parameters = new SqlParameter [1];
            parameters[0] = DataLayer.DataAccess.AddParamater("@ReportType", Flag, System.Data.SqlDbType.Int, 10);
            DataTable dt = DataLayer.DataAccess.ExecuteDTByProcedure("SP_GetIncomeReport", parameters);
            return dt;
            }

    }
}