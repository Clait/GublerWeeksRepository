<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FooterHost.aspx.cs" MasterPageFile="~/UCMP/MyMasterPage.master" Inherits="UCMP_FooterHost" %>
<%@ Register TagPrefix="apress" TagName="Footer" Src="Footer.ascx" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <h1> A page with a configurable footer</h1>

        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem>Long Format</asp:ListItem>
            <asp:ListItem>Short Format</asp:ListItem>
        </asp:RadioButtonList>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />

        <br />


        <apress:Footer Format="ShortTime" id="Footer1" runat="server" />

</asp:Content>




