<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderDetails.aspx.cs" Inherits="MyAmazon.Admin.OrderDetails" %>



<%@ Register src="../ucCustomerOrder.ascx"   tagname="ucCustomerOrder" TagPrefix="uc1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>My Amazon</title>

    <style type="text/css">
        .styleOrderDetails {
        
        width:600px;
        border:1px ridge red;
        }
          .txtABC2 {
        background:#e6e1e1;
        border   :1px double #DDD; 
        border-radius:5px;
        box-shadow:0 0 5px #333;
        color:#666;
        width:165px;
        outline:none;

        
        
        }

        
    </style>

</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
        <asp:Button runat="server" ID="btnClear" Text="Clear & Search Other Transactions!" OnClick="btnClear_Click" Width="247px"
            height="30px" Style="font-weight:700" />
    
    </div>
        <hr />
        <br />
        <uc1:ucCustomerOrder ID="ucCustomerOrder1" runat="server" />
    </form>
</body>
</html>
