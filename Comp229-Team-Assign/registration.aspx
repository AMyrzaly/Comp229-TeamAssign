<%@ Page Title="Registration" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="Comp229_Team_Assign.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="mainContain" ContentPlaceHolderID="mainContain" runat="server">
    <div class="container">
        <div class="row well">
            <div class="col-md-4 col-md-offset-1 col-sm-6 col-xs-12">
                
                
                <label for="firstNameLabel">First Name</label>
                <asp:TextBox ID="txtFirstName" CssClass="form-control" runat="server" />
                <div>
                    <asp:RequiredFieldValidator ID="txtFirstNameReqFieldValidator"
                        runat="server"
                        CssClass="validationError"
                        ControlToValidate="txtFirstName"
                        ErrorMessage="* Please enter First Name"
                        ValidationGroup="Registration"
                        required="true" />
                </div>

                <label for="lastNameLabel">Last Name</label>
                <asp:TextBox ID="txtLastName" CssClass="form-control" runat="server" />
                <div>
                    <asp:RequiredFieldValidator ID="txtLastNameReqFieldValidator"
                        runat="server"
                        CssClass="validationError"
                        ControlToValidate="txtLastName"
                        ErrorMessage="* Please enter Last Name"
                        ValidationGroup="Registration"
                        required="true" />
                </div>

                <label for="UsernameLabel">Username</label>
                <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server" />
                <div>
                    <asp:RequiredFieldValidator ID="UsernameReqFieldValidator"
                        runat="server"
                        CssClass="validationError"
                        ControlToValidate="txtUsername"
                        ErrorMessage="* Please enter Username"
                        ValidationGroup="Registration"
                        required="true" />
                </div>
                <label for="newPasswordLabel">Password</label>
                <asp:TextBox ID="txtPassword" CssClass="form-control" TextMode="Password" runat="server" />
                <div>
                    <asp:RequiredFieldValidator ID="newPasswordReqFieldValidator"
                        runat="server"
                        CssClass="validationError"
                        ControlToValidate="txtPassword"
                        ErrorMessage="* Please enter a password"
                        ValidationGroup="Registration"
                        required="true" />
                </div>

  
                <label for="confirmPassword">Confirm Password</label>
                <asp:TextBox ID="txtConfirmPassword" CssClass="form-control" TextMode="Password" runat="server" />
                <div>
                    <asp:RequiredFieldValidator ID="txtConfirmPasswordReqFieldValidator"
                        runat="server"
                        CssClass="validationError"
                        ControlToValidate="txtConfirmPassword"
                        ErrorMessage="* Please re-enter password"
                        ValidationGroup="Registration"
                        required="true" />
                </div>
                <div>
                    <asp:CompareValidator ID="newPasswordCompareValidator"
                        runat="server"
                        ControlToValidate="txtConfirmPassword"
                        CssClass="validationError"
                        ControlToCompare="txtPassword"
                        ErrorMessage="Passwords don't match"
                        ValidationGroup="Registration"
                        ToolTip="Password must be the same" />
                </div>

                <label for="emailLabel">Email</label>
                <asp:TextBox ID="txtEmail"
                    CssClass="form-control"
                    runat="server" />
                <div>
                    <asp:RequiredFieldValidator ID="txtEmailReqFieldValidator"
                        runat="server"
                        CssClass="validationError"
                        ControlToValidate="txtEmail"
                        ErrorMessage="* Please enter your Email"
                        ValidationGroup="Registration"
                        required="true" /><br />

                    <asp:RegularExpressionValidator ID="regexEmailValidator"
                        runat="server"
                        CssClass="validationError"
                        ControlToValidate="txtEmail"
                        ValidationGroup="Registration"
                        ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ErrorMessage="* Invalid Email format" />
                </div>
                <div>
                    <label for="gender">Gender</label><br />
                    <asp:RadioButton ID="maleRdb"
                        runat="server"
                        Checked="true"
                        GroupName="gender"
                        Text="Male" />
                    <asp:RadioButton ID="femaleRdb"
                        runat="server"
                        GroupName="gender"
                        Text="Female" />
                </div>
                <br />
                <label for="birthDateLabel">Date of Birth</label>
                <asp:TextBox ID="txtBirthDate"
                    CssClass="form-control en-date"
                    TextMode="Date"
                    PlaceHolder="yyyy-mm-dd"
                    runat="server" />
                <div>
                    <asp:RequiredFieldValidator ID="txtBirthDateReqFieldValidator"
                        runat="server"
                        CssClass="validationError"
                        ControlToValidate="txtBirthDate"
                        ErrorMessage="* Please enter Birth Date"
                        ValidationGroup="Registration"
                        required="true"
                        Display="Dynamic" />
                </div>
            </div>
            <div class="col-md-4 col-md-offset-1 col-sm-6 col-xs-12">
                <%--Metric button--%>
                <asp:Button ID="metricBtn"
                    CssClass="btn"
                    Text="Metric"
                    OnClick="metricBtn_Click"
                    runat="server" />

                <%--Imperial Button--%>
                <asp:Button ID="imperialBtn"
                    CssClass="btn"
                    Text="Imperial"
                    OnClick="imperialBtn_Click"
                    runat="server" /><br />
                <br />



                <%--Height--%>
                <label for="heightLabel">Height</label>
                <asp:DropDownList ID="HeightDropDownList" runat="server">
                    <asp:ListItem Text="" Value=""></asp:ListItem>
                </asp:DropDownList>


                <%--Weight--%>
                <label for="weightLabel">Weight</label>
                <asp:DropDownList ID="WeightDropDownList" runat="server">
                    <asp:ListItem Text="" Value=""></asp:ListItem>
                </asp:DropDownList><br />

                <asp:RequiredFieldValidator ID="HeightReqFieldValidator"
                    runat="server"
                    CssClass="validationError"
                    ControlToValidate="HeightDropDownList"
                    ErrorMessage="* Please enter Height"
                    ValidationGroup="Registration"
                    required="true"
                    Display="Dynamic" />

                <asp:RequiredFieldValidator ID="WeightReqFieldValidator"
                    runat="server"
                    CssClass="validationError"
                    ControlToValidate="WeightDropDownList"
                    ErrorMessage="* Please enter Weight"
                    ValidationGroup="Registration"
                    required="true"
                    Display="Dynamic" /><br />


                <%--City--%>
                <label for="firstCity">City</label>
                <asp:TextBox ID="txtCity" CssClass="form-control" runat="server" />
                <div>
                    <asp:RequiredFieldValidator ID="txtCityReqFieldValidator"
                        runat="server"
                        CssClass="validationError"
                        ControlToValidate="txtCity"
                        ErrorMessage="* Please enter City"
                        ValidationGroup="Registration"
                        required="true" />
                </div>

                <%--Postal Code--%>
                <label for="postalCode">Postal Code</label>
                <asp:TextBox ID="txtPostalCode" CssClass="form-control" runat="server" />
                <div>
                    <asp:RequiredFieldValidator ID="txtPostalCodeReqFieldValidator"
                        runat="server"
                        CssClass="validationError"
                        ControlToValidate="txtPostalCode"
                        ErrorMessage="* Please enter Postal Code"
                        ValidationGroup="Registration"
                        required="true" /><br />

                    <asp:RegularExpressionValidator ID="RegExValidator"
                        runat="server"
                        CssClass="validationError"
                        ControlToValidate="txtPostalCode"
                        ValidationGroup="Registration"
                        ValidationExpression="^([ABCEGHJKLMNPRSTVXY]\d[ABCEGHJKLMNPRSTVWXYZ])\ {0,1}(\d[ABCEGHJKLMNPRSTVWXYZ]\d)$"
                        ErrorMessage="* Invalid Postal Code" />
                </div>

                <%--Address--%>
                <label for="addressLabel">Address</label>
                <asp:TextBox ID="txtAddress"
                    CssClass="form-control"
                    runat="server" />
                <div>
                    <asp:RequiredFieldValidator ID="txtAddressReqFieldValidator"
                        runat="server"
                        CssClass="validationError"
                        ControlToValidate="txtAddress"
                        ErrorMessage="* Please enter Address"
                        ValidationGroup="Registration"
                        required="true" />
                </div>

                <%--Province--%>
                <label for="birthDateLabel">Province</label>
                <asp:DropDownList ID="ProvinceDropDownList"
                    runat="server">
                    <asp:ListItem>ON</asp:ListItem>
                    <asp:ListItem>QC</asp:ListItem>
                    <asp:ListItem>NS</asp:ListItem>
                    <asp:ListItem>NB</asp:ListItem>
                    <asp:ListItem>MB</asp:ListItem>
                    <asp:ListItem>BC</asp:ListItem>
                    <asp:ListItem>PE</asp:ListItem>
                    <asp:ListItem>SK</asp:ListItem>
                    <asp:ListItem>AB</asp:ListItem>
                    <asp:ListItem>NL</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />

                
            </div>
        </div>
        <div class="row">
                
                <asp:Button runat="server" ID="registerBtn" CssClass="btn btn-success"Text="Create Account"
                ValidationGroup="Registration" OnClick="registerBtn_Click"/>
            </div>
    </div>
</asp:Content>
