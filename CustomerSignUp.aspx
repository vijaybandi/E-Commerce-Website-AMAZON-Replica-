<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerSignUp.aspx.cs" Inherits="MyAmazon.CustomerSignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <script src="JavaScript1.js"></script>
         <style>
body {
    background-image: url("/images/login.png");

        
}
</style>
   



    <link rel="stylesheet" type="text/css" 	media="all" href="StyleSheet1.css" />

</head>
<body>
    <form id="form1" runat="server" >
       
        

    <div id="div1">
        <h2>Sign Up</h2>
        <p id="pid1" style="margin-bottom:50px"> Welcome to My Amazon. Please enter the required Information.</p>

     
        
    
        <p style="margin-left:175px; font-weight:bold" >Name <span style="color:red">*</span>
            <br />
            
        <asp:TextBox ID="FName" style="margin-right:25px; border-radius: 5px; box-shadow: 0 0 3px 2px #d3ffce"  runat="server"></asp:TextBox> <asp:TextBox ID="LName" style=" border-radius: 5px; box-shadow: 0 0 3px 2px #d3ffce" runat="server"> </asp:TextBox>
         <br />
          &nbsp;&nbsp<span style="font-weight:normal" > First </span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; <span style="font-weight:normal" >   Last </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <br /> 
           
        </p>

         <p style="margin-left:175px; font-weight:bold" > Password <span style="color:red">*</span>
            <br />
            
        <asp:TextBox ID="Password1" TextMode="Password" style="margin-right:25px; border-radius: 5px; box-shadow: 0 0 3px 2px #d3ffce"  Width="250px" runat="server"></asp:TextBox>
         <br />
             </p>

        <p style="margin-left:175px; font-weight:bold" > Confirm Password <span style="color:red">*</span>
            <br />
            
        <asp:TextBox ID="Password2" TextMode="Password" style="margin-right:25px; border-radius: 5px; box-shadow: 0 0 3px 2px #d3ffce"  Width="250px" runat="server"></asp:TextBox>
         <br />
             </p>

         <p style="margin-left:175px; font-weight:bold" > EMAIL 
            <br />
            
        <asp:TextBox ID="Email1"  style="margin-right:25px; border-radius: 5px; box-shadow: 0 0 3px 2px #d3ffce"  Width="250px"  runat="server"></asp:TextBox>
         <br />
         <br />
             </p>

        <p style="margin-left:175px; font-weight:bold" > Date of Birth <span style="color:red">*</span>
            <br />
            
        <asp:TextBox ID="DOB1" style="margin-right:25px ; border-radius: 5px; box-shadow: 0 0 3px 2px #d3ffce" Width="250px"  runat="server"></asp:TextBox>
         <br /> <span style="font-weight:normal">e.g.(dd-mm-yyyy)</span>
             </p>

        <p style="margin-left:175px; font-weight:bold" >
            <br />

          Gender:
        <br />
         <br />  
        Male<asp:RadioButton ID="Male" Groupname="gender"   runat="server" />
         Female<asp:RadioButton ID="Female" Groupname="gender"  runat="server" />

        <br />
         <br /> 

            <asp:Button ID="submit" runat="server" class="button" Text="Submit" OnClick="SubmitBtn"/>
            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Button ID="Reset" runat="server" class="button2" Text="Reset" OnClick="ResetBtn" />
         




    </div>

           
    </form></body>
</html>
