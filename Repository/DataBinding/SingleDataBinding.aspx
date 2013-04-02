<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SingleDataBinding.aspx.cs" Inherits="DataBinding_SingleDataBinding" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" ><%# DateTime.Now %></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="<%# URL %>"></asp:Label>
        <br />
        <asp:CheckBox ID="CheckBox1" Text="<%# URL %>" runat="server" />
        <br />
        <asp:HyperLink ID="link1" runat="server" Text="Click Here!" NavigateUrl="<%# URL %>"></asp:HyperLink>
        <br />
        <asp:Image ID="Image1" runat="server" ImageURL="<%# URL %>"/>
    </div>
    </form>
</body>
</html>
