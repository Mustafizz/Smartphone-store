<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="OSPS.Admin" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Admin</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="js/ie-emulation-modes-warning.js"></script>

    
   
  </head>

  <body>

      
          

      

    <div class="container">
        
       
      <form class="form-signin" runat="server">
         
              
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <asp:Textbox  AutoCompleteType ="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus runat="server"></asp:Textbox>
        <label for="inputPassword" class="sr-only">Password</label>
        <asp:Textbox type="password" id="inputPassword" class="form-control" placeholder="Password" required runat="server"></asp:Textbox>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <asp:Button id="btn_sub"  class="btn btn-lg btn-primary btn-block" type="submit" Text="Sign in" runat="server" OnClick="btn_sub_Click1"/>
          <br />
          <br />
          <asp:Label id="l1" Text="" runat="server"></asp:Label>
                  
              
      </form>

    </div> <!-- /container -->

    
      
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>


