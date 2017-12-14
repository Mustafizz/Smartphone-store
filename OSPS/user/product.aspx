<%@ Page Title="" Language="C#" MasterPageFile="~/user/product.Master" AutoEventWireup="true" CodeBehind="product.aspx.cs" Inherits="OSPS.user.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
                    <asp:Repeater ID="dl" runat="server">
                        <ItemTemplate>
       <a href="../user/product_desp.aspx?name=<%#Eval("Name") %>">                     <div class="gallery">

                         
    <img src="../<%#Eval("Image") %>" width="500" height="300" alt="" />
  
  <div class="desc">
      
     <h5><%#Eval("Name") %> </h5>
      <h6>Price:<%#Eval("Price") %>BDT</h6>
     <div></div>
      <div></div>
      
</div>
                            </div></a> 
</ItemTemplate>

                    </asp:Repeater>
</asp:Content>
