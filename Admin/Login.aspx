<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyAmazon.Admin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title >My Amazon</title>

    <style type="text/css">
      

       
body {
    background-image: url("/images/adminpanelbg1.jpg");
 background-repeat: repeat-x;
     
      background-position-x:center;
        
}



       
        .txtABC {
        background:white;
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



    <div style="margin:200px;">
               
           <table align ="center" class="style1" style ="border:1px ridge #999999;width:450px;background:#D1F4F2;" >
        <tr>
            <br/>
             <br/>

             <br/>
            
            <td align="center"colspan="2"  style="background:#CCFF33;">
          <big>    <asp:Label ID="Label1" runat="server" font-weight="bold" Font-Names ="Ahoroni" ForeColor="Black" Text="MYAMAZON ADMIN"
                    style="font-weight:700"></asp:Label> </big>
                <hr />
            </td>
        </tr>
         <tr>
             <td align="center" style="width:50%; ">
             <big>     <strong>     LoginID :  </strong>   </big>   
             </td>
             <td  style="width:50%;">
                <asp:TextBox ID="txtloginid" CssClass="txtABC" runat="server"></asp:TextBox>
              </td>
         </tr>

         <tr>
             <td align="center" style="width:50%;">
              <big>   <strong>   Password :</strong></big> 
             </td>
             <td  style="width:50%;">
                <asp:TextBox CssClass="txtABC" ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
              </td>
         </tr>

         <tr>
             <td align="center" style="width:50%;"> &nbsp; </td>

             
             <td  style="width:50%;color:red">
                <asp:Button ID="btnlogin" CssClass="txtABC" font-weight="bold"  runat="server"  Text="Login"  OnClick="btnLogin_Click" />      
              </td>
         </tr>
         <tr>
            <td align="center"colspan="2">
                <hr />
                <asp:Label ID="lblAlert" runat="server" Font-Names="Ahoroni" ForeColor="Red" ></asp:Label>     
            </td>
        </tr>

      </table>
    </div>
    </form>
</body>
</html>
