<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ThemeDemo.aspx.cs" Inherits="ThemeDemo" 
     Debug="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Theme Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    
    <br />
     <p class="title">
    Theme Demo
        </p>
        <p>[These themes were downloaded from <a href="http://www.dotnettreats.com/tools/Default.aspx">
                http://www.dotnettreats.com/tools/Default.aspx</a>]</p>
        <p>
            Select the Theme you want to apply:&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>None</asp:ListItem>
                <asp:ListItem>MSN_Blue</asp:ListItem>
                <asp:ListItem>MSN_CherryBlossom</asp:ListItem>
                <asp:ListItem>MSN_Finance</asp:ListItem>
                <asp:ListItem>MSN_Morning</asp:ListItem>
                <asp:ListItem>Msn_Purple</asp:ListItem>
                <asp:ListItem>MSN_Red</asp:ListItem>
                <asp:ListItem>WinXP_Blue</asp:ListItem>
                <asp:ListItem>WinXP_Silver</asp:ListItem>
            </asp:DropDownList></p>
        <hr>
   <br />
    <h1>
        Heading 1
    </h1>
    <p class="bodytextindent1">
    Text
    </p>

    <h2>
        Heading 2<br />
    </h2>
    <p class="bodytextindent1">
    Text
    </p>
    <h3>
        Heading 3</h3>
    <p class="bodytextindent1">
    Text
    </p>
    <h3>
        Sample DetailsView</h3>
        <br />
    <asp:DetailsView ID="DetailsView1" runat="server" SkinID="DetailsView" DataSourceID="SqlDataSource1" AutoGenerateRows="False" DataKeyNames="CustomerID">
        <Fields>
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
            <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
            <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" SortExpression="ContactTitle" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
            <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
        </Fields>
    </asp:DetailsView>
        <br />
    <h3>
        Sample GridView</h3>
        <br />
    <asp:GridView ID="GridView1" runat="server" SkinID="GridView" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="CustomerID">
        <Columns>
            <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" SortExpression="CustomerID" />
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
            <asp:BoundField DataField="ContactName" HeaderText="ContactName" SortExpression="ContactName" />
            <asp:BoundField DataField="ContactTitle" HeaderText="ContactTitle" SortExpression="ContactTitle" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="Region" HeaderText="Region" SortExpression="Region" />
            <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
            <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Fax" HeaderText="Fax" SortExpression="Fax" />
        </Columns>
    </asp:GridView>
        &nbsp;
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
            SelectCommand="SELECT * FROM [Customers] WHERE ([City] = @City)">
            <SelectParameters>
                <asp:Parameter DefaultValue="London" Name="City" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
     <br />
     <h3>
        Sample Calendar</h3>
    <br />
    <asp:Calendar ID="Calendar1" runat="server" SkinID="CalendarView"/>
    <br />
    <h3>Sample FormView Control</h3>
    <br />
    <asp:FormView ID="FormView1" runat="server" SkinID="FormView" DataSourceID="SqlDataSource1" DataKeyNames="CustomerID">
        <EditItemTemplate>
            CustomerID:
            <asp:Label ID="CustomerIDLabel1" runat="server" Text='<%# Eval("CustomerID") %>'>
            </asp:Label><br />
            CompanyName:
            <asp:TextBox ID="CompanyNameTextBox" runat="server" Text='<%# Bind("CompanyName") %>'>
            </asp:TextBox><br />
            ContactName:
            <asp:TextBox ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>'>
            </asp:TextBox><br />
            ContactTitle:
            <asp:TextBox ID="ContactTitleTextBox" runat="server" Text='<%# Bind("ContactTitle") %>'>
            </asp:TextBox><br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>'>
            </asp:TextBox><br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>'>
            </asp:TextBox><br />
            Region:
            <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>'>
            </asp:TextBox><br />
            PostalCode:
            <asp:TextBox ID="PostalCodeTextBox" runat="server" Text='<%# Bind("PostalCode") %>'>
            </asp:TextBox><br />
            Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>'>
            </asp:TextBox><br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>'>
            </asp:TextBox><br />
            Fax:
            <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>'>
            </asp:TextBox><br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update"
                Text="Update">
            </asp:LinkButton>
            <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                Text="Cancel">
            </asp:LinkButton>
        </EditItemTemplate>
        <InsertItemTemplate>
            CustomerID:
            <asp:TextBox ID="CustomerIDTextBox" runat="server" Text='<%# Bind("CustomerID") %>'>
            </asp:TextBox><br />
            CompanyName:
            <asp:TextBox ID="CompanyNameTextBox" runat="server" Text='<%# Bind("CompanyName") %>'>
            </asp:TextBox><br />
            ContactName:
            <asp:TextBox ID="ContactNameTextBox" runat="server" Text='<%# Bind("ContactName") %>'>
            </asp:TextBox><br />
            ContactTitle:
            <asp:TextBox ID="ContactTitleTextBox" runat="server" Text='<%# Bind("ContactTitle") %>'>
            </asp:TextBox><br />
            Address:
            <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>'>
            </asp:TextBox><br />
            City:
            <asp:TextBox ID="CityTextBox" runat="server" Text='<%# Bind("City") %>'>
            </asp:TextBox><br />
            Region:
            <asp:TextBox ID="RegionTextBox" runat="server" Text='<%# Bind("Region") %>'>
            </asp:TextBox><br />
            PostalCode:
            <asp:TextBox ID="PostalCodeTextBox" runat="server" Text='<%# Bind("PostalCode") %>'>
            </asp:TextBox><br />
            Country:
            <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>'>
            </asp:TextBox><br />
            Phone:
            <asp:TextBox ID="PhoneTextBox" runat="server" Text='<%# Bind("Phone") %>'>
            </asp:TextBox><br />
            Fax:
            <asp:TextBox ID="FaxTextBox" runat="server" Text='<%# Bind("Fax") %>'>
            </asp:TextBox><br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert"
                Text="Insert">
            </asp:LinkButton>
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel"
                Text="Cancel">
            </asp:LinkButton>
        </InsertItemTemplate>
        <ItemTemplate>
            CustomerID:
            <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>'>
            </asp:Label><br />
            CompanyName:
            <asp:Label ID="CompanyNameLabel" runat="server" Text='<%# Bind("CompanyName") %>'>
            </asp:Label><br />
            ContactName:
            <asp:Label ID="ContactNameLabel" runat="server" Text='<%# Bind("ContactName") %>'>
            </asp:Label><br />
            ContactTitle:
            <asp:Label ID="ContactTitleLabel" runat="server" Text='<%# Bind("ContactTitle") %>'>
            </asp:Label><br />
            Address:
            <asp:Label ID="AddressLabel" runat="server" Text='<%# Bind("Address") %>'></asp:Label><br />
            City:
            <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>'></asp:Label><br />
            Region:
            <asp:Label ID="RegionLabel" runat="server" Text='<%# Bind("Region") %>'></asp:Label><br />
            PostalCode:
            <asp:Label ID="PostalCodeLabel" runat="server" Text='<%# Bind("PostalCode") %>'>
            </asp:Label><br />
            Country:
            <asp:Label ID="CountryLabel" runat="server" Text='<%# Bind("Country") %>'></asp:Label><br />
            Phone:
            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Bind("Phone") %>'></asp:Label><br />
            Fax:
            <asp:Label ID="FaxLabel" runat="server" Text='<%# Bind("Fax") %>'></asp:Label><br />
        </ItemTemplate>
    </asp:FormView>
    <br />
     <h3>
        Sample Login Control</h3>
    <br />
    <asp:Login runat=server ID="Login1" SkinID="LoginView" />
    <br />



    
    </div>
    </form>
</body>
</html>
