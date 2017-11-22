<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="CustomerOrders.aspx.cs" Inherits="MyAmazon.Admin.CustomerOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div align="center">
<asp:Label ID="lblTitle" runat="server" Style="font-weight: 700">Customer Orders</asp:Label> 
        <hr />
</div>
<table align="center" cellspacing="1" style="width: 100%; background-color: #FFFFFF;"> 
    <tr>
<td align="center">
    <asp:GridView ID="gvCustomerOrders" runat="server" BackColor="White" BorderColor="White"
      BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None"
        width="100%" AutoGenerateColumns="false">
     <Columns>
<asp:BoundField runat="server" DataField="Id" HeaderText="Id" ItemStyle-width="100" />
 <asp:BoundField runat="server" DataField="CustomerName" HeaderText="Name" ItemStyle-Width="150" />
  <asp:BoundField runat="server" DataField="CustomerPhoneNo" HeaderText="PhoneNo" ItemStyle-Width="30" />
<asp:BoundField runat="server" DataField="TotalProducts" HeaderText="Products" ItemStyle-Width="150" />
<asp:BoundField runat="server" DataField="TotalPrice" HeaderText="Proce" ItemStyle-Width="150" />
         
         <asp:TemplateField>
             <ItemTemplate>
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#Eval("id","~/Admin/OrderDetails.aspx?Id={0}") %>' Text="View Details"
                target="_blank" />

             </ItemTemplate>
         </asp:TemplateField>

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
