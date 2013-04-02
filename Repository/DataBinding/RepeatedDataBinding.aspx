<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RepeatedDataBinding.aspx.cs" Inherits="DataBinding_RepeatedDataBinding" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>A listbox of integers</h2>
        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
        
        <h2>A checkboxlist of romantic foods</h2>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server"></asp:CheckBoxList>

        <h2>A RadioButtonList of romantic songs</h2>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server"></asp:RadioButtonList>
        
        <h2>A dropdownlist of Months</h2>
        <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
    </div>
    </form>
</body>
</html>
