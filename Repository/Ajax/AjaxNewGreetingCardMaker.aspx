<%@ Page language="c#" Inherits="GreetingCardMaker.GreetingCardMaker" CodeFile="AjaxNewGreetingCardMaker.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Greeting Card Maker</title>
    </head>
	<body>
		<form runat="server">
		  <div>
			<div style="BORDER-RIGHT: thin ridge; PADDING-RIGHT: 20px; BORDER-TOP: thin ridge; PADDING-LEFT: 20px; FONT-SIZE: x-small; PADDING-BOTTOM: 20px; BORDER-LEFT: thin ridge; WIDTH: 293px; PADDING-TOP: 20px; BORDER-BOTTOM: thin ridge; FONT-FAMILY: Verdana; HEIGHT: 596px; 
                        BACKGROUND-COLOR: lightgrey">Choose a background color:<br />
				<asp:dropdownlist ID="lstBackColor" runat="server" Height="22px" Width="194px" AutoPostBack="true" OnSelectedIndexChanged="ControlChanged">
<%--                <asp:ListItem>White</asp:ListItem>
                    <asp:ListItem>Red</asp:ListItem>
                    <asp:ListItem>Green</asp:ListItem>
                    <asp:ListItem>Blue</asp:ListItem>
                    <asp:ListItem>Yellow</asp:ListItem>--%>
                </asp:dropdownlist>
				<br />
                <br />
				Choose a font:<br />
				<asp:dropdownlist ID="lstFontName" runat="server" Height="22px" Width="194px" AutoPostBack="true" OnSelectedIndexChanged="ControlChanged"></asp:dropdownlist>
				<br />
                <br />
				Specify a numeric font size:<br />
				<asp:textbox ID="txtFontSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ControlChanged"></asp:textbox>
				<br />
                <br />
				Choose a border style:<br />
				<asp:radiobuttonlist ID="lstBorder" runat="server" Height="59px" Width="177px" Font-Size="X-Small" AutoPostBack="true" OnSelectedIndexChanged="ControlChanged" RepeatColumns="2"></asp:radiobuttonlist>
				<br />
                <br />
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ControlChanged">
                    <asp:ListItem Value="~/WebControls/birthday.png">Birthday</asp:ListItem>
                    <asp:ListItem Value="~/WebControls/christmas.png">Christmas</asp:ListItem>
                    <asp:ListItem Value="~/WebControls/get_well.gif">Get Well</asp:ListItem>
                    <asp:ListItem Value="~/WebControls/graduation.jpg">Graduation</asp:ListItem>
                    <asp:ListItem Value="~/WebControls/valentine.jpg">Valentine&#39;s Day</asp:ListItem>
                </asp:CheckBoxList>
                <br />
				Enter the greeting text below:<br />
				<asp:textbox ID="txtGreeting" runat="server" Height="85px" Width="240px" 
                    AutoPostBack="true" TextMode="MultiLine" OnTextChanged="cmdUpdate_Click"></asp:textbox>
				<br />
                <br />
                Let them know who the card is from:<br />
				<asp:textbox ID="txtFrom" runat="server" AutoPostBack="true" OnTextChanged="cmdUpdate_Click"></asp:textbox>
   			    <br />
                <br />
                <%--<asp:button ID="cmdUpdate" runat="server" Height="24px" Width="71px" Text="Update Text" onclick="cmdUpdate_Click"></asp:button>--%>
			</div>
              <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                  <ContentTemplate>
			        <asp:panel ID="pnlCard" style="Z-INDEX: 101; LEFT: 350px; POSITION: absolute; TOP: 16px" runat="server" 
			        Height="507px" Width="339px" HorizontalAlign="Center">
                        <br />&nbsp; 
                        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
			            <asp:Label ID="lblGreeting" runat="server" Height="150px" Width="256px"></asp:Label>
                        <br />
			            <asp:Label ID="lblFrom" runat="server" Height="100px" Width="256px"></asp:Label>
				        <br /><br /><br />
			        </asp:panel>
                  </ContentTemplate>
              </asp:UpdatePanel>
              <br /><br />

	      </div>
              <asp:UpdateProgress ID="UpdateProgress1" runat="server" DisplayAfter="1">
                  <ProgressTemplate>Processing... </ProgressTemplate>
                  <ProgressTemplate>
                      <asp:Image ID="Image1" runat="server" ImageUrl="~/Ajax/Processing.gif" />
                  </ProgressTemplate>
              </asp:UpdateProgress>
		</form>
	</body>
</html>
