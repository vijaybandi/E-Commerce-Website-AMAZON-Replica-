<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerLogin.aspx.cs" Inherits="MyAmazon.CustomerLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
             <style>
body {
    background-image: url("/images/login.png");

     
     
        
}
    </style>
   
        <link rel="stylesheet" type="text/css" 	media="all" href="StyleSheet1.css" />

    <title></title>
</head>
<body>
    <form id="form1" runat="server" >
       

    <div id="div1">
        <h2>Login In</h2>
        <p id="pid1" style="margin-bottom:50px"> Welcome to My Amazon. Please enter the required Information.</p>

     
        
    

       <p style="margin-left:175px; font-weight:bold" > EMAIL 
            <br />
            
        <asp:TextBox ID="EmailLogin"  style="margin-right:25px; border-radius: 5px; box-shadow: 0 0 3px 2px #d3ffce"  Width="250px"  runat="server"></asp:TextBox>
         <br />
         <br />
             </p>


    
         <p style="margin-left:175px; font-weight:bold" > Password <span style="color:red">*</span>
            <br />
            
        <asp:TextBox ID="PasswordLogin" TextMode="Password" style="margin-right:25px; border-radius: 5px; box-shadow: 0 0 3px 2px #d3ffce"  Width="250px" runat="server"></asp:TextBox>
         <br />
             </p>

        
             &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
             &nbsp;<asp:Button ID="SubmitLogin" runat="server" class="button" Text="Submit" OnClick="LoginCustomer"/>
        <hr />
        &nbsp;&nbsp;&nbsp; &nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        </form>
    </body>
</html>
