<%@ Page Title="" Language="C#" MasterPageFile="~/navMaster.Master" AutoEventWireup="true" CodeBehind="addBook.aspx.cs" Inherits="WebApplication2.addBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
          <div id ="space"> </div>
    <div style="width:100%;">
        <div class="inner">
            <br>
            <div class="inner">
     
            <label>ISBN(10 or 13):</label>
            <input type ="text" name = "isbn" required="required"/>*
            <br>
            <br>
            <label>Title:</label>
                <asp:TextBox ID="titletb" required="required" runat="server"></asp:TextBox>
                *
            <br>
            <br>
            <label>Author:</label>
            <input type ="text" name = "author" required="required"/>*
            <br>
            <br>
            <label>Edition:</label>
            <input type ="text" name = "edition"/>
            <br>
            <br>
            <label>Notes:</label>
            <textarea  maxlength="100" name = "notes" rows ="3" cols="50" placeholder="enter information here (ie. book condition)"></textarea>
            <br>
            <br>
                      
            <label>Select image to upload:</label>
             <asp:FileUpload ID="FileUpload1" runat="server" />
            <br>
            <br>
            &nbsp;<asp:Button ID="addBook_Button" runat="server" OnClick="addBook_button_Click" Text="Add Book" />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
               
      
                <label style="color:red;" class="error">  </label>
            </div>
            <br>
    </div>
    </div>
</asp:Content>
