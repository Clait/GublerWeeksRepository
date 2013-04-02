<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ViewState.aspx.cs" Inherits="State_ViewState" EnableViewState="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="Label1" runat="server" Text="Hello World" EnableViewState="true"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Change Text of Label" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Change Label Forecolor" OnClick="Button2_Click" />
        <asp:Button ID="Button8" runat="server" Text="Change Label Forecolor" OnClick="Button8_Click" />
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Width="342px" EnableViewState="true">I love ASP.NET!</asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Text="Change Text of Textbox" OnClick="Button3_Click" /><asp:Button ID="Button4" runat="server" Text="Set Textbox to ReadOnly" OnClick="Button4_Click" />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" EnableViewState="true">
                <asp:ListItem>Bella</asp:ListItem>
                <asp:ListItem>Alice</asp:ListItem>
                <asp:ListItem>Esther</asp:ListItem>
                <asp:ListItem>Clait</asp:ListItem>
                <asp:ListItem>Kaden</asp:ListItem>
            </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" Text="Change SelectedIndex of DropDownList" OnClick="Button5_Click" /><asp:Button ID="Button6" runat="server" Text="Change DDL BackColor" OnClick="Button6_Click" />
        <br />
        <br />
        <asp:Button ID="Button7" runat="server" Text="Post Back Page" OnClick="Button7_Click" PostBack="true"/>
        <br />
        <br />
        <asp:Label ID="lblCount" runat="server" Text="Counter: " EnableViewState="true"></asp:Label>
        <br />
        <asp:Label ID="Count" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
