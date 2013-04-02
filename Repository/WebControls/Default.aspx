<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="WebControls_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Controls</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Web Controls</h3>
            <asp:HyperLink ID="HyperLink2" target="_blank" runat="server" NavigateUrl="~/WebControls/ControlDemo/GreetingCardMaker.aspx">Greeting Card Maker</asp:HyperLink>
        <br />
            <asp:HyperLink ID="HyperLink1" target="_blank" runat="server" NavigateUrl="~/WebControls/NewGreetingCardMaker.aspx">New Greeting Card Maker</asp:HyperLink>

    </div>
    </form>
</body>
</html>
