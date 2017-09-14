<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addBook.aspx.cs" Inherits="WebApplication2.adminPages.addBook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ISBN" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="82px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                    <asp:BoundField DataField="Edition" HeaderText="Edition" SortExpression="Edition" />
                    <asp:BoundField DataField="imageurl" HeaderText="imageurl" SortExpression="imageurl" />
                    <asp:HyperLinkField Text="insert" />
                </Fields>
            </asp:DetailsView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
