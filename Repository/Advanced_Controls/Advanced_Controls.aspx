<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Advanced_Controls.aspx.cs" Inherits="Advanced_Controls_Advanced_Controls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:AdRotator ID="Ads" runat="server" AdvertisementFile="adrotator.xml" Target="_blank" KeywordFilter="Computer" />
        <asp:HyperLink ID="lnkBanner" runat="server"></asp:HyperLink>
    </div>
        <asp:Calendar ID="Calendar1" runat="server" OnDayRender="Calendar1_DayRender" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
        <br /><asp:Label ID="Label1" runat="server"></asp:Label>
    </form>
</body>
</html>
