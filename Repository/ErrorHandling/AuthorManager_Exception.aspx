<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AuthorManager_Exception.aspx.cs" Inherits="AuthorManager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Author Manager Exception</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div style="background-color: #FFE0C0; height: 100px; width: 601px; padding: 10px">
			<br />
			<asp:Label id="Label1" runat="server" Width="99px" Height="19px">Select Author:</asp:Label>
			<asp:DropDownList id="lstAuthor" runat="server" Width="187px" Height="21px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="au_fullname" DataValueField="au_id" ></asp:DropDownList>&nbsp;&nbsp;&nbsp;
			&nbsp;
			<br />
			<asp:Label id="Label11" runat="server" Width="99px" Height="19px">Or:</asp:Label>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Pubs %>" SelectCommand="SELECT au_lname +', '+au_fname au_fullname, au_id FROM Authors"></asp:SqlDataSource>
			&nbsp;
			</div>
		<br />
		<div style="background-color: #E0E0E0; height: 392px; width: 601px; padding: 10px">		
				
			<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Pubs %>" DeleteCommand="DELETE FROM [authors] WHERE [au_id] = @original_au_id AND [au_lname] = @original_au_lname AND [au_fname] = @original_au_fname AND [phone] = @original_phone AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([state] = @original_state) OR ([state] IS NULL AND @original_state IS NULL)) AND (([zip] = @original_zip) OR ([zip] IS NULL AND @original_zip IS NULL)) AND [contract] = @original_contract" InsertCommand="INSERT INTO [authors] ([au_id], [au_lname], [au_fname], [phone], [address], [city], [state], [zip], [contract]) VALUES (@au_id, @au_lname, @au_fname, @phone, @address, @city, @state, @zip, @contract)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [authors] WHERE ([au_id] = @au_id)" UpdateCommand="UPDATE [author] SET [au_lname] = @au_lname, [au_fname] = @au_fname, [phone] = @phone, [address] = @address, [city] = @city, [state] = @state, [zip] = @zip, [contract] = @contract WHERE [au_id] = @original_au_id AND [au_lname] = @original_au_lname AND [au_fname] = @original_au_fname AND [phone] = @original_phone AND (([address] = @original_address) OR ([address] IS NULL AND @original_address IS NULL)) AND (([city] = @original_city) OR ([city] IS NULL AND @original_city IS NULL)) AND (([state] = @original_state) OR ([state] IS NULL AND @original_state IS NULL)) AND (([zip] = @original_zip) OR ([zip] IS NULL AND @original_zip IS NULL)) AND [contract] = @original_contract" OnUpdated="SqlDataSource2_Updated">
                <DeleteParameters>
                    <asp:Parameter Name="original_au_id" Type="String" />
                    <asp:Parameter Name="original_au_lname" Type="String" />
                    <asp:Parameter Name="original_au_fname" Type="String" />
                    <asp:Parameter Name="original_phone" Type="String" />
                    <asp:Parameter Name="original_address" Type="String" />
                    <asp:Parameter Name="original_city" Type="String" />
                    <asp:Parameter Name="original_state" Type="String" />
                    <asp:Parameter Name="original_zip" Type="String" />
                    <asp:Parameter Name="original_contract" Type="Boolean" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="au_id" Type="String" />
                    <asp:Parameter Name="au_lname" Type="String" />
                    <asp:Parameter Name="au_fname" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="zip" Type="String" />
                    <asp:Parameter Name="contract" Type="Boolean" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="lstAuthor" Name="au_id" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="au_lname" Type="String" />
                    <asp:Parameter Name="au_fname" Type="String" />
                    <asp:Parameter Name="phone" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="state" Type="String" />
                    <asp:Parameter Name="zip" Type="String" />
                    <asp:Parameter Name="contract" Type="Boolean" />
                    <asp:Parameter Name="original_au_id" Type="String" />
                    <asp:Parameter Name="original_au_lname" Type="String" />
                    <asp:Parameter Name="original_au_fname" Type="String" />
                    <asp:Parameter Name="original_phone" Type="String" />
                    <asp:Parameter Name="original_address" Type="String" />
                    <asp:Parameter Name="original_city" Type="String" />
                    <asp:Parameter Name="original_state" Type="String" />
                    <asp:Parameter Name="original_zip" Type="String" />
                    <asp:Parameter Name="original_contract" Type="Boolean" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="au_id" DataSourceID="SqlDataSource2" Height="50px" Width="242px" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated" style="margin-right: 0px" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
                <EditRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <Fields>
                    <asp:BoundField DataField="au_id" HeaderText="SSN" ReadOnly="True" SortExpression="au_id" />
                    <asp:BoundField DataField="au_lname" HeaderText="Last Name" SortExpression="au_lname" />
                    <asp:BoundField DataField="au_fname" HeaderText="First Name" SortExpression="au_fname" />
                    <asp:BoundField DataField="phone" HeaderText="Phone #" SortExpression="phone" />
                    <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                    <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                    <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                    <asp:BoundField DataField="zip" HeaderText="Zip" SortExpression="zip" />
                    <asp:CheckBoxField DataField="contract" HeaderText="Contract?" SortExpression="contract" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#333333" />
            </asp:DetailsView>
            <br />
            <br />
            <br />
				
			<br />
			
			<asp:Label id="lblResults" runat="server" Width="575px" Height="56px" Font-Bold="True"></asp:Label>
			<br />
			<br />
			
		</div>
    </div>
    </form>
</body>
</html>
