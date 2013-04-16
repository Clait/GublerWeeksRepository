<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AjaxToolkit.aspx.cs" Inherits="Ajax_AjaxToolkit" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
        <asp:Panel ID="Panel1" runat="server" BackColor="#5588BB" BorderColor="#003399" 
                        BorderWidth="5px" Width="255px" style="margin-right: 7px">
                <asp:Accordion ID="Accordion1" runat="server">
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
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="300" Width="500" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:HtmlEditorExtender ID="TextBox1_HtmlEditorExtender" runat="server" Enabled="True" TargetControlID="TextBox1" EnableSanitization="false">
                </asp:HtmlEditorExtender>
            <br />
            <br />
                <asp:Label ID="Label1" runat="server" style="text-align:left;"
                    Text="There are many controls implemented on this page:<br>
                            -Accordian: Menu system that collapses other branches as you select a new one.<br />
                            -Rounded corner extender: rounds the corners on an object, like the blue menu.<br />
                            -Drag panel extender: allows you to drag the object across the page.<br />
                            -HTML editor extender: extends a textbox into a full text editor.<br />
                            -Drop Shadow extender: makes the control appear to be floating." 
                    Enabled="False" Width="500px"></asp:Label>
        </asp:Panel>

        <asp:DropShadowExtender ID="Panel2_DropShadowExtender" runat="server" Enabled="True" TargetControlID="Panel2">
        </asp:DropShadowExtender>

    </div>
    </form>
</body>
</html>
