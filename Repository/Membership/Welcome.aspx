<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Welcome.aspx.cs" Inherits="Membership_Welcome" %>

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
                You are not logged in. Please login <a href="Login.aspx">here</a>.
            </AnonymousTemplate>
            <RoleGroups>
                <asp:RoleGroup Roles="Admin">
                    <ContentTemplate>
                        <a href="Admin.aspx">Admin.aspx</a>&nbsp;
                        <br />
                        <a href="User.aspx">User.aspx</a><br />
                        <asp:LoginStatus ID="LoginStatus2" runat="server" />
                    </ContentTemplate>
                </asp:RoleGroup>
                <asp:RoleGroup Roles="User">
                    <ContentTemplate>
                        <a href="User.aspx">User.aspx</a>
                        <asp:LoginStatus ID="LoginStatus1" runat="server" />
                    </ContentTemplate>
                </asp:RoleGroup>
            </RoleGroups>
        </asp:LoginView>
    </div>
    </form>
</body>
</html>
