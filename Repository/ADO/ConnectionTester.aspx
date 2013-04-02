<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ConnectionTester.aspx.cs" Inherits="ConnectionTester" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
		<asp:button id="cmdConnect" runat="server" Text="Connect" onclick="cmdConnect_Click"></asp:button>
		<br />
        <br />
		<asp:label id="lblInfo" runat="server" Height="128px" Width="464px" Font-Size="Small" Font-Names="Verdana" ForeColor="Maroon"></asp:label>
    </div>
    </form>
</body>
</html>
