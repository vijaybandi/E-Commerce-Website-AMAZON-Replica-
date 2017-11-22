<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="DeleteProducts.aspx.cs" Inherits="MyAmazon.Admin.DeleteProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div align="left">

        <li>
        <a href="Product.aspx">AllProducts</a>         </li>
       <li>  <a href="AddNewProducts.aspx" >Add Products</a></li>
        <li> <a href="DeleteProducts.aspx">DeleteProducts</a>
        <hr />
        </li>
</div>

 <h3>  <div align="center">Delete Products <br /> </h3> </div>
   
    <div align="center">
     <h4>    Enter Product Name Here:   <asp:TextBox ID="TextBoxDeletingProducts" runat="server"></asp:TextBox> &nbsp&nbsp
          <asp:Button ID="DeletingAnyThing" runat="server" Text="Delete" OnClick="DeleteTheProduct" />&nbsp&nbsp

          <br />
                    <br />
          </h4>
        </div>


<table align="center" cellspacing="1" style="width: 100%; background-color: #FFFFFF;"> 

    <tr>
<td align="center">
    
<asp:GridView ID="gvAvailableProducts" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" 
    Borderwidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Width="100%" AutoGenerateColumns="False">
<Columns>
<asp:BoundField runat="server" DataField="Name" HeaderText="ProductName" ItemStyle-width="150" >
<ItemStyle Width="150px"></ItemStyle>
    </asp:BoundField>
 <asp:BoundField runat="server" DataField="CategoryName" HeaderText="ProductCategory" ItemStyle-Width="50" >
<ItemStyle Width="50px"></ItemStyle>
    </asp:BoundField>
  <asp:BoundField runat="server" DataField="AvailableStock" HeaderText="AvailableStock" ItemStyle-Width="150"
ItemStyle-Font-Bold="true" ItemStyle-Font-Size="larger" >
<ItemStyle Font-Bold="True" Font-Size="Larger" Width="150px"></ItemStyle>
    </asp:BoundField>
<asp:BoundField runat="server" DataField="Price" HeaderText="Price" ItemStyle-Width="150" >
<ItemStyle Width="150px"></ItemStyle>
    </asp:BoundField>
<asp:ImageField runat="server" DataImageUrlField="ImageUrl" ControlStyle-Width="150" > 
    

<ControlStyle Width="150px"></ControlStyle>
    </asp:ImageField>
        
           
        

</Columns>



<FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
<HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
<PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Center" /> 
<RowStyle BackColor="#DEDFDE" ForeColor="Black" HorizontalAlign="Center" />
<SelectedRowStyle BackColor="#9471DE" Font-Bold="true" ForeColor="White" />
<SortedAscendingCellStyle BackColor="#F1F1F1" />
<SortedAscendingHeaderStyle BackColor="#59489C" />
<SortedDescendingCellStyle BackColor="#CAC9C9" />
<SortedDescendingHeaderStyle BackColor="#33276A" />
</asp:GridView>

</td>
 </tr>
</table>


</asp:Content>
