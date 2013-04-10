<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TestAjax.aspx.cs" Inherits="Ajax_TestAjax" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:Image ID="Image1" runat="server" src="counter.gif"/><br />
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="Button3" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>
        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="3000" OnTick="Button1_Click"></asp:Timer>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button1_Click" />
            </ContentTemplate>
        </asp:UpdatePanel>

        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Text="Button" />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>


    </div>
        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
            <ProgressTemplate>
                Processing...
            </ProgressTemplate>
        </asp:UpdateProgress>
    </form>
</body>
</html>
