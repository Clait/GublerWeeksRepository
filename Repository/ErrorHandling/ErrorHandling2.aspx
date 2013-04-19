<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ErrorHandling2.aspx.cs" Inherits="ErrorHandling_ErrorHandling1" trace="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Dividend: <asp:TextBox ID="TextBox1" runat="server">(a)</asp:TextBox>
        <br />
        <br />
        Divisor: <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Divide a/b" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
