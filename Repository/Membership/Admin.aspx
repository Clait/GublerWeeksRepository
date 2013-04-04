<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Membership_Admin" %>

<%@ Register src="CurrentUserInfo.ascx" tagname="CurrentUserInfo" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <uc1:CurrentUserInfo ID="CurrentUserInfo1" runat="server" />
    </form>
</body>
</html>
