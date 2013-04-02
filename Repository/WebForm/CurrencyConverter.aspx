<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CurrencyConverter.aspx.cs" Inherits="WebForm_CurrencyConverter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
  <head runat="server">
    <title>Currency Converter</title>
  </head>
  <body>
    <form runat="server" id="form1">
      <div style="border-right: thin ridge; padding-right: 20px; border-top: thin ridge;
            padding-left: 20px; padding-bottom: 20px; border-left: thin ridge; width: 531px;
            padding-top: 20px; border-bottom: thin ridge; font-family: Verdana; height: auto;
            background-color: #FFFFE8">
        Convert:&nbsp;
        <input type="text" runat="server" id="US" />
        &nbsp;U.S. dollars to &nbsp;
          <select id ="Currency" runat="server" />
        <br /><br />
        <input type = "submit" value = "OK" ID = "Convert" OnServerClick = "Convert_ServerClick" runat = "server" />
        <input type="submit" value="Show Graph" runat="server" id="ShowGraph" onserverclick="ShowGraph_ServerClick"/>
        <br /><br />
        <img id="Graph" src="" alt="Currency Graph" runat="server" />          
        <br /><br />
        <p style="font-weight: bold" id ="Result" runat="server" > </p>
          <asp:HyperLink ID="HyperLink6" target="_blank" runat="server" NavigateUrl="~/WebForm/SecondPage.aspx">This is the link to the second page.</asp:HyperLink>
          <%--b. An HTML Input Submit button (HTML server control) that redirects the user to SecondPage.aspx using Response.Redirect. Text on the button should be ‘Response.Redirect to SecondPage.aspx’
              c. An HTML Input Submit button (HTML server control) that redirects the user to SecondPage.aspx using Server.Transfer. Text on the button should be ‘Server.Transfer to SecondPage.aspx’--%>
          <input id="ResponseRedirect" type="submit" runat="server" value="Response.Redirect to SecondPage.aspx" onserverclick="ResponseRedirect_ServerClick"/>
          <input id="ServerTransfer" type="submit" runat="server" value="Server.Transfer to SecondPage.aspx"   onserverclick="ServerTransfer_ServerClick" />
      </div>
    </form>
  </body>
</html>
