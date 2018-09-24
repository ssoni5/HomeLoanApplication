<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="HomeLoanApplication.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Loan Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Home Loan Registration</h1>
        <p>
            <asp:Label runat="server" ID="lblMessage" Visible="False"></asp:Label>
        </p>
        <div>
            <asp:DetailsView ID="dtList" AllowPaging="True" runat="server" OnPageIndexChanging="SubmitCustomerList_PageIndexChanging"></asp:DetailsView>
        </div>
        <p>
            <button><a href="HomeLoanApplication-Form.aspx">Register Now</a></button>
        </p>
    </form>
</body>
</html>
