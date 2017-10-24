<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewAllBooksGridView.aspx.cs" Inherits="WebApplication2.viewAllBooksGridView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [bookID], [ISBN], [Title], [Author], [Edition], [notes] FROM [book] ORDER BY [bookID]"></asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="bookID" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="bookID" HeaderText="bookID" InsertVisible="False" ReadOnly="True" SortExpression="bookID" />
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                    <asp:BoundField DataField="Edition" HeaderText="Edition" SortExpression="Edition" />
                    <asp:BoundField DataField="notes" HeaderText="notes" SortExpression="notes" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [book] WHERE [bookID] = @bookID" InsertCommand="INSERT INTO [book] ([ISBN], [Title], [Author], [Edition], [notes]) VALUES (@ISBN, @Title, @Author, @Edition, @notes)" SelectCommand="SELECT [bookID], [ISBN], [Title], [Author], [Edition], [notes] FROM [book] ORDER BY [bookID]" UpdateCommand="UPDATE [book] SET [ISBN] = @ISBN, [Title] = @Title, [Author] = @Author, [Edition] = @Edition, [notes] = @notes WHERE [bookID] = @bookID">
                <DeleteParameters>
                    <asp:Parameter Name="bookID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ISBN" Type="String" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Author" Type="String" />
                    <asp:Parameter Name="Edition" Type="Int32" />
                    <asp:Parameter Name="notes" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ISBN" Type="String" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Author" Type="String" />
                    <asp:Parameter Name="Edition" Type="Int32" />
                    <asp:Parameter Name="notes" Type="String" />
                    <asp:Parameter Name="bookID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
