<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeLoanApplication-Form.aspx.cs" Inherits="HomeLoanApplication.HomeLoanApplication_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/Site.css" rel="stylesheet" type="text/css" />
    <title>Registration Form</title>
</head>
<body>
    <h1>Register</h1>
    <form id ="form1" runat="server">
        <asp:Panel runat="server" Visible="True" ID ="pnlForm">
            <table>
                <tr>
                    <td>First Name:</td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="validateFirstName" ControlToValidate="txtFirstName" ErrorMessage="First Name is required" CssClass="text-danger"></asp:RequiredFieldValidator>                        
                    </td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="validateLastName" ControlToValidate="txtLastName" ErrorMessage="Last Name is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Email Address:</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="validateEmail" ControlToValidate="txtEmail" ErrorMessage="Email is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regexEmail" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email" CssClass="text-danger"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Male:</td>
                    <td>
                        <asp:CheckBox ID="chkIsMale" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Female</td>
                    <td>
                        <asp:CheckBox ID="chkIsFemale" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>Street:</td>
                    <td>
                        <asp:TextBox ID="txtStreet" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="validateStreet" ControlToValidate="txtStreet" ErrorMessage="Street is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </td>
                </tr>        
                <tr>
                    <td>City:</td>
                    <td>
                        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="validateCity" ControlToValidate="txtCity" ErrorMessage="City is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>State:</td>
                    <td>
                        <asp:TextBox ID="txtState" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="validateState" ControlToValidate="txtState" ErrorMessage="State is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Zip Code:</td>
                    <td>
                        <asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="validateZipCode" ControlToValidate="txtZipCode" ErrorMessage="Zip Code is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Income:</td>
                    <td>
                        <asp:TextBox ID="txtIncome" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ID="validateIncome" ControlToValidate="txtIncome" ErrorMessage="Income is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Credit Score:</td>
                    <td>
                        <asp:DropDownList ID="drpListOfCreditScore" runat="server">
                            <asp:ListItem Text="Select One" Value=""></asp:ListItem>
                            <asp:ListItem Text="250" Value="250"></asp:ListItem>
                            <asp:ListItem Text="450" Value="450"></asp:ListItem>
                            <asp:ListItem Text="550" Value="550"></asp:ListItem>
                            <asp:ListItem Text="650" Value="650"></asp:ListItem>
                            <asp:ListItem Text="750" Value="750"></asp:ListItem>
                            <asp:ListItem Text="850" Value="850"></asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator runat="server" ID="validateCreditScore" ControlToValidate="drpListOfCreditScore" ErrorMessage="Credit Score is required" CssClass="text-danger"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <asp:Button runat="server" ID="btnSubmit" OnClick="btnSubmit_Click" Text="Submit" />
        </asp:Panel>
        <asp:Panel runat="server" ID="pnlThankYou" Visible="false">
           <h2><asp:Label runat="server" ID="lblStatus"></asp:Label></h2>
            <button><a href="Index.aspx">Return Home</a></button>
       </asp:Panel>
    </form>
</body>
</html>
