<%@ Page Title="" Language="C#" MasterPageFile="~/navMaster.Master" AutoEventWireup="true" CodeBehind="addBook.aspx.cs" Inherits="WebApplication2.addBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
          <div id ="space"> </div>
    <div style="width:100%;">
        <div class="inner">
            <br/>
            <div class="inner">
     
            <label>ISBN(10 or 13):</label>
             <asp:TextBox ID="isbn" required="required" runat="server"></asp:TextBox>*
            <br/>
            <br/>
            <label>Title:</label>
                <asp:TextBox ID="titletb" required="required" runat="server"></asp:TextBox>
                *
            <br/>
            <br/>
            <label>Author:</label>
             <asp:TextBox ID="author" required="required" runat="server"></asp:TextBox>*
            <br/>
            <br/>
            <label>Edition:</label>
             <asp:TextBox ID="edition" required="required" runat="server"></asp:TextBox>
            <br/>
            <br/>
            <label>Notes:</label>
            <textarea ID ="notes" runat= "server" 100"  rows ="3" cols="50" placeholder="enter information here (ie. book condition)" id="notes"></textarea>
            <br/>
            <br/>
                      
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
