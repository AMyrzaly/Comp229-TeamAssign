<%@ Page Title="Appointment" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="appointment.aspx.cs" Inherits="Comp229_Team_Assign.appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="mainContain" ContentPlaceHolderID="mainContain" runat="server">
    <div id="register">
        <div class="container">
            <div class="row well-lg">
                <div class="col-md-4 col-md-offset-1 col-sm-6 col-xs-12">
                    <label for="firstNameLabel">First Name</label>
                    <asp:TextBox ID="txtbxFirstName" CssClass="form-control" runat="server" />
                    <div>
                        <asp:RequiredFieldValidator ID="txtFirstNameReqFieldValidator"
                            runat="server"
                            CssClass="validationError"
                            ControlToValidate="txtbxFirstName"
                            ErrorMessage="* Please enter First Name"
                            ValidationGroup="Registration"
                            required="true" />
                    </div>

                    <label for="lastNameLabel">Last Name</label>
                    <asp:TextBox ID="txtbxLastName" CssClass="form-control" runat="server" />

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
                        <br />
                        <br />
                        <%--Doctors lust--%>
                        <asp:Label ID="Doctor" runat="server" Font-Bold="True" Font-Italic="False" Text="Doctor "></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem Selected="True">General Doctor</asp:ListItem>
                            <asp:ListItem>Gastroenterologist</asp:ListItem>
                            <asp:ListItem>Gynaecologist</asp:ListItem>
                            <asp:ListItem>Dermatologist</asp:ListItem>
                            <asp:ListItem>Pediatrician</asp:ListItem>
                            <asp:ListItem>Oncologist</asp:ListItem>
                            <asp:ListItem>Phychiatrist</asp:ListItem>
                            <asp:ListItem>Dentist</asp:ListItem>
                            <asp:ListItem>Physycian</asp:ListItem>
                            <asp:ListItem>Orologist</asp:ListItem>
                            <asp:ListItem>Surgeon</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-md-4 col-md-offset-1 col-sm-6 col-xs-12">



                    <%--Postal Code--%>
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

                    <%--Address--%>
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

                    <%--Telephone--%>
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
                    <label for="telephoneLabel">Telephone</label>
                    <asp:TextBox ID="txtTelephone"
                        CssClass="form-control"
                        runat="server" />
                    <div>
                        <asp:RequiredFieldValidator ID="txtTelephoneReqFieldValidator"
                            runat="server"
                            CssClass="validationError"
                            ControlToValidate="txtTelephone"
                            ErrorMessage="* Please enter Telephone Number"
                            ValidationGroup="Registration"
                            required="true" />
                    </div>
                    <%--<asp:Button runat="server" ID="btnRegister" CssClass="btn btn-success" Text="Create Account"
                    ValidationGroup="Registration" OnClick="btnRegister_Click" /> --%>
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
                    <%--Date of apppointment--%>
                    <asp:Label ID="Doctor0" runat="server" Font-Bold="True" Font-Italic="False" Text="Date of appointment: "></asp:Label>
                    <br />
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    <br />


                </div>
            &nbsp;&nbsp;&nbsp;
            </div>
            <div class="row">

                <asp:Button runat="server" ID="btnRegister" CssClass="btn btn-success" Text="Make an appointment"
                    ValidationGroup="Registration" OnClick="btnRegister_Click" /> 
            </div>
        </div>
    </div>
</asp:Content>
