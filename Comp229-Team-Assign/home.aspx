<%@ Page Title="HomePage" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Comp229_Team_Assign.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/IndexStyleSheet.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="mainContain" ContentPlaceHolderID="mainContain" runat="server">
    <div id="content">
        <img id="bgPic" src="images/bgMain.jpg" />
        <h1>Global Health Care is commited to provide excellence Service.</h1>
        <p class="center">
            We are the family Health Provider for your family.<br />
            We are providing healthcare service for thousands of Torontonian.<br />
            Call us or register for an appiontment with our specialists. 
        </p>
        <asp:Button runat="server" ID="btnToRegistrationPage" Text="To Registration Page" OnClick="btnToRegistrationPage_Click" />
    </div>
</asp:Content>
