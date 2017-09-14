<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewAllBooks.aspx.cs" Inherits="WebApplication2.adminPages.viewAllBooks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ISBN" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                    <asp:BoundField DataField="ISBN" HeaderText="ISBN" ReadOnly="True" SortExpression="ISBN" />
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="Author" HeaderText="Author" SortExpression="Author" />
                    <asp:BoundField DataField="Edition" HeaderText="Edition" SortExpression="Edition" />
                    <asp:BoundField DataField="imageurl" HeaderText="imageurl" SortExpression="imageurl" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [book] WHERE [ISBN] = @ISBN" InsertCommand="INSERT INTO [book] ([ISBN], [Title], [Author], [Edition], [imageurl]) VALUES (@ISBN, @Title, @Author, @Edition, @imageurl)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [ISBN], [Title], [Author], [Edition], [imageurl] FROM [book]" UpdateCommand="UPDATE [book] SET [Title] = @Title, [Author] = @Author, [Edition] = @Edition, [imageurl] = @imageurl WHERE [ISBN] = @ISBN">
                <DeleteParameters>
                    <asp:Parameter Name="ISBN" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ISBN" Type="String" />
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Author" Type="String" />
                    <asp:Parameter Name="Edition" Type="Int32" />
                    <asp:Parameter Name="imageurl" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String" />
                    <asp:Parameter Name="Author" Type="String" />
                    <asp:Parameter Name="Edition" Type="Int32" />
                    <asp:Parameter Name="imageurl" Type="String" />
                    <asp:Parameter Name="ISBN" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </div>
    </form>
</body>
</html>
