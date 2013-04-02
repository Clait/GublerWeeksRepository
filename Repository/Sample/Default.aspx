<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Sample_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sample Default</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h3>Sample</h3>
         <asp:HyperLink ID="HyperLink1" target="_blank" runat="server" NavigateUrl="~/Sample/Page1.aspx">Page 1</asp:HyperLink>
        <br />
         <asp:HyperLink ID="HyperLink2" target="_blank" runat="server" NavigateUrl="~/Sample/Page2.aspx">Page 2</asp:HyperLink> 
    </div>
    </form>
</body>
</html>
