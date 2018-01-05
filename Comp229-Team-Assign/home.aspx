<%@ Page Title="HomePage" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Comp229_Team_Assign.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/IndexStyleSheet.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="mainContain" ContentPlaceHolderID="mainContain" runat="server">


    <div class="container" style="width:1010px">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">

                <div class="item active">
                    <img src="images/bg.jpg" alt="Toronto" style="width: 980px; height: 600px;">
                    <div class="carousel-caption">
                        <h3>Toronto</h3>
                        <p>We are in Toronto now!</p>
                    </div>
                </div>

                <div class="item">
                    <img src="images/tech.jpeg" alt="Tech" style="width: 980px; height: 600px;">
                    <div class="carousel-caption">
                        <h3>Tech</h3>
                        <p>We have the latest technologies in the market!</p>
                    </div>
                </div>

                <div class="item">
                    <img src="images/banner_client.jpg" alt="Client" style="width: 980px; height: 600px;">
                    <div class="carousel-caption">
                        <h3>Clients</h3>
                        <p>We have an individual approach to each clienе!</p>
                    </div>
                </div>

            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>




    <div id="content">
        <h1>Global Health Care is commited to provide excellence Service.</h1>
        <p class="center">
            We are the family Health Provider for your family.<br />
            We are providing healthcare service for thousands of Torontonian.<br />
            Call us or register for an appiontment with our specialists. 
        </p>
        <p>
            If you are not our user, you can register by click button below:
        </p>
        <asp:Button class="btn-lg" runat="server" ID="btnToRegistrationPage" Text="To Registration Page" OnClick="btnToRegistrationPage_Click" />
    </div>
</asp:Content>
