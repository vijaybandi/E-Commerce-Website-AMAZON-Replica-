﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ProductStock.aspx.cs" Inherits="MyAmazon.Admin.ProductStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


   <div align="center">
        <asp:Label ID="lblTitle" runat="server" Style="font-weight: 700">Product Stock</asp:Label>
        <hr />
        </div>
        <table align="center" cellspacing="1" style="width: 100%; background-color: #FFFFFF;">
        <tr>
        <td align="center">
        <asp:DropDownList  ID="ddlCategory" runat="server" CssClass="txtABC"  AutoPostBack="True" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged" 
            width="300px">
        </asp:DropDownList>
        </td>
        </tr>
        <tr>
        <td align="center"›
        <asp:Panel ID="pnlProductStockReport" runat="server">
        <hr/>
        <asp:RadioButtonList  ID="rblProductStock" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" 
            Style="font-weight: 700" OnSelectedIndexChanged="rblProductStock_SelectedIndexChanged"  >
        <asp:ListItem Selected="True" value="0">OutOfStock</asp:ListItem>
        <asp:ListItem Value="1">LimitedStock</asp:ListItem>
        <asp:ListItem Value="2">EnoughStock</asp:ListItem>
        </asp:RadioButtonList>
        <hr/>
        </asp:Panel>
        </td>
        </tr>
        <tr>
        <td align="center">
        <div align="center" id="NoRecordsToDisplay" runat="server" visible="false">

          <asp:Label ID="Labell" runat="server" Style="font-weight: 700" ForeColor="Red">No Records Available</asp:Label>

        </div>
        <asp:GridView ID="gvAvailableStock" runat="server" BackColor="White" BorderColor="White" BorderStyle="Ridge" Borderwidth="2px" 
            CellPadding="3" CellSpacing="1" GridLines="None" width="100%" AutoGenerateColumns="false">
        <Columns>
        <asp:BoundField DataField="Name" HeaderText="ProductName" ItemStyle-Width="150" />
        <asp:BoundField DataField="CategoryName" HeaderText="ProductCategory" ItemStyle-Width="50" />
          <asp:BoundField DataField="AvailableStock" HeaderText="AvailableStock" ItemStyle-Width="150"
        ItemStyle-Font-Bold="true" ItemStyle-Font-Size="Larger" />
        <asp:BoundField Datafield="Price" HeaderText="Price" ItemStyle-Width="150" />
        <asp:ImageField DataImageUrlField="ImageUrl" ControlStyle-Width="150" /> 

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
