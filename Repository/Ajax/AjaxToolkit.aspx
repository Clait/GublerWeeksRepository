<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AjaxToolkit.aspx.cs" Inherits="Ajax_AjaxToolkit" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ajax Toolkit</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
        <asp:Panel ID="Panel1" runat="server" BackColor="#5588BB" BorderColor="#003399" 
                        BorderWidth="5px" Width="255px" style="margin-right: 7px; margin-left: 12px" >
                <asp:Accordion ID="Accordion1" runat="server" style="margin: 20px;" >
                    <Panes>
                        <asp:AccordionPane ID="AccordionPane1" runat="server">
                            <Header>Pane 1</Header>
                                <Content>This is pane 1<br />
                                    There are tons of extra Ajax controls implemented on the ajax greeting card maker <asp:HyperLink ID="HyperLink67" target="_blank" runat="server" NavigateUrl="~/Ajax/AjaxNewGreetingCardMaker.aspx" >here: AjaxNewGreetingCardMaker.aspx</asp:HyperLink></Content>
                        </asp:AccordionPane>
                        <asp:AccordionPane ID="AccordionPane2" runat="server">
                            <Header>Pane 2</Header>
                                <Content>This is pane 2<br />
                                    There are tons of extra Ajax controls implemented on the ajax greeting card maker <asp:HyperLink ID="HyperLink1" target="_blank" runat="server" NavigateUrl="~/Ajax/AjaxNewGreetingCardMaker.aspx" >here: AjaxNewGreetingCardMaker.aspx</asp:HyperLink></Content>
                        </asp:AccordionPane>
                        <asp:AccordionPane ID="AccordionPane3" runat="server">
                            <Header>Pane 3</Header>
                                <Content>This is pane 3<br />
                                    There are tons of extra Ajax controls implemented on the ajax greeting card maker <asp:HyperLink ID="HyperLink2" target="_blank" runat="server" NavigateUrl="~/Ajax/AjaxNewGreetingCardMaker.aspx" >here: AjaxNewGreetingCardMaker.aspx</asp:HyperLink></Content>
                        </asp:AccordionPane>
                        <asp:AccordionPane ID="AccordionPane4" runat="server">
                            <Header>Pane 4</Header>
                                <Content>This is pane 4<br />
                                    There are tons of extra Ajax controls implemented on the ajax greeting card maker <asp:HyperLink ID="HyperLink3" target="_blank" runat="server" NavigateUrl="~/Ajax/AjaxNewGreetingCardMaker.aspx" >here: AjaxNewGreetingCardMaker.aspx</asp:HyperLink></Content>
                        </asp:AccordionPane>
                        <asp:AccordionPane ID="AccordionPane5" runat="server">
                            <Header>Pane 5</Header>
                                <Content>This is pane 5<br />
                                    There are tons of extra Ajax controls implemented on the ajax greeting card maker <asp:HyperLink ID="HyperLink4" target="_blank" runat="server" NavigateUrl="~/Ajax/AjaxNewGreetingCardMaker.aspx" >here: AjaxNewGreetingCardMaker.aspx</asp:HyperLink></Content>
                        </asp:AccordionPane>
                    </Panes>
                </asp:Accordion>
        </asp:Panel>
                <asp:RoundedCornersExtender ID="Panel1_RoundedCornersExtender" runat="server" Enabled="True" TargetControlID="Panel1">
        </asp:RoundedCornersExtender>
                <asp:DragPanelExtender ID="Panel1_DragPanelExtender" runat="server" DragHandleID="Panel1" Enabled="True" TargetControlID="Panel1">
                </asp:DragPanelExtender>
                <asp:DropShadowExtender ID="Panel1_DropShadowExtender" runat="server" Enabled="True" TargetControlID="Panel1">
                </asp:DropShadowExtender>
        <br />
        <br />
        <asp:Panel ID="Panel2" runat="server" style="Z-INDEX: 101; LEFT: 350px; POSITION: absolute; TOP: 16px" HorizontalAlign="Center">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="300" Width="500" AutoPostBack="True" OnTextChanged="Button1_Click"></asp:TextBox>
                <asp:HtmlEditorExtender ID="TextBox1_HtmlEditorExtender" runat="server" Enabled="True" TargetControlID="TextBox1" EnableSanitization="false">
                </asp:HtmlEditorExtender>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Default Text" />
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" style="Z-INDEX: 102; margin:20px; position:absolute; LEFT: 290px; TOP: 336px" HorizontalAlign="Center" BackColor="#CCCCCC">
                <asp:Label ID="Label1" runat="server" style="text-align:left; margin:20px" Enabled="False" Width="500px"></asp:Label>
        </asp:Panel>
        <asp:ResizableControlExtender ID="Panel3_ResizableControlExtender" runat="server" Enabled="True" TargetControlID="Panel3" HandleCssClass="default">
            <ProfileBindings><asp:ProfilePropertyBinding /></ProfileBindings>
        </asp:ResizableControlExtender>
        <asp:RoundedCornersExtender ID="Panel3_RoundedCornersExtender" runat="server" Enabled="True" TargetControlID="Panel3">
        </asp:RoundedCornersExtender>
        <asp:DragPanelExtender ID="Panel3_DragPanelExtender" runat="server" DragHandleID="Panel3" Enabled="True" TargetControlID="Panel3">
        </asp:DragPanelExtender>
        <asp:DropShadowExtender ID="Panel3_DropShadowExtender" runat="server" Enabled="True" TargetControlID="Panel3">
        </asp:DropShadowExtender>

        

    </div>
    </form>
</body>
</html>
