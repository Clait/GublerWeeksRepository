<%@ Page Language="C#" AutoEventWireup="true" CodeFile="11-Profiles.aspx.cs" Inherits="FinalExam_11_Profiles" %>
<%@ Register src="~/Membership/CurrentUserInfo.ascx" tagname="CurrentUserInfo" tagprefix="uc1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        First Name: <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
        Last Name:  <asp:Label ID="Label2" runat="server" Text=""></asp:Label><br />
        Birth Date: <asp:Label ID="Label3" runat="server" Text=""></asp:Label><br />
        Shoe Size:  <asp:Label ID="Label4" runat="server" Text=""></asp:Label><br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Set shoe size" OnClick="SetShoeSize" />
        <asp:Button ID="Button2" runat="server" Text="Change bigfoot's shoe size" OnClick="SetBigFootShoeSize" />
    </div>
    </form>
</body>
</html>
