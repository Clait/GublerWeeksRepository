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
        
        <asp:Accordion ID="Accordion1" runat="server">
            <Panes>
                <asp:AccordionPane ID="AccordionPane1" runat="server">
                    <Header>Pane 1</Header>
                        <Content>This is pane 1</Content>
                </asp:AccordionPane>
                <asp:AccordionPane ID="AccordionPane2" runat="server">
                    <Header>Pane 2</Header>
                        <Content>This is pane 2</Content>
                </asp:AccordionPane>
                <asp:AccordionPane ID="AccordionPane3" runat="server">
                    <Header>Pane 3</Header>
                        <Content>This is pane 3</Content>
                </asp:AccordionPane>
                <asp:AccordionPane ID="AccordionPane4" runat="server">
                    <Header>Pane 4</Header>
                        <Content>This is pane 4</Content>
                </asp:AccordionPane>
                <asp:AccordionPane ID="AccordionPane5" runat="server">
                    <Header>Pane 5</Header>
                        <Content>This is pane 5</Content>
                </asp:AccordionPane>
            </Panes>
        </asp:Accordion>
        <br />
        <br />

        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="300" Width="500"></asp:TextBox>

        <asp:HtmlEditorExtender ID="TextBox1_HtmlEditorExtender" runat="server" Enabled="True" TargetControlID="TextBox1" EnableSanitization="false">
        </asp:HtmlEditorExtender>

    </div>
    </form>
</body>
</html>
