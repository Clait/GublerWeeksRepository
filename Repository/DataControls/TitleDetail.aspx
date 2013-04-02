<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TitleDetail.aspx.cs" Inherits="DataControls_TitleDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Pubs %>" SelectCommand="SELECT [title], [type], [pub_name], [price], [advance], [royalty], [ytd_sales], [notes], [pubdate], [title_id] FROM [titles] JOIN publishers ON titles.pub_id=publishers.pub_id WHERE ([title_id] = @title_id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="title_id" QueryStringField="selectedtitle" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
        <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="title_id" DataSourceID="SqlDataSource1" ForeColor="#333333">
            
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <ItemTemplate>
                <table>
                    <tr>
                    <td>
                        <img src='Images/<%# Eval("title_id") %>.jpg' />
                    </td>
                    <td>
                        title:
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("title") %>' />
                <br />
                type:
                <asp:Label ID="Label2" runat="server" Text='<%# Bind("type") %>' />
                <br />
                pub_name:
                <asp:Label ID="Label3" runat="server" Text='<%# Bind("pub_name") %>' />
                <br />
                price:
                <asp:Label ID="Label4" runat="server" Text='<%# Bind("price") %>' />
                <br />
                advance:
                <asp:Label ID="Label5" runat="server" Text='<%# Bind("advance") %>' />
                <br />
                royalty:
                <asp:Label ID="Label6" runat="server" Text='<%# Bind("royalty") %>' />
                <br />
                ytd_sales:
                <asp:Label ID="Label7" runat="server" Text='<%# Bind("ytd_sales") %>' />
                <br />
                notes:
                <asp:Label ID="Label8" runat="server" Text='<%# Bind("notes") %>' />
                <br />
                pubdate:
                <asp:Label ID="Label9" runat="server" Text='<%# Bind("pubdate") %>' />
                <br />

                    </td>
                    </tr>
                </table>                
            </ItemTemplate>
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        </asp:FormView>
    </form>
</body>
</html>
