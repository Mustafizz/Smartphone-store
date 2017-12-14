<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="EmployeReg.aspx.cs" Inherits="OSPS.WebForm1" %>
<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
          <div class="col-md-8 col-md-offset-2">
    
        <form class="form-horizontal custom-form" runat="server">
                <h1>Register Form</h1>
            <h1></h1>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="name-input-field">Name </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <asp:TextBox ID="name" class="form-control" type="text" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="email-input-field">Email </label>
                    </div>
                    <div class="col-sm-6 input-column">
                       <asp:TextBox ID="email"  class="form-control" type="email" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-4 label-column">
                        <label class="control-label" for="pawssword-input-field">Password </label>
                    </div>
                    <div class="col-sm-6 input-column">
                        <asp:TextBox ID="pass" class="form-control" type="password" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="form-group"></div>
                <div class="checkbox">
                   <asp:Label id="l2" Text="" runat="server"></asp:Label>
                </div>
                <asp:Button ID="bttn" class="btn btn-default submit-button" type="button" Text="Register" runat="server" OnClick="bttn_Click"/>
            </form>
        </div>
</asp:Content>

