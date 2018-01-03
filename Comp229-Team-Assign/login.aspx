<%@ Page Title="LogIn" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Comp229_Team_Assign.login" %>
<asp:Content ID="mainContain" ContentPlaceHolderID="head" runat="server">
    <link href="Content/LoginStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="mainContains" ContentPlaceHolderID="mainContain" runat="server">
    <div id="login">


        <div class="panel panel-default" style="width: 350px; margin-top: 50px; margin-left: 350px">
            <div class="panel-heading">
                <h3 class="panel-title text-center">Please Login</h3>
            </div>
            <div class="panel-body">

                <div class="form-group">
                    <asp:Label runat="server" ID="lblUserName">UserName</asp:Label>
                    <asp:TextBox ID="txtUserName" runat="server" class="form-control input-sm" placeholder="User Name" Width="300px" />
                </div>

                <div class="row">
                    <div class="col-xs-6 col-sm-6 col-md-6">
                        <div class="form-group">
                            <asp:Label runat="server" ID="lblPassword">Password</asp:Label>
                            <br />
                            <asp:TextBox ID="txtPassword" runat="server" class="form-control input-sm" placeholder="Password" TextMode="Password" Width="300px" />
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-xs-12 col-sm-12 col-md-12">
                    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox">
                            Remember me
                        </label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn btn-default btn-block" OnClick="btnLogin_Click" Width="320px"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
