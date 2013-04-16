<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Ajax_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ajax Greeting Card Maker</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div PADDING-RIGHT: 20px; PADDING-LEFT: 20px;>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
                <asp:Panel ID="Panel1" runat="server" BackColor="#5588BB" BorderColor="#003399" 
                        BorderWidth="5px" Width="255px" style="margin-right: 7px">
                    <br />
                        <asp:Label ID="Label7" runat="server" Text="Enter your name:" style="margin-left: 12px"></asp:Label><br />
                        <asp:TextBox ID="txtFrom" runat="server" style="margin-left: 12px" Height="20px" Width="225px" OnTextChanged="ControlChanged" AutoPostBack="True"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Choose card type: " style="margin-left: 12px"></asp:Label><br />
                        <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 12px" Height="28px" Width="230px" OnSelectedIndexChanged="ControlChanged" AutoPostBack="True">
                            <asp:ListItem Value="~/WebControls/birthday.png">Birthday</asp:ListItem>
                            <asp:ListItem Value="~/WebControls/christmas.png">Christmas</asp:ListItem>
                            <asp:ListItem Value="~/WebControls/get_well.gif">Get Well</asp:ListItem>
                            <asp:ListItem Value="~/WebControls/graduation.jpg">Graduation</asp:ListItem>
                            <asp:ListItem Value="~/WebControls/valentine.jpg">Valentine&#39;s Day</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text="Choose a background color: " style="margin-left: 12px"></asp:Label><br />
                        <asp:TextBox ID="lstBackColor" runat="server" AutoPostBack="true" style="margin-left: 12px" Height="20px" Width="225px" OnTextChanged="ControlChanged"></asp:TextBox>
                        <asp:ColorPickerExtender ID="TextBox1_ColorPickerExtender" runat="server" Enabled="True" TargetControlID="lstBackColor" SampleControlID="pnlCard">
                        </asp:ColorPickerExtender>
                        <br />
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="Choose a border style: " style="margin-left: 12px"></asp:Label>
                        <asp:RadioButtonList ID="lstBorder" runat="server" style="margin-left: 12px" CellSpacing="5" Height="20px" RepeatColumns="2" Width="225px" AutoPostBack="True"  OnSelectedIndexChanged="ControlChanged" OnTextChanged="ControlChanged"></asp:RadioButtonList>
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="Enter the greeting text: " style="margin-left: 12px"></asp:Label><br />
                        <asp:TextBox ID="txtGreeting" runat="server" style="margin-left: 12px" Height="90px" TextMode="MultiLine" Width="225px" OnTextChanged="ControlChanged" AutoPostBack="True"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="Choose a font: " style="margin-left: 12px"></asp:Label><br />
                        <asp:DropDownList ID="lstFontName" runat="server" AutoPostBack="true" style="margin-left: 12px" Height="28px" Width="230px" OnSelectedIndexChanged="ControlChanged"></asp:DropDownList>
                        <br />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Choose a font size: " style="margin-left: 12px"></asp:Label><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label><br />
                        <table style="margin-left: 12px"><tr><td><asp:TextBox ID="txtFontSize" runat="server" AutoPostBack="True" style="margin-left: 12px" Height="20px" Width="225px" OnTextChanged="ControlChanged"></asp:TextBox>
                        <asp:SliderExtender ID="TextBox2_SliderExtender" runat="server" Enabled="True" Maximum="72" Minimum="10" TargetControlID="txtFontSize" BoundControlID="Label8" EnableHandleAnimation="True" Length="225" Steps="31" TooltipText="Choose a font size"></asp:SliderExtender>
                        </td></tr></table>
                    <br />
                    <br />
                </asp:Panel>
                <asp:DropShadowExtender ID="Panel1_DropShadowExtender" runat="server" Enabled="True" Opacity="0.8" Radius="10" Rounded="True" TargetControlID="Panel1" TrackPosition="True">
                </asp:DropShadowExtender>
            </div>
            <div>
                        <asp:panel ID="pnlCard" style="Z-INDEX: 101; LEFT: 350px; POSITION: absolute; TOP: 16px" runat="server" 
			                    Height="615px" Width="400px" HorizontalAlign="Center" BackColor="Red" BorderStyle="Solid">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <br />
                                    <br /><br />
                                    <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                                    <br /><br />
                                    <br />
			                        <asp:Label ID="lblGreeting" runat="server" Height="150px" Width="356px"></asp:Label>
                                    <br />
                                    <br />
                                    <br />
			                        <asp:Label ID="lblFrom" runat="server" Height="100px" Width="356px"></asp:Label>
				                    <br /><br /><br />
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="txtFrom"       EventName="TextChanged"/>
                                <asp:AsyncPostBackTrigger ControlID="DropDownList1" EventName="SelectedIndexChanged" />
                                <asp:AsyncPostBackTrigger ControlID="lstBackColor"  EventName="TextChanged" />
                                <%--<asp:AsyncPostBackTrigger ControlID="lstBorder"     EventName="TextChanged" />--%>
                                <asp:AsyncPostBackTrigger ControlID="txtGreeting"   EventName="TextChanged" />
                                <asp:AsyncPostBackTrigger ControlID="lstFontName"   EventName="SelectedIndexChanged" />
                                <asp:AsyncPostBackTrigger ControlID="txtFontSize"   EventName="TextChanged" />
                            </Triggers>
                     </asp:UpdatePanel>
                     <asp:UpdatePanelAnimationExtender ID="UpdatePanel1_UpdatePanelAnimationExtender" runat="server" Enabled="True" TargetControlID="UpdatePanel1">
                         <Animations>  
                            <OnUpdating>  
                                <Sequence>  
                                    <%-- Store the original height of the panel --%>  
                                    <ScriptAction Script="var b = $find('UpdatePanelAnimationExtender1'); b._originalHeight = b._element.offsetHeight;" />  
                  
                                    <%-- Do each of the selected effects --%>  
                                    <Parallel duration=".25" Fps="30">  
                                        <Condition ConditionScript="$get('effect_fade').checked">  
                                            <FadeOut AnimationTarget="UpdatePanel" minimumOpacity=".2" />  
                                        </Condition>  
                                        <Condition ConditionScript="$get('effect_collapse').checked">  
                                            <Resize Height="0" />  
                                        </Condition>  
                                        <Condition ConditionScript="$get('effect_color').checked">  
                                            <Color AnimationTarget="UpdatePanel" PropertyKey="backgroundColor"  
                                                EndValue="#FF0000" StartValue="#40669A" />  
                                        </Condition>  
                                    </Parallel>  
                                </Sequence>  
                            </OnUpdating>  
                            <OnUpdated>  
                                <Sequence>  
                                    <%-- Do each of the selected effects --%>  
                                    <Parallel duration=".25" Fps="30">  
                                        <Condition ConditionScript="$get('effect_fade').checked">  
                                            <FadeIn AnimationTarget="UpdatePanel" minimumOpacity=".2" />  
                                        </Condition>  
                                        <Condition ConditionScript="$get('effect_collapse').checked">  
                                            <%-- Get the stored height --%>  
                                            <Resize HeightScript="$find('UpdatePanelAnimationExtender1')._originalHeight" />  
                                        </Condition>  
                                        <Condition ConditionScript="$get('effect_color').checked">  
                                            <Color AnimationTarget="UpdatePanel" PropertyKey="backgroundColor"  
                                                StartValue="#FF0000" EndValue="#40669A" />  
                                        </Condition>  
                                    </Parallel>  
                                </Sequence>  
                            </OnUpdated>  
                        </Animations> 
                    </asp:UpdatePanelAnimationExtender>
              </asp:panel>
                <asp:DragPanelExtender ID="pnlCard_DragPanelExtender" runat="server" DragHandleID="pnlCard" Enabled="True" TargetControlID="pnlCard">
                </asp:DragPanelExtender>
            </div>
                <asp:UpdateProgress ID="UpdateProgress1" runat="server" DisplayAfter="10">
                    <ProgressTemplate>
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Ajax/Processing.gif" style="Z-INDEX: 103; LEFT: 448px; POSITION: absolute; TOP: 240px"/>
                        <asp:panel ID="pnlCardOverlay" style="Z-INDEX: 102; LEFT: 348px; POSITION: absolute; TOP: 14px" runat="server" 
			                    Height="630px" Width="410px" HorizontalAlign="Center" BackColor="White" BorderStyle="None"></asp:panel>
                    </ProgressTemplate>
                </asp:UpdateProgress>
        </div>
    </form>
</body>
</html>
