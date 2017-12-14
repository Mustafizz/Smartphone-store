<%@ Page Title="" Language="C#" MasterPageFile="~/user/product.Master" AutoEventWireup="true" CodeBehind="product_desp.aspx.cs" Inherits="OSPS.user.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="dt" runat="server">
         <ItemTemplate>
           
              <div class="col-md-6">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h3 class="panel-title">Product Detail</h3></div>
                                    <div class="panel-body">
                                        <h4><%#Eval("Name") %></h4>
                <h6>Description: <%#Eval("Description") %></h6>
                <h6>Price: <%#Eval("Price") %></h6>
                                       <a href="../user/order.aspx?name=<%#Eval("Name") %>"> <button class="button">buy Now</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-md-offset-0"><img src="../<%#Eval("Image")%>" width="200px" height="250px"></div>
               

         </ItemTemplate>
    </asp:Repeater>
</asp:Content>
