<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CurrentUserInfo.ascx.cs" Inherits="Membership_WebUserControl" %>
<h1>Welcome <asp:LoginName ID="LoginName1" runat="server" />

</h1><p>
    <a href="Welcome.aspx">Go back to Welcome Page</a></p>
<br />
<asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em">
    <CancelButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
    <ChangePasswordButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
    <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" />
    <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
    <PasswordHintStyle Font-Italic="True" ForeColor="#888888" />
    <TextBoxStyle Font-Size="0.8em" />
    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
</asp:ChangePassword>
<p>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</p>
<p>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
    <asp:Table ID="Table2" runat="server" Height="77px" Width="791px">
    </asp:Table>
</p>
<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update Profile" />

