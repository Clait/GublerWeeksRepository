<%@ Page Language="C#" AutoEventWireup="true" CodeFile="12-State.aspx.cs" Inherits="FinalExam_12_State" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>12 - Page 1</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
            <asp:ListItem Text="Check Box 1" Value="1"></asp:ListItem>
            <asp:ListItem Text="Check Box 2" Value="2"></asp:ListItem>
            <asp:ListItem Text="Check Box 3" Value="3"></asp:ListItem>
            <asp:ListItem Text="Check Box 4" Value="4"></asp:ListItem>
            <asp:ListItem Text="Check Box 5" Value="5"></asp:ListItem>
            <asp:ListItem Text="Check Box 6" Value="6"></asp:ListItem>
            <asp:ListItem Text="Check Box 7" Value="7"></asp:ListItem>
            <asp:ListItem Text="Check Box 8" Value="8"></asp:ListItem>
            <asp:ListItem Text="Check Box 9" Value="9"></asp:ListItem>
        </asp:CheckBoxList>
        <br /><br />
        <asp:Button ID="Button1" runat="server" Text="Next..."  PostBackUrl="~/FinalExam/12-State_page2.aspx" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
