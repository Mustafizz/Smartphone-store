<%@ Page Title="" Language="C#" MasterPageFile="~/user/product.Master" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="OSPS.user.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
           
                <div class="row">
                            <div class="col-md-12">
                                <div class="row .payment-dialog-row">
                                    <div class="col-md-4">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">Panel Heading</h3></div>
                                            <div class="panel-body">
                                                 <asp:Repeater ID="dt" runat="server">
         <ItemTemplate>
                                                <div class="col-md-12 col-md-offset-0"><img src="../<%#Eval("image") %>" width="150px" height="200px"></div>
                                                <div class="col-md-12">
                                                    <asp:label ID="LL1" text="" runat="server"></asp:label>
                                                    <h6>Deescription:</h6>
                                                    <h6>Price: </h6>
                                                    
                                                    
                                                </div>
             </ItemTemplate>
    </asp:Repeater>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                       <div class="g">
  <form action="/action_page.php" runat="server">
    <label for="fname">Customer Name</label>
    <asp:TextBox type="text" id="TextBox5" name="firstname"  runat="server"></asp:TextBox>

    <label for="lname">Phone Number</label>
    <asp:TextBox type="text" id="TextBox1" name="firstname"  runat="server"></asp:TextBox>

    <label for="country">Adress</label>
      <asp:TextBox type="text" id="TextBox2" name="firstname" runat="server"></asp:TextBox>
      <label for="country">Card Number</label>
      <asp:TextBox type="text" id="TextBox3" name="firstname"  runat="server"></asp:TextBox>
      <label for="country">Security Code</label>
      <asp:TextBox type="text" id="TextBox4" name="firstname"  runat="server"></asp:TextBox>
   
   
   
  
    <asp:Button ID="Bttn" type="submit" Text="Pay" runat="server"/>
      
  </form>
</div>
                              </div>
                                    </div>
                                </div>
                            </div>
                       
               

     

</asp:Content>
