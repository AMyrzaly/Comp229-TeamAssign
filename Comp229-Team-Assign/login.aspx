<%@ Page Title="LogIn" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Comp229_Team_Assign.login" %>
<asp:Content ID="mainContain" ContentPlaceHolderID="head" runat="server">
    <link href="Content/LoginStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="mainContains" ContentPlaceHolderID="mainContain" runat="server">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title text-center">Please Login</h3>
        </div>
        <div class="panel-body">

            <div class="form-group">

                <asp:TextBox ID="txtUserName" runat="server" class="form-control input-sm" placeholder="User Name" />
            </div>

            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <div class="form-group">

                        <asp:TextBox ID="txtLoginPassword" runat="server" class="form-control input-sm" placeholder="Password" TextMode="Password" />
                    </div>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <div class="form-group">
                        <asp:TextBox ID="txtLogin_Password_Confirmed" runat="server" class="form-control input-sm" placeholder="Confirm Password" TextMode="Password" />
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="Doesn't match!" ControlToCompare="txtLoginPassword" ControlToValidate="txtLogin_Password_Confirmed" ForeColor="Red"></asp:CompareValidator>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn btn-info btn-block" />
                </div>
                </div>
            </div>
        </div>
    
</asp:Content>
