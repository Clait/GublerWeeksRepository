<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Assembly = "AjaxControlToolkit" Namespace = "AjaxControlToolkit" TagPrefix = "asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   
 
   <!-- Headers and links to repository pages go here -->

   <h2>Page Links!</h2>
    <asp:HyperLink ID="HyperLink14" runat="server" Target="_blank" NavigateUrl="http://proquest.safaribooksonline.com.dist.lib.usu.edu/book/programming/csharp/9781430242512/firstchapter#X2ludGVybmFsX0h0bWxWaWV3P3htbGlkPTk3ODE0MzAyNDI1MTIlMkZuYXZwb2ludC0yJnF1ZXJ5PQ==">
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Instructions/File.png" /> Course e-Book</asp:HyperLink>
     <ul>
         <br />
    <h3><asp:Label ID="Label1" runat="server" Text="Label" Width="380px">Exercise 1 - The .Net Framework </asp:Label>
        <asp:HyperLink ID="HyperLink17" target="_blank" runat="server" NavigateUrl="Instructions/01-The Net Framework_ Sp13 MIS-5050-001.pdf"><asp:Image ID="Image4" runat="server" ImageUrl="~/Instructions/webpage.png" /></asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;</h3><hr width="420px" align="left"/>
    <br />
    <br /> 
    <h3><asp:Label ID="Label2" runat="server" Text="Label" Width="380px">Exercise 2 - Visual Studio Basics </asp:Label>
        <asp:HyperLink ID="HyperLink11" target="_blank" runat="server" NavigateUrl="~/Instructions/02-Visual Studio Basics_ Sp13 MIS-5050-001.pdf"><asp:Image ID="Image5" runat="server" ImageUrl="~/Instructions/webpage.png" /></asp:HyperLink>
        <asp:HyperLink ID="HyperLink23" runat="server" target="_blank" NavigateUrl="~/Instructions/02-Visual Studio_CRE_Instructions.pdf"><asp:Image ID="Image13" runat="server" ImageUrl="~/Instructions/File.png" valign="top"/></asp:HyperLink></h3><hr width="420px" align="left"/>
                <ul  type="circle">  Sample 1 - <asp:HyperLink ID="HyperLink1" target="_blank" runat="server" NavigateUrl="~/Sample/Page1.aspx">Page1.aspx</asp:HyperLink>
                <br />Sample 2 - <asp:HyperLink ID="HyperLink2" target="_blank" runat="server" NavigateUrl="~/Sample/Page2.aspx">Page2.aspx</asp:HyperLink></ul>
    <br />
    <br /> 
    <h3><asp:Label ID="Label3" runat="server" Text="Label" Width="380px">Exercise 3 - C# (Types, Objects and Namespaces) </asp:Label>
        <asp:HyperLink ID="HyperLink12" target="_blank" runat="server" NavigateUrl="~/Instructions/03-C Sharp Types Objects And Namespaces_ Sp13 MIS-5050-001.pdf"><asp:Image ID="Image6" runat="server" ImageUrl="~/Instructions/webpage.png" /></asp:HyperLink>
        <asp:HyperLink ID="HyperLink13" runat="server" target="_blank" NavigateUrl="~/Instructions/03-C-Sharp_CRE_Instructions.pdf"><asp:Image ID="Image1" runat="server" ImageUrl="~/Instructions/File.png" valign="top"/></asp:HyperLink></h3><hr width="420px" align="left"/>
                <ul type="circle">  Product Catalog Test - <asp:HyperLink ID="HyperLink15" target="_blank" runat="server" NavigateUrl="~/C-Sharp/ProductCatalogTest.aspx">ProductCatalogTest.aspx</asp:HyperLink></ul>
    <br />
    <br /> 
    <h3><asp:Label ID="Label4" runat="server" Text="Label" Width="380px">Exercise 4 - Web Form Fundamentals</asp:Label>
        <asp:HyperLink ID="HyperLink4" target="_blank" runat="server" NavigateUrl="~/Instructions/04-Web Form Fundamentals_ Sp13 MIS-5050-001.pdf"><asp:Image ID="Image7" runat="server" ImageUrl="~/Instructions/webpage.png" /></asp:HyperLink>
        <asp:HyperLink ID="HyperLink16" runat="server" target="_blank" NavigateUrl="~/Instructions/04-Web Form Fundamentals_CRE_Instructions.pdf"><asp:Image ID="Image3" runat="server" ImageUrl="~/Instructions/File.png" valign="top"/></asp:HyperLink></h3><hr width="420px" align="left"/>
                <ul type="circle">  Currency Converter - <asp:HyperLink ID="HyperLink5" target="_blank" runat="server" NavigateUrl="~/WebForm/CurrencyConverter.aspx">CurrencyConverter.aspx</asp:HyperLink></ul>
    <br />
    <br /> 
    <h3><asp:Label ID="Label5" runat="server" Text="Label" Width="380px">Exercise 5 - Basic Web Controls </asp:Label>
        <asp:HyperLink ID="HyperLink18" target="_blank" runat="server" NavigateUrl="~/Instructions/05-Basic Web Controls_ Sp13 MIS-5050-001.pdf"><asp:Image ID="Image8" runat="server" ImageUrl="~/Instructions/webpage.png" /></asp:HyperLink>
        <asp:HyperLink ID="HyperLink24" runat="server" target="_blank" NavigateUrl="~/Instructions/05-Web Controls_CRE_Instructions.pdf"><asp:Image ID="Image14" runat="server" ImageUrl="~/Instructions/File.png" valign="top"/></asp:HyperLink></h3><hr width="420px" align="left"/>
                <ul type="circle">  Greeting Card Maker - <asp:HyperLink ID="HyperLink3" target="_blank" runat="server" NavigateUrl="~/WebControls/NewGreetingCardMaker.aspx">NewGreetingCardMaker.aspx</asp:HyperLink></ul>
    <br />
    <br /> 
    <h3><asp:Label ID="Label6" runat="server" Text="Label" Width="380px">Exercise 6 - Advanced Controls </asp:Label>
        <asp:HyperLink ID="HyperLink19" target="_blank" runat="server" NavigateUrl="~/Instructions/06-Advanced Controls_ Sp13 MIS-5050-001.pdf"><asp:Image ID="Image9" runat="server" ImageUrl="~/Instructions/webpage.png" /></asp:HyperLink>
        <asp:HyperLink ID="HyperLink22" runat="server" target="_blank" NavigateUrl="~/Instructions/06-Advanced Controls_CRE_Instructions.pdf"><asp:Image ID="Image12" runat="server" ImageUrl="~/Instructions/File.png" valign="top"/></asp:HyperLink></h3><hr width="420px" align="left"/>
                <ul>  Advanced Controls - <asp:HyperLink ID="HyperLink7" target="_blank" runat="server" NavigateUrl="~/Advanced_Controls/Advanced_Controls.aspx">Advanced_Controls.aspx</asp:HyperLink></ul>
    <br />
    <br />     
    <h3><asp:Label ID="Label7" runat="server" Text="Label" Width="380px">Exercise 7 - User Controls and Master Pages </asp:Label>
        <asp:HyperLink ID="HyperLink20" target="_blank" runat="server" NavigateUrl="~/Instructions/07-User Controls And Master Pages_ Sp13 MIS-5050-001.pdf"><asp:Image ID="Image10" runat="server" ImageUrl="~/Instructions/webpage.png" /></asp:HyperLink>
        <asp:HyperLink ID="HyperLink25" runat="server" target="_blank" NavigateUrl="~/Instructions/07-User Controls Master Pages_CRE_Instructions.pdf"><asp:Image ID="Image15" runat="server" ImageUrl="~/Instructions/File.png" valign="top"/></asp:HyperLink></h3><hr width="420px" align="left"/>
                <ul>  Change Master - <asp:HyperLink ID="HyperLink8" target="_blank" runat="server" NavigateUrl="~/UCMP/ChangeMaster.aspx">ChangeMaster.aspx</asp:HyperLink>
                <br />Footer Host - <asp:HyperLink ID="HyperLink6" target="_blank" runat="server" NavigateUrl="~/UCMP/FooterHost.aspx">FooterHost.aspx</asp:HyperLink></ul>
    <br />
    <br />     
    <h3><asp:Label ID="Label8" runat="server" Text="Label" Width="380px">Exercise 8 - ADO.NET (Advanced Data Objects) </asp:Label>
        <asp:HyperLink ID="HyperLink21" target="_blank" runat="server" NavigateUrl="~/Instructions/08-Ado_ Sp13 MIS-5050-001.pdf"><asp:Image ID="Image11" runat="server" ImageUrl="~/Instructions/webpage.png" /></asp:HyperLink>
        <asp:HyperLink ID="HyperLink26" runat="server" target="_blank" NavigateUrl="~/Instructions/08-ADO_CRE_Instructions.pdf"><asp:Image ID="Image16" runat="server" ImageUrl="~/Instructions/File.png" valign="top"/></asp:HyperLink></h3><hr width="420px" align="left"/>
                <ul>  Author Manager 1 - <asp:HyperLink ID="HyperLink9" target="_blank" runat="server" NavigateUrl="~/ADO/AuthorManager.aspx">AuthorManager.aspx</asp:HyperLink>
                <br />Author Manager 2 - <asp:HyperLink ID="HyperLink37" target="_blank" runat="server" NavigateUrl="~/ADO/AuthorManager2.aspx" >AuthorManager2.aspx</asp:HyperLink>
                <br />Author Manager 3 - <asp:HyperLink ID="HyperLink38" target="_blank" runat="server" NavigateUrl="~/ADO/AuthorManager3.aspx">AuthorManager3.aspx</asp:HyperLink>
                <br />Auth. Mgr. sproc - <asp:HyperLink ID="HyperLink39" target="_blank" runat="server" NavigateUrl="~/ADO/AuthorManagersproc.aspx">AuthorManagersproc.aspx</asp:HyperLink></ul>
    <br />
    <br /> 
    <h3><asp:Label ID="Label9" runat="server" Text="Label" Width="380px">Exercise 9 - Component-Based Architecture </asp:Label>
                <asp:HyperLink ID="HyperLink27" target="_blank" runat="server" NavigateUrl="~/Instructions/09-Component Based Architecture_ Sp13 MIS-5050-001.pdf"><asp:Image ID="Image17" runat="server" ImageUrl="~/Instructions/webpage.png" /></asp:HyperLink>
                <asp:HyperLink ID="HyperLink28" runat="server" target="_blank" NavigateUrl="~/Instructions/09-Component_CRE_Instructions.pdf"><asp:Image ID="Image18" runat="server" ImageUrl="~/Instructions/File.png" valign="top"/></asp:HyperLink></h3><hr width="420px" align="left"/>
                <ul>  AM Component - <asp:HyperLink ID="HyperLink10" target="_blank" runat="server" NavigateUrl="~/Components/AuthorManager_Component.aspx" >AuthorManager_Component.aspx</asp:HyperLink></ul>
    <br />
    <br />     
    <h3><asp:Label ID="Label10" runat="server" Text="Label" Width="380px">Exercise 10 - Data Binding</asp:Label>
                <asp:HyperLink ID="HyperLink29" target="_blank" runat="server" NavigateUrl="~/Instructions/10-Data Binding_ Sp13 MIS-5050-001.pdf"><asp:Image ID="Image19" runat="server" ImageUrl="~/Instructions/webpage.png" /></asp:HyperLink>
                <asp:HyperLink ID="HyperLink30" runat="server" target="_blank" NavigateUrl="~/Instructions/10-Data Binding_CRE_Instructions.pdf"><asp:Image ID="Image20" runat="server" ImageUrl="~/Instructions/File.png" valign="top"/></asp:HyperLink></h3><hr width="420px" align="left"/>
                <ul>  Single Data Binding - <asp:HyperLink ID="HyperLink31" target="_blank" runat="server" NavigateUrl="~/DataBinding/SingleDataBinding.aspx" >SingleDataBinding.aspx</asp:HyperLink>
                <br />Repeated Data Binding - <asp:HyperLink ID="HyperLink32" target="_blank" runat="server" NavigateUrl="~/DataBinding/RepeatedDataBinding.aspx" >RepeatedDataBinding.aspx</asp:HyperLink>
                <br />AM Data Bound - <asp:HyperLink ID="HyperLink33" target="_blank" runat="server" NavigateUrl="~/DataBinding/AuthorManager_Databound.aspx" >AuthorManager_Databound.aspx</asp:HyperLink>
                <br />AM SQL Data Source - <asp:HyperLink ID="HyperLink34" target="_blank" runat="server" NavigateUrl="~/DataBinding/AuthorManager_SqlDataSource.aspx" >AuthorManager_SqlDataSource.aspx</asp:HyperLink>
                <br />AM Object Data Source - <asp:HyperLink ID="HyperLink35" target="_blank" runat="server" NavigateUrl="~/DataBinding/AuthorManager_ObjectDataSource.aspx" >AuthorManager_ObjectDataSource.aspx</asp:HyperLink></ul>
    <br />
    <br /> 
    <h3><asp:Label ID="Label11" runat="server" Text="Label" Width="380px">Exercise 11 - State Management</asp:Label>
                <asp:HyperLink ID="HyperLink36" target="_blank" runat="server" NavigateUrl="~/Instructions/11-State Management_ Sp13 MIS-5050-001.pdf"><asp:Image ID="Image21" runat="server" ImageUrl="~/Instructions/webpage.png" /></asp:HyperLink>
                <asp:HyperLink ID="HyperLink40" runat="server" target="_blank" NavigateUrl="~/Instructions/11-State Management_CRE_Instructions.pdf"><asp:Image ID="Image22" runat="server" ImageUrl="~/Instructions/File.png" valign="top"/></asp:HyperLink></h3><hr width="420px" align="left"/>
                <ul>  View State - <asp:HyperLink ID="HyperLink41" target="_blank" runat="server" NavigateUrl="~/State/ViewState.aspx" >ViewState.aspx</asp:HyperLink>
                <br />Mad Lib 1 - <asp:HyperLink ID="HyperLink42" target="_blank" runat="server" NavigateUrl="~/State/MadLib1.aspx" >MadLib1.aspx</asp:HyperLink></ul>
    <br />
    <br /> 
    <h3><asp:Label ID="Label12" runat="server" Text="Label" Width="380px">Exercise 12 - Validation</asp:Label>
                <asp:HyperLink ID="HyperLink43" target="_blank" runat="server" NavigateUrl="~/Instructions/12-Validation Controls_ Sp13 MIS-5050-001.pdf"><asp:Image ID="Image23" runat="server" ImageUrl="~/Instructions/webpage.png" /></asp:HyperLink>
                <asp:HyperLink ID="HyperLink44" runat="server" target="_blank" NavigateUrl="~/Instructions/12-Validation_CRE_Instructions.pdf"><asp:Image ID="Image24" runat="server" ImageUrl="~/Instructions/File.png" valign="top"/></asp:HyperLink></h3><hr width="420px" align="left"/>
                <ul>  ValidateMe - <asp:HyperLink ID="HyperLink45" target="_blank" runat="server" NavigateUrl="~/Validation/ValidateMe.aspx" >ValidateMe.aspx</asp:HyperLink></ul>
    <br />
    <br /> 
    <h3><asp:Label ID="Label13" runat="server" Text="Label" Width="380px">Exercise 13 - Data Controls</asp:Label>
                <asp:HyperLink ID="HyperLink46" target="_blank" runat="server" NavigateUrl="~/Instructions/13-Data Controls_ Sp13 MIS-5050-001.pdf"><asp:Image ID="Image25" runat="server" ImageUrl="~/Instructions/webpage.png" /></asp:HyperLink>
                <asp:HyperLink ID="HyperLink47" runat="server" target="_blank" NavigateUrl="~/Instructions/13-Data Controls_CRE_Instructions.pdf"><asp:Image ID="Image26" runat="server" ImageUrl="~/Instructions/File.png" valign="top"/></asp:HyperLink></h3><hr width="420px" align="left"/>
                <ul>  AuthorTitles - <asp:HyperLink ID="HyperLink48" target="_blank" runat="server" NavigateUrl="~/DataControls/AuthorTitles.aspx" >AuthorTitles.aspx</asp:HyperLink></ul>
                <ul>  TitleList - <asp:HyperLink ID="HyperLink58" target="_blank" runat="server" NavigateUrl="~/DataControls/TitleList.aspx" >TitleList.aspx</asp:HyperLink></ul>
    <br />
    <br /> 
    <h3><asp:Label ID="Label14" runat="server" Text="Label" Width="380px">Exercise 14 - CSS, Themes, and Skins</asp:Label>
                <asp:HyperLink ID="HyperLink49" target="_blank" runat="server" NavigateUrl="~/Instructions/14-Css Themes And Skins_ Sp13 MIS-5050-001.pdf"><asp:Image ID="Image27" runat="server" ImageUrl="~/Instructions/webpage.png" /></asp:HyperLink>
                <asp:HyperLink ID="HyperLink50" runat="server" target="_blank" NavigateUrl="~/Instructions/14-CSS Themes Skins_CRE_Instructions.pdf"><asp:Image ID="Image28" runat="server" ImageUrl="~/Instructions/File.png" valign="top"/></asp:HyperLink></h3><hr width="420px" align="left"/>
                <ul>  ThemeDemo - <asp:HyperLink ID="HyperLink51" target="_blank" runat="server" NavigateUrl="~/Themes_Skins/ThemeDemo.aspx" >ThemeDemo.aspx</asp:HyperLink></ul>
    <br />
    <br /> 
    <h3><asp:Label ID="Label15" runat="server" Text="Label" Width="380px">Exercise 15 - Navigation</asp:Label>
                <asp:HyperLink ID="HyperLink52" target="_blank" runat="server" NavigateUrl="~/Instructions/15-Navigation Controls_ Sp13 MIS-5050-001.pdf"><asp:Image ID="Image29" runat="server" ImageUrl="~/Instructions/webpage.png" /></asp:HyperLink>
                <asp:HyperLink ID="HyperLink53" runat="server" target="_blank" NavigateUrl="~/Instructions/15-Navigation_CRE_Instructions.pdf"><asp:Image ID="Image30" runat="server" ImageUrl="~/Instructions/File.png" valign="top"/></asp:HyperLink></h3><hr width="420px" align="left"/>
                <ul>  Welcome - <asp:HyperLink ID="HyperLink54" target="_blank" runat="server" NavigateUrl="~/Navigation/Welcome.aspx" >Welcome.aspx</asp:HyperLink></ul>
    <br />
    <br /> 
    <h3><asp:Label ID="Label16" runat="server" Text="Label" Width="380px">Exercise 16 - Error Handling, Logging, and Tracing</asp:Label>
                <asp:HyperLink ID="HyperLink55" target="_blank" runat="server" NavigateUrl="~/Instructions/16-Error Handling Logging And Tracing_ Sp13 MIS-5050-001.pdf"><asp:Image ID="Image31" runat="server" ImageUrl="~/Instructions/webpage.png" /></asp:HyperLink>
                <asp:HyperLink ID="HyperLink56" runat="server" target="_blank" NavigateUrl="~/Instructions/16-Error Handling_CRE_Instructions.pdf"><asp:Image ID="Image32" runat="server" ImageUrl="~/Instructions/File.png" valign="top"/></asp:HyperLink></h3><hr width="420px" align="left"/>
                <ul>  Error Handling 1 - <asp:HyperLink ID="HyperLink57" target="_blank" runat="server" NavigateUrl="~/ErrorHandling/ErrorHandling1.aspx" >ErrorHandling1.aspx</asp:HyperLink></ul>
                <ul>  Error Handling 2 - <asp:HyperLink ID="HyperLink59" target="_blank" runat="server" NavigateUrl="~/ErrorHandling/ErrorHandling2.aspx" >ErrorHandling2.aspx</asp:HyperLink></ul>
                <ul>  Author Manager Exception - <asp:HyperLink ID="HyperLink60" target="_blank" runat="server" NavigateUrl="~/ErrorHandling/AuthorManager_Exception.aspx" >AuthorManager_Exception.aspx</asp:HyperLink></ul>
                <ul>  Unhandled Error - <asp:HyperLink ID="HyperLink61" target="_blank" runat="server" NavigateUrl="~/ErrorHandling/UnhandledError.aspx" >UnhandledError.aspx</asp:HyperLink></ul>
    <br />
    <br /> 
    <h3><asp:Label ID="Label17" runat="server" Text="Label" Width="380px">Exercise 17 - Security, Membership, and Profiles</asp:Label>
                <asp:HyperLink ID="HyperLink62" target="_blank" runat="server" NavigateUrl="~/Instructions/17-Security_ Sp13 MIS-5050-001.pdf"><asp:Image ID="Image33" runat="server" ImageUrl="~/Instructions/webpage.png" /></asp:HyperLink>
                <asp:HyperLink ID="HyperLink63" runat="server" target="_blank" NavigateUrl="~/Instructions/17-Security-Membership-Profiles_CRE_Instructions.pdf"><asp:Image ID="Image34" runat="server" ImageUrl="~/Instructions/File.png" valign="top"/></asp:HyperLink></h3><hr width="420px" align="left"/>
                <ul>  Login - <asp:HyperLink ID="HyperLink64" target="_blank" runat="server" NavigateUrl="~/Membership/Login.aspx" >Login.aspx</asp:HyperLink></ul>
<br />
    <br /> 
    <h3><asp:Label ID="Label18" runat="server" Text="Label" Width="380px">Exercise 18 - Ajax</asp:Label>
                <asp:HyperLink ID="HyperLink65" target="_blank" runat="server" NavigateUrl="~/Instructions/18-Ajax_ Sp13 MIS-5050-001.pdf"><asp:Image ID="Image35" runat="server" ImageUrl="~/Instructions/webpage.png" /></asp:HyperLink>
                <asp:HyperLink ID="HyperLink66" runat="server" target="_blank" NavigateUrl="~/Instructions/18-Ajax_CRE_Instructions.pdf"><asp:Image ID="Image36" runat="server" ImageUrl="~/Instructions/File.png" valign="top"/></asp:HyperLink></h3><hr width="420px" align="left"/>
                <ul>  Ajax NGC Maker - <asp:HyperLink ID="HyperLink67" target="_blank" runat="server" NavigateUrl="~/Ajax/AjaxNewGreetingCardMaker.aspx" >AjaxNewGreetingCardMaker.aspx</asp:HyperLink></ul>
                <ul>  Ajax Toolkit   - <asp:HyperLink ID="HyperLink68" target="_blank" runat="server" NavigateUrl="~/Ajax/AjaxToolkit.aspx" >AjaxToolkit.aspx</asp:HyperLink></ul>
   </ul>
</asp:Content>
