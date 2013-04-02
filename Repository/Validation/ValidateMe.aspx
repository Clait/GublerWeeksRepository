<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="ValidateMe.aspx.cs" Inherits="ValidateMe" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Validation</title>
</head>
<body>
    <h3>
        <font face="Verdana">Bug Report</font>
    </h3>
    <form runat="server" ID="frmBugs">
        <div>
         <table bgcolor=gainsboro cellpadding=10>
            <tr valign="top">
               <td colspan=3>               
                  <asp:Label ID="lblMsg" 
                  Text="Please report your bug here" 
                  ForeColor="red" 
                  Font-Size="10" runat="server" />
                  <br>
               </td>
            </tr>
            <tr>
               <td align=right>
                  <font face=Verdana size=2>Book:</font>
               </td>
               <td>               
                  <ASP:DropDownList id=ddlBooks runat="server">
                     <asp:ListItem>-- Please Pick A Book --</asp:ListItem>
                     <asp:ListItem>Programming ASP.NET</asp:ListItem>
                     <asp:ListItem>Programming .NET Windows Applications</asp:ListItem>
                     <asp:ListItem>Programming C#</asp:ListItem>
                     <asp:ListItem>Programming Visual Basic 2005</asp:ListItem>
                     <asp:ListItem>Teach Yourself C++ In 21 Days</asp:ListItem>
                     <asp:ListItem>Teach Yourself C++ In 24 Hours</asp:ListItem>
                     <asp:ListItem>TY C++ In 10 Minutes</asp:ListItem>
                     <asp:ListItem>TY More C++ In 21 Days</asp:ListItem>
                     <asp:ListItem>C++ Unleashed</asp:ListItem>
                  </ASP:DropDownList>
               </td>
               
               <td align=center rowspan=1>
                 <!-- Validator(s) for the ddlBooks drop down here -->
                   <asp:RequiredFieldValidator Display="Dynamic" EnableClientScript="true" ValidationGroup="Submit Group" ID="RequiredFieldValidator1" InitialValue="-- Please Pick A Book --" runat="server" ErrorMessage="Please choose the book that you would like to report the bug against." Text="*" ControlToValidate="ddlBooks"></asp:RequiredFieldValidator>
               </td>
            </tr>
            <tr>
               <td align=right>                 
                  <font face=Verdana size=2>Edition:</font>
               </td>
               <td>
                  <ASP:RadioButtonList id=rblEdition RepeatLayout="Flow" runat="server">
                     <asp:ListItem>1st</asp:ListItem>
                     <asp:ListItem>2nd</asp:ListItem>
                     <asp:ListItem>3rd</asp:ListItem>
                     <asp:ListItem>4th</asp:ListItem>
                  </ASP:RadioButtonList>
               </td>
               
               <td align=center rowspan=1>
                 <!-- Validator(s) for rblEdition here -->
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ValidationGroup="Submit Group" ErrorMessage="Please select the Edition you purchased." Text="*" ControlToValidate="rblEdition"></asp:RequiredFieldValidator>
               </td>
            </tr>
            <tr>
                <td align=right>Number purchased:</td>
                <td><ASP:TextBox id="txtNumPurch" runat="server" width="50px" /></td>
                <td>
                   <!-- Validator(s) for txtNumPurch here-->
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ValidationGroup="Submit Group" ErrorMessage="Please enter a positive whole number." Text="*" ControlToValidate="txtNumPurch" Type="Integer" ValueToCompare="0" Operator="GreaterThan"></asp:CompareValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ValidationGroup="Submit Group" ErrorMessage="Please enter the number that you purchased." Text="*" ControlToValidate="txtNumPurch"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align=right>Date purchased:</td>
                <td><ASP:TextBox id="txtDatePurch" runat="server" width="106px" /></td>
                <td>
                    <!-- Validator(s) for txtDatePurch here--> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="Submit Group" runat="server" Text="*" ErrorMessage="Please enter the date you purchased your first book on." ControlToValidate="txtDatePurch"></asp:RequiredFieldValidator>           
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ValidationGroup="Submit Group" ErrorMessage="Please enter a date between 1/1/2000 and Today." Text="*" ControlToValidate="txtDatePurch" Type="Date" MinimumValue="1/1/2000" MaximumValue="<%# DateTime.Today.ToShortDateString() %>"></asp:RangeValidator>             
                </td>
            </tr>
            <tr>
               <td align=right style="HEIGHT: 97px">
                  <font face=Verdana size=2>Bug:</font>
               </td>             
               <td style="HEIGHT: 97px">
                  <ASP:TextBox id=txtBug runat="server" width="183px" textmode="MultiLine" height="68px"/>
               </td>
               <td style="HEIGHT: 97px">
                 <!-- Validator(s) for txtBug here--> 
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="Submit Group" runat="server" Text="*" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtBug"></asp:RequiredFieldValidator>                
               </td>
            </tr>
            <tr>
               <td>
               </td>
               <td>
                  <ASP:Button id=btnSubmit text="Submit Bug" runat="server" ValidationGroup="Submit Group" />
               </td>
               <td>
               </td>
            </tr>           
            <tr>
                <td align=right>Enter your password:</td>
                <td>
                <asp:TextBox id="txtPasswd1"
                runat="server"
                TextMode="Password"
                Width="80"></asp:TextBox>
                </td>
                <td>
                <!-- Validator(s) for txtPasswd1 here-->  
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ValidationGroup="Login Group" runat="server" ErrorMessage="Please enter a password." Text="*" ControlToValidate="txtpasswd1"></asp:RequiredFieldValidator> 
                </td>
            </tr>
            <tr>
                <td align=right>Re-enter your password:</td>
                <td>
                <asp:TextBox id="txtPasswd2" runat="server" TextMode="Password" Width="80"></asp:TextBox>
                </td>
                
                <td>
                <!-- Validator(s) for txtPasswd2 here-->
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="Login Group" runat="server" ErrorMessage="Please re-enter your password for verification." Text="*" ControlToValidate="txtPasswd2"></asp:RequiredFieldValidator>               
                    <asp:CompareValidator ID="CompareValidator2" ValidationGroup="Login Group" runat="server" ErrorMessage="Passwords don't match. Please try again." Text="*" ControlToValidate="txtPasswd2" ControlToCompare="txtPasswd1"></asp:CompareValidator>
                </td>
            </tr>    
            <tr>
               <td>
               </td>
               <td>
                  <ASP:Button id="btnLogin" text="Login" runat="server" ValidationGroup="Login Group" />
               </td>
               <td>
               </td>
            </tr>        
            <tr>
                <td align="right">
                    <font face=Verdana size=2>Display Errors</font>
                </td>
                <td>
                    <asp:DropDownList id="lstDisplay" AutoPostBack="true" runat="server" OnSelectedIndexChanged="lstDisplay_SelectedIndexChanged" >
                            <asp:ListItem Selected ="true">Summary</asp:ListItem>
                            <asp:ListItem>Msg. Box</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                &nbsp;
                </td>
             </tr>
             <tr>
                <td align="right">
                        <font face=Verdana size=2>Display Report</font>
                </td>
                <td>
                    <asp:DropDownList id="lstFormat" AutoPostBack="true" runat="server" OnSelectedIndexChanged="lstFormat_SelectedIndexChanged" >
                        <asp:ListItem>List</asp:ListItem>
                        <asp:ListItem Selected="true">Bulleted List</asp:ListItem>
                        <asp:ListItem>Single Paragraph</asp:ListItem>
                    </asp:DropDownList>
                </td>
                </tr>
         </table>
         <!-- Validation Summary controls here -->
             <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="Login Group" runat="server" />
             <asp:ValidationSummary ID="ValidationSummary2" ValidationGroup="Submit Group" runat="server" />
            </div>
    </form>
</body>
</html>
