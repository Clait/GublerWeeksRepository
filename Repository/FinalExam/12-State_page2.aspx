<%@ Page Language="C#" AutoEventWireup="true" Debug="true" CodeFile="12-State_page2.aspx.cs" Inherits="FinalExam_12_State_page2" %>
<%@ PreviousPageType VirtualPath="~/FinalExam/12-State.aspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>12 - Page2</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem Text="Check Box 1"></asp:ListItem>
            <asp:ListItem Text="Check Box 2"></asp:ListItem>
            <asp:ListItem Text="Check Box 3"></asp:ListItem>
            <asp:ListItem Text="Check Box 4"></asp:ListItem>
            <asp:ListItem Text="Check Box 5"></asp:ListItem>
            <asp:ListItem Text="Check Box 6"></asp:ListItem>
            <asp:ListItem Text="Check Box 7"></asp:ListItem>
            <asp:ListItem Text="Check Box 8"></asp:ListItem>
            <asp:ListItem Text="Check Box 9"></asp:ListItem>
        </asp:CheckBoxList>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
