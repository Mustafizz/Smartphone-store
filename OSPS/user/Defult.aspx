<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Defult.aspx.cs" Inherits="OSPS.Defult" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SmartPhone Store</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/user.css">
      <style>
  
  div.gallery {
    
     
     
    margin: 5px;
    border: 1px solid #ccc;
    width: 250px;
    height:200px;
    display:inline-block;
}

div.gallery:hover {
    border: 1px solid #777;
}
div.gallery img {
    left:50px;
    width: 60%;
    height:150px;
}
div.desc {
    padding: 15px;
    text-align: center;
    display:inline-block;
}

.button {
    background-color: #0094ff; /* Green */
    border: none;
    color: white;
    padding: 5px 10px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    
}
</style>
</head>

<body>
    <form id="form1" runat="server">
    <nav class="navbar navbar-default">
        <div class="container">
            <div class="navbar-header"><a class="navbar-brand navbar-link" href="#"><i class="glyphicon glyphicon-phone"></i>SMARTPHONE STORE</a>
                <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button>
            </div>
            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="active" role="presentation"><a href="../user/product.aspx"><strong>Shop Now</strong></a></li>
                    <li role="presentation"><a href="#">Second Item</a></li>
                    <li role="presentation"><a href="../Admin.aspx">Admin</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="jumbotron hero">
        <div class="container">
            <div class="row">
                
                <div class="col-md-4 col-md-push-7 phone-preview">
                    <asp:Repeater ID="d2" runat="server">
                        <ItemTemplate>
                    <div class="iphone-mockup"><img src="../<%#Eval("Image") %>" class="device">
                        <h2>Comming Soon <%#Eval("Name") %></h2>
                    </div>
                            </ItemTemplate>
                        </asp:Repeater>
                </div>
                <div class="col-md-6 col-md-pull-3 get-it">
                    <p><a class="btn btn-primary btn-lg" role="button" href="../user/product.aspx"><i class="fa fa-apple"></i> Available on Our Store</a></p>
                    
                    
                </div>

            </div>
            
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <h1 class="text-center"><strong>New Arrival</strong></h1></div>
    </div>
    <section class="testimonials"></section>
    <footer class="site-footer">
        <div class="container">
            
                
                    <asp:Repeater ID="dl" runat="server">
                        <ItemTemplate>
                            <div class="gallery">

                         
    <img src="../<%#Eval("Image") %>" width="500" height="300" alt="" />
  
  <div class="desc">
     <h5><%#Eval("Name") %> </h5>
      <h6>Price:<%#Eval("Price") %>BDT</h6>
      <button class="button">Available</button>
      
</div>
                            </div>
</ItemTemplate>

                    </asp:Repeater>
   
  

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Image] FROM [PTable]"></asp:SqlDataSource>
   
  

    
               
        </div>
        <br />
        <br />
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-12"></div>
                </div><img src="assets/img/p.JPG" width="1100px"></div>
        </div>
        <br />
        <br />
                  <footer>
                    <div class="row">
                        <div class="col-md-4 col-sm-6 footer-navigation">
                            <h3><a href="#">Company<span>logo </span></a></h3>
                            <p class="links"><a href="#">Home</a><strong> · </strong><a href="#">Blog</a><strong> · </strong><a href="#">Pricing</a><strong> · </strong><a href="#">About</a><strong> · </strong><a href="#">Faq</a><strong> · </strong><a href="#">Contact</a></p>
                            <p
                            class="company-name">Company Name © 2015 </p>
                        </div>
                        <div class="col-md-4 col-sm-6 footer-contacts">
                            <div><span class="fa fa-map-marker footer-contacts-icon"> </span>
                                <p><span class="new-line-span">21 Revolution Street</span> Paris, France</p>
                            </div>
                            <div><i class="fa fa-phone footer-contacts-icon"></i>
                                <p class="footer-center-info email text-left"> +1 555 123456</p>
                            </div>
                            <div><i class="fa fa-envelope footer-contacts-icon"></i>
                                <p> <a href="#" target="_blank">support@company.com</a></p>
                            </div>
                        </div>
                        <div class="clearfix visible-sm-block"></div>
                        <div class="col-md-4 footer-about">
                            <h4>About the company</h4>
                            <p> Lorem ipsum dolor sit amet, consectateur adispicing elit. Fusce euismod convallis velit, eu auctor lacus vehicula sit amet.
                            </p>
                            <div class="social-links social-icons"><a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-linkedin"></i></a><a href="#"><i class="fa fa-github"></i></a></div>
                        </div>
                    </div>
                </footer>
         
      
    
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    </form>
</body>

</html>
