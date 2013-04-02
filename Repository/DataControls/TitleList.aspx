<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TitleList.aspx.cs" Inherits="DataControls_TitleList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Pubs %>" SelectCommand="SELECT [title_id], [title], [price] FROM [titles]"></asp:SqlDataSource>
    </div>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="title_id" DataSourceID="SqlDataSource1" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FFFFFF;color: #284775;">
                   <table>
                    <tr>
                        <td>
                            <a href='TitleDetail.aspx?selectedtitle=<%# Eval("title_id") %>'>
                            <img src='Images/t<%# Eval("title_id") %>.jpg' /></td>
                            </a>
                        <td>
                            Title: <asp:Label ID="title_idLabel" runat="server" Text='<%# Eval("title") %>' />
                            <br />
                            Price: <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                            <br />
                        </td>
                    </tr>
                </table>
                </td>
            </AlternatingItemTemplate>            
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>            
            <ItemTemplate>
                 <td id="Td1" runat="server" style="background-color: #E0FFFF;color: #333333;">
                <table>
                    <tr>
                        <td>
                            <a href='TitleDetail.aspx?selectedtitle=<%# Eval("title_id") %>'>
                            <img src='Images/t<%# Eval("title_id") %>.jpg' /></td>
                            </a>
                        </td>
                        <td>
                            Title: <asp:Label ID="title_idLabel" runat="server" Text='<%# Eval("title") %>' />
                            <br />
                            Price: <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                            <br />
                        </td>
                    </tr>
                </table>
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>            
        </asp:ListView>
    </form>
</body>
</html>
