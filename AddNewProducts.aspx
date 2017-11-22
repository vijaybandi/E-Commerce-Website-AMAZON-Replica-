<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" 
    CodeBehind="AddNewProducts.aspx.cs" Inherits="MyAmazon.Admin.AddNewProducts" %>

        <asp:Content  ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

              <div align="left">

        <li>
        <a href="Product.aspx">AllProducts</a>         </li>
       <li>  <a href="AddNewProducts.aspx" >Add Products</a></li>
        <li> <a href="DeleteProducts.aspx">DeleteProducts</a>
        <hr />
        </li>
</div>

 <h3>  <div align="center">Add Products <br /> </h3> </div>


            <table align="center" cellspacing="1" style="width: 100%; background-color: #FFFFFF;"> 
                
                <tr>
        
                <td style="width: 50%; padding-left: 100px;" align="left">
            Product Name :
        
                </td>
            
                    <td style="width: 50%;" align="left">

        
                        <asp:TextBox ID="txtProductName" Cssclass="txtABC" runat="server" Width="212px"></asp:TextBox>

                    </td>
        
                </tr>
      
                  <tr>
        <td style="width: 50px; padding-left: 100px;" align="left">
        &nbsp;
        </td>
        <td style="width: 50%;" align="left"›
        
              &nbsp;

        </td> 

                  </tr>
        <tr>

        <td style="width: 50%; padding-left: 100px;" align="left">
        Product Category : 
    
             <td style="width: 50%;" align="left">

        
                      <asp:DropDownList ID="ddlCategory" Cssclass="txtABC"  width="50%" runat="server"></asp:DropDownList>

                    </td>
            

        </td>

            </tr>
         
                
      <tr>
    <td style="width: 50%;" align="right">
    &nbsp;
        </td>
    </tr>


     <tr>

        <td style="width: 50%; padding-left: 100px;" align="left">
        Product Description : 
    
             <td style="width: 50%;" align="left">
                 <asp:TextBox ID="txtProductDescription" Cssclass="txtABC"  runat="server" Width="212px" Height="80px" TextMode="MultiLine">

                 </asp:TextBox>
                    </td>
            

        </td>

            </tr>

     <tr>
    <td style="width: 50%;" align="right">
    &nbsp;
        </td>
    </tr>

                
        <tr>

        <td style="width: 50%; padding-left: 100px;" align="left">
        Product Image : 
    
             <td style="width: 50%;" align="left">
                 <asp:FileUpload  cssclass="txtABC1" ID ="uploadProductPhoto" runat="server" />
                 
                    </td>
            

        </td>

            </tr>

     <tr>
    <td style="width: 50%;" align="right">
    &nbsp;
        </td>
    </tr>



                  <tr>

        <td style="width: 50%; padding-left: 100px;" align="left">
        Product Price : 
    
             <td style="width: 50%;" align="left">

                 <asp:TextBox ID="txtProductPrice" Cssclass="txtABC"  runat="server" Width="154px"></asp:TextBox>
             
             </td>
            

        </td>

            </tr>

     <tr>
    <td style="width: 50%;" align="right">
    &nbsp;
        </td>
    </tr>


                 <tr>

        <td style="width: 50%; padding-left: 100px;" align="left">
        Product Quantity : 
    
             <td style="width: 50%;" align="left">

                 <asp:TextBox ID="txtProductQuantity" Cssclass="txtABC"  runat="server" Width="212px"></asp:TextBox>
             
             </td>
            

        </td>

            </tr>


                <tr>
    <td style="width: 50%;" align="right">
    &nbsp;
        </td>
    </tr>
 
                <tr>
    <td style="width: 50%;" align="right">
    &nbsp;
        </td>
    </tr>




                   <tr>

        <td style="width: 50%; padding-left: 100px;" align="left">
       
             <td style="width: 70%;" align="left">
                 <asp:Button ID="btnSubmit"  runat="server" Text="Submit" Width="88px" OnClick="btnSubmit_Click" />
                 
                    </td>
            

        </td>

            </tr>





             </table>
    </asp:Content>