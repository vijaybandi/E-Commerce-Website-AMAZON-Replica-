<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyAmazon.Default" %>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style.css" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link href="css/bootstrap.css" rel="stylesheet" />

    <!--  custom CSS here -->
    <link href="css/style.css" rel="stylesheet" />
    <title>My Amazon</title>
    <style type="text/css">

        

  			
				p{
					color:#8B4789;
					font-family:Trebuchet MS;
					line-height:130%;
					text-indent:100px;
					padding:22px;
					margin: 10px;
					border-bottom-style:solid;
				 }
				 
				 p:first-letter
				 {
					font-style:italic;
					font-weight:bold;
					color:purple;
					font-size:15px;
				 }
				 
				 body
				 {
					background-color:#FFE;
					background-image:url(back8.jpg);
					

				 }
				a{
					color:purple;
					font-family:Trebuchet MS;
					line-height:130%;
					margin:15px;
				 }
				 a:link
				 {
					text-decoration:none;
					
					
				 }
				 a:visited
				 {
					color:green;
				 }
				 a:hover
				 {
					color:blue;
				 }
				 a:active
				 {
					background-color:white;
					color:green;
				 }
				 
				 h1{
						font-family:Big Caslon;
						color:#8E388E;
						text-align:center;
						font-style:italic;
						border-style:dotted;
						border-color:#838B83;
				   }
				   h3{
						color:red;
					
						
						
				   }
				   table
				   {
						color:#8E388E;
						font-weight:bold;
						
				   }
				   th
				   {
						color:#636363;
				   }
				   th
				   {
						color:green;
				   }
				   
				  
				  
					span{
					   color:purple;
					    }
					
				
			

        .auto-style1 {
            width: 113px;
            height: 101px

        }
        .buttonCSS {
            padding: 5px;
            background-color: #dcdcdc;
            border: groove;
            color: #000;
            text-decoration: double;
        }


        .style1 {
            width: 900px;
        }

        .style2 {
            width: 633px;
            text-align: left;
        }

        .style3 {
            width: 257px;
            text-align: center;
        }

        .style4 {
            width: 185px;
            text-align: center;
        }

        .style6 {
            width: 260px;
            text-align: left;
        }

        .style7 {
            width: 427px;
            text-align: center;
        }

        .style8 {
            width: 108px;
            text-align: center;
        }

        .auto-style1 {
            width: 632px;
            text-align: left;
        }

        .auto-style2 {
            width: 163px;
            height: 118px;
        }

        .auto-style6 {
            text-align: center;
            width: 888px;
        }
        .auto-style7 {
            width: 254px;
        }
        .auto-style9 {
            width: 185px;
        }
        .auto-style10 {
            height: 28px;
        }
    </style>

</head>
<body>



            <form id="form1" runat="server">
            <asp:ScriptManager ID="ScriptManagerl" runat="server">
            </asp:ScriptManager>
                
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">


            <ContentTemplate>
          
     

                       
               <table align="center" class="style1" >


                   


                <tr>
            <td>
                 <table align="center" class="style1" style="border-bottom-style: ridge; border-width: medium;
            border-color: #9933FF">
                     
                     <tr>
                         <td align="center" class="style8" rowspan="2">&nbsp;<img alt="" class="auto-style2" src="images/image1.png" /> </td>
                         <td class="style6" rowspan="2">
                             <asp:LinkButton ID="lblLogo" runat="server" Font-Names="Eras Demi ITC" Font-Size="20pt" ForeColor="#6600CC" OnClick="lblLogo_Click" Text="My Amazon"></asp:LinkButton>
                             <br />
                             For Those Who Love Shopping!! </td>
                         <td class="style7" rowspan="2">
                             <asp:Image ID="Image3" runat="server" Height="133px" ImageUrl="~/Images/Amazon1.jpg" Width="393px" />
                         </td>
                         <td align="right" rowspan="2">
                             <asp:Image ID="Image2" runat="server" Height="86px" ImageUrl="~/Images/cart3.png" Width="103px" />
                         </td>
                         <td align="left">
                             <asp:LinkButton ID="btnShoppingHeart" runat="server" Font-Size="20pt" Font-Underline="False" ForeColor="Red" OnClick="btnShoppingHeartClick" Text="0"></asp:LinkButton>
                             <br />
                             <br />
                             <br />
                             <br />
                         </td>
                     </tr>
            </table>
            </td>
            </tr>

            <tr>
                <td class="auto-style6">
                    &nbsp;
                </td>
             </tr>


<%--                   <tr>
                       <td>
                           <table class="auto-style6">
                         <asp:Timer ID="Timer1" runat="server" Interval="2000" ontick="Timer1_Tick">
                         </asp:Timer>
                         <asp:Image ID="Image1" runat="server" Height="163px" Width="899px" />
                     </table>
                           </td>
                       </tr>--%>


                        </table>
                       

                       <tr>
                           <td>
                               <table align="center" class="style1" style="border: thin ridge #0900FF">
                                   <tr>
                                       <td class="style2">&nbsp;
                                           <asp:Label ID="lblCategoryName" runat="server" Font-Size="15pt" ForeColor="#6600CC"></asp:Label>
                                       </td>
                                       <td style="border-left-style: ridge; border-width: thin; border-color: #9900FF" class="auto-style7">&nbsp;
                                           <asp:Label ID="lblProducts" runat="server" Font-Size="15pt" ForeColor="#6600CC" Text="Products"></asp:Label>
                                       </td>
                                   </tr>
                               </table>
                           </td>
                       </tr>
                       <tr>
                           <td>
                               <table align="center" class="style1">
                                   <tr>
                                       <td class="auto-style1" valign="top">
                                           <asp:Panel ID="pnlProducts" runat="server" BorderColor="Black" BorderStyle="Inset" BorderWidth="1px" Height="500px" ScrollBars="Auto">
                                               <asp:DataList ID="dlProducts" runat="server" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" RepeatColumns="3" Width="100%">
                                                   <%--OnSelectedIndexChanged="dlProducts_SelectedIndexChanged"--%>
                                                   <ItemTemplate>
                                                       <div align="left">
                                                           <table cellspacing="1" class="center_prod_box" style="border: 1px ridge #9900FF">
                                                               <tr>
                                                                   <td style="border-bottom-style: ridge; border-width: 1px; border-color: #000000" class="auto-style9">
                                                                       <asp:Label ID="lblProductName" runat="server" Style="font-weight: 700" Text='<%# Eval("Name")%>'></asp:Label>
                                                                   </td>
                                                               </tr>
                                                               <tr>
                                                                   <td class="auto-style9">
                                                                       <img alt="" src='<%# Eval("ImageUrl")%>' runat="server" id="imgProductPhoto" style="border: ridge 1px black;
                     width: 173px; height: 160px;" />
                                                                   </td>
                                                               </tr>
                                                               <tr>
                                                                   <td class="auto-style9">Price:
                                                                       <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                                                       <asp:Image ID="imgStar" runat="server" ImageUrl="~/images/star2.png" Visible="false" />
                                                                       Stock:&nbsp;
                                                                       <asp:Label ID="lblAvailableStock" runat="server" Font-Bold="true" Forecolor="Red" Text='<%# Eval("AvailableStock") %>' ToolTip="Available Stock"></asp:Label>
                                                                       <asp:HiddenField ID="hfProductID" runat="server" Value='<%# Eval("ProductID") %>' />
                                                                       </td>
                                                               </tr>
                                                               <tr>
                                                                   <td class="auto-style9">

                                                                       <asp:Button ID="btnAddToCart" runat="server" BorderColor="Black" BorderStyle="Inset" Borderwidth="1px" CausesValidation="false" CommandArgument='<%# Eval("ProductID") %>' OnClick="btnAddToCart_Click" Text="Add To Cart" Width="100%" />
                                                                   </td>
                                                               </tr>
                                                           </table>
                                                       </div>
                                                   </ItemTemplate>
                                               </asp:DataList>
                                           </asp:Panel>
                                           <asp:Panel ID="pnlMyCart" runat="server" BorderColor="Black" BorderStyle="Inset" BorderWidth="1px" Height="500px" ScrollBars="Auto" Visible="false">
                                               <table align="center" cellspacing="1">
                                                   <tr>
                                                       <td align="center">
                                                           <asp:Label ID="lblAvailableStockAlert" runat="server" Font-Bold="true" ForeColor="Red"> </asp:Label>
                                                           <asp:DataList ID="dlCartProducts" runat="server" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" RepeatColumns="3" Width="551px">
                                                               <ItemTemplate>
                                                                   <div align="left">
                                                                       <table cellspacing="1" style="border: 1px ridge #9900FF; text-align: center; width: 172px;">
                                                                           <tr>
                                                                               <td style="border-bottom-style: ridge; border-width: 1px; border-color: #000000">
                                                                                   <asp:Label ID="lblProductName" runat="server" Style="font-weight: 700" Text='<%# Eval("Name")%>'></asp:Label>
                                                                               </td>
                                                                           </tr>
                                                                           <tr>
                                                                               <td>
                                                                                   <img alt="" src='<%# Eval("ImageUrl") %>' runat="server" id="imgProductPhoto" style="border: ridge 1px black;

                                                    width:157px; height:130px;  " />
                                                                               </td>
                                                                           </tr>
                                                                           <tr>
                                                                               <td>AvailableStock:&nbsp;
                                                                                   <asp:Label ID="lblAvailableStock" runat="server" Font-Bold="true" ForeColor="Red" Text='<%# Eval("AvailableStock")%>' ToolTip="AvailableStock"></asp:Label>
                                                                                   <br/>
                                                                                   Price:
                                                                                   <asp:Label ID="lblPrice" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                                                                                   &nbsp;x&nbsp;
                                                                                   <asp:TextBox ID="pquantity" runat="server" AutoPostBack="true" Height="29px" MaxLength="100" OnTextChanged="txtProductQuantity_TextChanged" Text='<%# Eval("ProductQuantity") %>' Width="42px"></asp:TextBox>
                                                                                   <asp:HiddenField ID="hfProductID" runat="server" Value='<%# Eval("ProductID") %>' />
                                                                               </td>
                                                                           </tr>
                                                                           <tr>
                                                                               <td>
                                                                                   <hr/>
                                                                                   <asp:Button ID="btnRemoveFromCart" runat="server" BorderColor="Black" BorderStyle="Inset" BorderWidth="1px" CausesValidation="false" CommandArgument='<%# Eval("ProductID") %>' Onclick="btnRemovefromCart_Click" Text="RemoveFromCart" Width="100%" />
                                                                               </td>
                                                                           </tr>
                                                                       </table>
                                                                   </div>
                                                               </ItemTemplate>
                                                               <ItemStyle Width="33%" />
                                                           </asp:DataList>
                                                       </td>
                                                   </tr>
                                               </table>
                                           </asp:Panel>
                                       </td>
                                       <td align="center" class="style3" valign="top">
                                           <asp:Panel ID="pnlCategories" runat="server" BorderColor="Black" Borderstyle="Inset" BorderWidth="1px" Height="500px" ScrollBars="Auto">
                                               <div class="left_content">
                                                   <ul class="left_menu">
                                                       <asp:DataList ID="dlCategories" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="190px">
                                                           <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                                           <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                                           <ItemTemplate>
                                                               <li class="odd">
                                                                   <asp:LinkButton ID="lbtnCategory" runat="server" CommandArgument='<%# Eval("CategoryID") %>' OnClick="lbtnCategory_Click" Text='<%# Eval("CategoryName")%>'>

                </asp:LinkButton>
                                                               </li>
                                                           </ItemTemplate>
                                                           <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                                       </asp:DataList>
                                                   </ul>
                                               </div>
                                           </asp:Panel>
                                           <asp:Panel ID="pnlCheckOut" runat="server" BorderColor="Black" BorderStyle="Inset" BorderWidth="1px" Height="500px" ScrollBars="Auto" Visible="false">
                                               <table style="width:258px;">
                                                   <tr>
                                                       <td align="left">Name: </td>
                                                   </tr>
                                                   <tr>
                                                       <td>
                                                           <asp:TextBox ID="txtCustomerName" runat="server" Width="231px"></asp:TextBox>
                                                           <%--<asp:RequiredFieldValidator runat="server"
                            ID="RequiredFieldValidator1" 
                            Text="*"
                            ErrorMessage="Name is required" 
                            ControlToValidate="txtCustomerName" />--%></td>
                                                   </tr>
                                                   <tr>
                                                       <td align="left">PhoneNo: </td>
                                                   </tr>
                                                   <tr>
                                                       <td>
                                                           <asp:TextBox ID="txtCustomerPhoneNo" runat="server" MaxLength="1" width="231px" ></asp:TextBox>
                                                           <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCustomerPhoneNo"
                        ErrorMessage="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>--%></td>
                                                   </tr>
                                                   <tr>
                                                       <td align=" left">EmailID: </td>
                                                   </tr>
                                                   <tr>
                                                       <td>
                                                           <asp:TextBox ID="txtCustomerEmailID" runat="server"   Width="231px" Height="30px"></asp:TextBox>
                                                           <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCustomerEmailID"
                      
                                        ErrorMessage="*" ForeColor="Red">
                      
                                        </asp:RequiredFieldValidator>--%></td>
                                                   </tr>
                                                   <tr>
                                                       <td align=" left">Address: </td>
                                                   </tr>
                                                   <tr>
                                                       <td align="left">&nbsp;<asp:TextBox ID="txtCustomerAddress" runat="server" Height="81px" Textmode="MultiLine" width="227px"></asp:TextBox>
                                                           <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCustomerAddress" ErrorMessage="*" ForeColor="Red">
                         </asp:RequiredFieldValidator>    --%></td>
                                                   </tr>
                                                   <tr>
                                                       <td align="left">Total Products : </td>
                                                   </tr>
                                                   <tr>
                                                       <td align="left" class="auto-style10">
                                                           <asp:TextBox ID="txtTotalProducts" runat="server" ReadOnly="true" width="231px" Height="31px"></asp:TextBox>
                                                           <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtTotalProducts" ErrorMessage="*" ForeColor="Red">
                         </asp:RequiredFieldValidator>    
                    --%></td>
                                                   </tr>
                                                   <tr>
                                                       <td align="left">Total Price: </td>
                                                   </tr>
                                                   <tr>
                                                       <td>
                                                           <asp:TextBox ID="txtTotalPrice" runat="server" Height="34px" ReadOnly="true" width="231px"></asp:TextBox>
                                                           <%--   OnTextChanged="txtTotalPrice_TextChanged"
                   <asp:RequiredfieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtTotalPrice"  ForeColor="Red">
                         </asp:RequiredfieldValidator>    
                                   --%></td>
                                                   </tr>
                                                   <tr>
                                                       <td align="left">Payment Mode: </td>
                                                   </tr>
                                                   <tr>
                                                       <td align="left">
                                                           <asp:RadioButtonList ID="rblPaymentMethod" runat="server">
                                                               <asp:ListItem Selected="True" Value="1">1. Cash On Delievery</asp:ListItem>
                                                               <asp:ListItem Selected="True" Value="2">2.Payment Gateway</asp:ListItem>
                                                           </asp:RadioButtonList>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td  align="center">
                                                           <asp:Button ID="btnPlaceOrder" runat="server" OnClick="btnPlaceOrder_Click" style="font-weight:700" Text="PlaceOrder" width="90px" Height="39px" />
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td>
                                                           <br/>
                                                       </td>
                                                   </tr>
                                                   <tr>
                                                       <td><%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtCustomerEmailID"
                                    ErrorMessage="Please Enter Valid Email " ForeColor="Red" ValidationExpression = "/^[A-Za-z0-9_\.\-]+@[A-Za-z]+.com$/">
                  </asp:RegularExpressionValidator>
                                
                            --%></td>
                                                   </tr>
                                               </table>
                                           </asp:Panel>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td colspan="2">
                                           <asp:Panel ID="pnlEmptyCart" runat="server" Visible="false">
                                               <div style="text-align: center;">
                                                   <br/>
                                                   <br/>
                                                   <br/>
                                                   <br/>
                                                   <br/>
                                                   <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/empty-cart.jpg" width="500px" />
                                                   <br />
                                                   <br/>
                                                   <br />
                                                   <br />
                                                   <br />
                                               </div>
                                           </asp:Panel>
                                           <asp:Panel ID="pnlOrderPlacedSuccessfully" runat="server" Visible="false">
                                               <div style="text-align: center;">
                                                   <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/success.jpg" width="500px" />
                                                   <br />
                                                   <br />
                                                   <label>
                                                   Order Placed Successfully.</label><br />
                                                   <br />
                                                   Transaction Details Are Sent At Email Id Provided By You.<br />
                                                   <br />
                                                   <br />
                                                   <asp:Label ID="lblTransactionNo" runat="server" Style="font-weight: 700"></asp:Label>
                                                   <br />
                                                   <br />
                                                   <br />
                                                   <a href="TrackYourOrder.aspx" target="_blank">Track Your Transaction Details Here</a>
                                                   <br />
                                                   <br />
                                                   <br />
                                               </div>
                                           </asp:Panel>
                                       </td>
                                   </tr>
                                   <tr>
                                       <td align="center" colspan="2" style="border: thin ridge #9900FF">&nbsp;©<a href="http://www.Amazon.com/">MyAmazon.com</a> || <a href="Admin/Login.aspx">AdminPanel</a> || 
                                           <a href="TrackYourOrder.aspx">TrackYourOrder||<a href="CustomerLogin.aspx">Log Out</a> </td>
                                   </tr>
                               </table>
                           </td>
                       </tr>
                       </table>
                </ContentTemplate>
                </asp:UpdatePanel>
            
            
            
            
            </form>

     
                    
    </body>
    </html>





