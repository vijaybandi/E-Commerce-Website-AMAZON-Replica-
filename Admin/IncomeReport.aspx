<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="IncomeReport.aspx.cs" Inherits="MyAmazon.Admin.IncomeReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div align= "center">
    <asp:Label ID="lblTitle" runat="server" Style="font-weight: 700">Income Report</asp:Label>
         <hr />
    </div>
    <table align="center" cellspacing="1" style="width: 100%"; background-color: #FFFFFF;"> 
        <tr>
    <td align="center">
    <asp:RadioButtonList  ID="rblIncomeFilter" runat="server" AutoPostBack="True" 
        RepeatDirection="Horizontal"
    onselectedindexchanged="rblIncomeFilter_SelectedIndexChanged">
    <asp:ListItem Selected="True" value="1">Today</asp:ListItem>
    <asp:ListItem Value="2">This Month</asp:ListItem>
    <asp:ListItem Value="3">This Year</asp:ListItem>
    </asp:RadioButtonList>

    </td>
    </tr>
    <tr>
    <td align="center">
    &nbsp;

    </td>
    </tr>
    <tr>
    <td align="center">
    <asp:Label ID="lblIncome" runat="server" ForeColor="Red" style="font-weight: 700"></asp:Label>
    </td>
    </tr>

        <tr>
        <td align="center">
        <asp:GridView ID="gvIncomeReport" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge"
        Borderwidth="2px" cellPadding="3" CellSpacing="1" Grickines="None" Width="100%" AutoGenerateColumns="false">
        <Columns>
        <asp:BoundField DataField="Id" HeaderText="Id" ItemStyle-width="100" />
        <asp:BoundField DataField="CustomerName" HeaderText="Name" ItemStyle-Width="150" />
        <asp:BoundField DataField="CustomerPhoneNo" HeaderText="PhoneNo" ItemStyle-Width="25" /> 
            <asp:BoundField DataField="TotalProducts" HeaderText="Products" ItemStyle-Width="150" />
             <asp:BoundField DataField="TotalPrice" HeaderText="Price" ItemStyle-width="150" />
        </Columns>

              <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
       
             <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Center" />
          <RowStyle BackColor="#DEDFDE" ForeColor="Black" HorizontalAlign="Center" />
         <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="white" />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#59489C" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
<SortedDescendingHeaderStyle BackColor="#33276A" />
</asp:GridView>
</td>
 </tr>
</table>















</asp:Content>
