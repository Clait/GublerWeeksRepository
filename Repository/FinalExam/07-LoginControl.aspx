<%@ Page Language="C#" AutoEventWireup="true" CodeFile="07-LoginControl.aspx.cs" Inherits="FinalExam_7_LoginControl" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:LoginView ID="LoginView1" runat="server">
            <AnonymousTemplate>
                You are not logged in.
            </AnonymousTemplate>
            <LoggedInTemplate>
                Welcome, <asp:LoginName ID="LoginName1" runat="server" />!
            </LoggedInTemplate>
        </asp:LoginView>
        <asp:LoginStatus ID="LoginStatus1" runat="server" />
    </div>
    </form>
</body>
</html>
