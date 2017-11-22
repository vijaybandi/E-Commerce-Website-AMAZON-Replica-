<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrackYourOrder.aspx.cs" Inherits="MyAmazon.TrackYourOrder" %>


<%@ Register src="ucCustomerOrder.ascx"   tagname="ucCustomerOrder" TagPrefix="uc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 
  
    <title>Track Your Order!</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <uc1:ucCustomerOrder ID="ucCustomerOrder1" runat="server"/>

    </div>
    </form>
</body>
</html>
