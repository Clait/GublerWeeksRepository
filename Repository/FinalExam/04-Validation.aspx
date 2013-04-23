<%@ Page Language="C#" AutoEventWireup="true" CodeFile="04-Validation.aspx.cs" Inherits="FinalExam_04_Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtStartDate" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ValidationGroup="date" Text="*" ErrorMessage="Please enter a date." ControlToValidate="txtStartDate"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server"  ValidationGroup="date" Text="*" ErrorMessage="Please choose a valid date." ControlToValidate="txtStartDate" Type="Date" MinimumValue="1/1/2000" MaximumValue="<%# DateTime.Today.ToShortDateString() %>"></asp:RangeValidator>
        <br /><br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="date"/>
        <asp:Button ID="Button1" runat="server" Text="Submit"  ValidationGroup="date"/>
    </div>
    </form>
</body>
</html>
