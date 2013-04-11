<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Membership_Admin" MaintainScrollPositionOnPostback="true" %>

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
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDataBound="GridView1_RowDataBound" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="UserName">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="UserName" HeaderText="User Name" ReadOnly="True" SortExpression="UserName" />
                <asp:BoundField DataField="Email" HeaderText="Email Address" ReadOnly="True" SortExpression="Email" />
                <asp:TemplateField HeaderText="Is Admin">
                    <EditItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:ButtonField CommandName="Select" Text="View Profile" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <table style="border-style: ridge; width: 200px; height: 172px; font-size: 10pt;">
            <tr>
                <td>First Name</td>
                <td>
            <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Last Name</td>
                <td class="auto-style1">
            <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Phone</td>
                <td>
            <asp:Label ID="Label3" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Street</td>
                <td>
            <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>City</td>
                <td>
            <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>State</td>
                <td>
            <asp:Label ID="Label6" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Zip</td>
                <td>
            <asp:Label ID="Label7" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>Country</td>
                <td>
            <asp:Label ID="Label8" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
