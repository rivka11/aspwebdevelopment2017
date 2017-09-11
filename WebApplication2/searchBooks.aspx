﻿<%@ Page Title="" Language="C#" MasterPageFile="~/navMaster.Master" AutoEventWireup="true" CodeBehind="searchBooks.aspx.cs" Inherits="WebApplication2.searchBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="ISBN" DataSourceID="tddb"
        GroupItemCount="3" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
        <AlternatingItemTemplate>
            <td runat="server" style="background-color: #FAFAD2;color: #284775;">ISBN:
                <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                <br />Title:
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                <br />Author:
                <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                <br />Edition:
                <asp:Label ID="EditionLabel" runat="server" Text='<%# Eval("Edition") %>' />
                <br />imageurl:
                <asp:Label ID="imageurlLabel" runat="server" Text='<%# Eval("imageurl") %>' />
                <br /></td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="background-color: #FFCC66;color: #000080;">ISBN:
                <asp:Label ID="ISBNLabel1" runat="server" Text='<%# Eval("ISBN") %>' />
                <br />Title:
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                <br />Author:
                <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                <br />Edition:
                <asp:TextBox ID="EditionTextBox" runat="server" Text='<%# Bind("Edition") %>' />
                <br />imageurl:
                <asp:TextBox ID="imageurlTextBox" runat="server" Text='<%# Bind("imageurl") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br /></td>
        </EditItemTemplate>
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
        <InsertItemTemplate>
            <td runat="server" style="">ISBN:
                <asp:TextBox ID="ISBNTextBox" runat="server" Text='<%# Bind("ISBN") %>' />
                <br />Title:
                <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                <br />Author:
                <asp:TextBox ID="AuthorTextBox" runat="server" Text='<%# Bind("Author") %>' />
                <br />Edition:
                <asp:TextBox ID="EditionTextBox" runat="server" Text='<%# Bind("Edition") %>' />
                <br />imageurl:
                <asp:TextBox ID="imageurlTextBox" runat="server" Text='<%# Bind("imageurl") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br /></td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="background-color: #FFFBD6;color: #333333;">ISBN:
                <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                <br />Title:
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                <br />Author:
                <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                <br />Edition:
                <asp:Label ID="EditionLabel" runat="server" Text='<%# Eval("Edition") %>' />
                <br />imageurl:
                <asp:Label ID="imageurlLabel" runat="server" Text='<%# Eval("imageurl") %>' />
                <br /></td>
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
                    <td runat="server" style="text-align: center;background-color: #FFCC66;font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333;">
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="background-color: #FFCC66;font-weight: bold;color: #000080;">ISBN:
                <asp:Label ID="ISBNLabel" runat="server" Text='<%# Eval("ISBN") %>' />
                <br />Title:
                <asp:Label ID="TitleLabel" runat="server" Text='<%# Eval("Title") %>' />
                <br />Author:
                <asp:Label ID="AuthorLabel" runat="server" Text='<%# Eval("Author") %>' />
                <br />Edition:
                <asp:Label ID="EditionLabel" runat="server" Text='<%# Eval("Edition") %>' />
                <br />imageurl:
                <asp:Label ID="imageurlLabel" runat="server" Text='<%# Eval("imageurl") %>' />
                <br /></td>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="tddb" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [book]"></asp:SqlDataSource>
    <br />
</asp:Content>
