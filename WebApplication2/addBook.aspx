<%@ Page Title="" Language="C#" MasterPageFile="~/navMaster.Master" AutoEventWireup="true" CodeBehind="addBook.aspx.cs" Inherits="WebApplication2.addBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
          <div id ="space"> 
              
              <asp:LoginView ID="LoginView1" runat="server">
                  <AnonymousTemplate>
                      You must be logged in to access this page!
                      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/LoginASP.aspx">Login</asp:HyperLink>
                      &nbsp;&nbsp;
                      <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/signUpASP.aspx">Sign up</asp:HyperLink>
                  </AnonymousTemplate>

              </asp:LoginView>
              
          </div>
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
             <asp:TextBox ID="edition"  runat="server"></asp:TextBox>
            <br/>
            <br/>
            <label>Notes:</label>
            <textarea ID ="notes" runat= "server"  rows ="3" cols="50" placeholder="enter information here (ie. book condition)" ></textarea>
            <br/>
            <br/>
                      
            <label>Select image to upload:</label>
             <asp:FileUpload ID="FileUpload1" runat="server" />
            <br/>
            <br/>
            &nbsp;<asp:Button ID="addBook_Button" runat="server" OnClick="addBook_button_Click" Text="Add Book" />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
               
      
                <label style="color:red;" class="error">  </label>
            </div>
            <br>
    </div>
    </div>
</asp:Content>
