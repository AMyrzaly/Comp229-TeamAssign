<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="Comp229_Team_Assign.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContain" runat="server">

    <div class="container-fluid bg-grey">
        <h2 class="text-center">CONTACT</h2>
        <div class="row">
            <div class="col-sm-5">
                <p>Contact us and we'll get back to you within 24 hours.</p>
                <p><span class="glyphicon glyphicon-map-marker"></span> Toronto, Canada</p>
                <p><span class="glyphicon glyphicon-phone"></span>+1(647) 1515151515</p>
                <p><span class="glyphicon glyphicon-envelope"></span> globalhealthcare@gmail.com</p>
            </div>
            <div class="col-sm-7">
                <div class="row">
                    <div class="col-sm-6 form-group">
                        <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
                    </div>
                    <div class="col-sm-6 form-group">
                        <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
                    </div>
                </div>
                <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br>
                <div class="row">
                    <div class="col-sm-12 form-group">
                        <button class="btn btn-default pull-right" type="submit">
                            <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="36px" OnClick="Button1_Click" Text="Send" Width="91px" />
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
