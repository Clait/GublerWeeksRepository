<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MadLibFinal.aspx.cs" Inherits="State_MadLibFinal" %>
<%@ PreviousPageType VirtualPath="~/State/MadLib3.aspx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server" BackColor="Silver" BorderColor="#000099" 
        BorderStyle="Groove" BorderWidth="2px" HorizontalAlign="Center" Width="70%">
    <div>
    <h1>The [Ammended] Preamble of the Constitution of the United States</h1>
    <p>We the 
            <asp:Label ID="lblNoun1" runat="server" ForeColor="Red"></asp:Label>
            of the United States, in order to 
            <asp:Label ID="lblVerb1" runat="server" ForeColor="Red"></asp:Label>
             a more  
             <asp:Label ID="lblAdj1" runat="server" ForeColor="Red"></asp:Label>  
             <asp:Label ID="lblNoun2" runat="server" ForeColor="Red"></asp:Label>,
             <asp:Label ID="lblVerb2" runat="server" ForeColor="Red"></asp:Label> 
             <asp:Label ID="lblNoun3" runat="server" ForeColor="Red"></asp:Label>, 
             <asp:Label ID="lblVerb3" runat="server" ForeColor="Red"></asp:Label>
             <asp:Label ID="lblAdj2" runat="server" ForeColor="Red"></asp:Label> 
             <asp:Label ID="lblNoun4" runat="server" ForeColor="Red"></asp:Label>, 
             <asp:Label ID="lblVerb4" runat="server" ForeColor="Red"></asp:Label>
             for the
             <asp:Label ID="lblAdj3" runat="server" ForeColor="Red"></asp:Label> 
             <asp:Label ID="lblNoun5" runat="server" ForeColor="Red"></asp:Label>, 
             <asp:Label ID="lblVerb5" runat="server" ForeColor="Red"></asp:Label>
             the
             <asp:Label ID="lblAdj4" runat="server" ForeColor="Red"></asp:Label>
             <asp:Label ID="lblNoun6" runat="server" ForeColor="Red"></asp:Label>,
             and
             <asp:Label ID="lblVerb6" runat="server" ForeColor="Red"></asp:Label>
             the blessings of 
             <asp:Label ID="lblNoun7" runat="server" ForeColor="Red"></asp:Label>
             to ourselves and our
             <asp:Label ID="lblNoun8" runat="server" ForeColor="Red"></asp:Label>,
             do
             <asp:Label ID="lblVerb7" runat="server" ForeColor="Red"></asp:Label>
             and
             <asp:Label ID="lblVerb8" runat="server" ForeColor="Red"></asp:Label>
             this
             <asp:Label ID="lblNoun9" runat="server" ForeColor="Red"></asp:Label>
             for the United States of America.       


</p>


        <asp:Button ID="btnStartOver" runat="server" Text="Start Again" OnClick="btnStartOver_Click" />
    </div>
    </asp:Panel>
    </form>
</body>
</html>
