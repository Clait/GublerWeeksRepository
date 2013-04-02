<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MadLib3.aspx.cs" Inherits="State_MadLib3" %>
<%@ PreviousPageType VirtualPath="~/State/MadLib2.aspx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP.NET Madlib Creator - Step 3</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>ASP.NET Madlib Creator</h1>
    <p>Step 3:  Enter the following types of verbs</p>
    <table>
        <tr>
            <td>Verb, transitive, present tense:</td>
            <td><asp:TextBox ID="txtVerb1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Verb, transitive, present tense:</td>
            <td><asp:TextBox ID="txtVerb2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Verb, transitive, present tense:</td>
            <td><asp:TextBox ID="txtVerb3" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Verb, intransitive, present tense:</td>
            <td><asp:TextBox ID="txtVerb4" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Verb, transitive, present tense:</td>
            <td><asp:TextBox ID="txtVerb5" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Verb, transitive, present tense:</td>
            <td><asp:TextBox ID="txtVerb6" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Verb, transitive, present tense:</td>
            <td><asp:TextBox ID="txtVerb7" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Verb, transitive, present tense:</td>
            <td><asp:TextBox ID="txtVerb8" runat="server"></asp:TextBox></td>
        </tr>

    </table>
    
    <asp:Button ID="btnNext" runat="server" Text="Create Madlib!" OnClick="btnNext_Click" />
    
    </div>
    
    </form>
</body>
</html>
