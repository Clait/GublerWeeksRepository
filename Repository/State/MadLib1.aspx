<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MadLib1.aspx.cs" Inherits="State_MadLib1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASP.NET Madlib Creator - Step 1</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>ASP.NET Madlib Creator</h1>
    <p>Step 1:  Enter the following types of nouns</p>
    <table>
        <tr>
            <td>Noun, plural:</td>
            <td><asp:TextBox ID="txtNoun1" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Noun:</td>
            <td><asp:TextBox ID="txtNoun2" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Noun:</td>
            <td><asp:TextBox ID="txtNoun3" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Noun:</td>
            <td><asp:TextBox ID="txtNoun4" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Noun:</td>
            <td><asp:TextBox ID="txtNoun5" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Noun:</td>
            <td><asp:TextBox ID="txtNoun6" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Noun:</td>
            <td><asp:TextBox ID="txtNoun7" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Noun:</td>
            <td><asp:TextBox ID="txtNoun8" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Noun:</td>
            <td><asp:TextBox ID="txtNoun9" runat="server"></asp:TextBox></td>
        </tr>
    </table>
    
    <asp:Button ID="btnNext" runat="server" Text="Next..." PostBackUrl="~/State/MadLib2.aspx"/>
    
    </div>
    
    </form>
</body>
</html>
