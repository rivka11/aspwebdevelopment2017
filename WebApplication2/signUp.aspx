<%@ Page Title="" Language="C#" MasterPageFile="~/navMaster.Master" AutoEventWireup="true" CodeBehind="signUp.aspx.cs" Inherits="WebApplication2.signUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
      <div id ="space"> </div>   
      <div  class="inner">
          <div class="inner">
            <br/>
           
          
            <label>First Name:</label>
            <input name = "fname" type ="text" required="required"/>*
            <br/>
            <br/>
            <label>Last Name:</label>
            <input name = "lname" type ="text" required="required"/>*
            <br/>
            <br/>
            <label>Site user name:</label>
            <input type ="text" name = "uname" required="required"/>*
            <br/>
            <br/>
            <label>Email address:</label>
            <input type ="text" name = "email" required="required"/>*
            <br/>
            <br/>
            <label>Preferred contact method:</label>
              <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceContact" DataTextField="methodDesc" DataValueField="ContactID">
                  <asp:ListItem>Select</asp:ListItem>
              </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSourceContact" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ContactID], [methodDesc] FROM [contactmethods]"></asp:SqlDataSource>
              <br />
&nbsp;<br/>
              <label>Contact Info:</label>
              <input type ="text" name = "contactinfo" required="required"/>*
       
            <br/>
            <br/>
            
               <label>Campus</label>
              <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSourceCampus" DataTextField="CampusName" DataValueField="CampusID">
                  <asp:ListItem>choose</asp:ListItem>
              </asp:DropDownList>
              <asp:SqlDataSource ID="SqlDataSourceCampus" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CampusID], [CampusName] FROM [campus]"></asp:SqlDataSource>
              <label>
              <br />
              Password</label>
      <input type="password" placeholder="Enter Password" name="psw" required>*
      <br/>
      <br/>
      <label>Repeat Password</label>
      <input type="password" placeholder="Repeat Password" name="psw-repeat" required>*
      <br/>
      
      
      <p><label>By creating an account you agree to our <a href="termsprivacy.php">Terms & Privacy</a>.</label></p>
      
      
      
      
              <asp:Button ID="SignUp_button" runat="server" OnClick="SignUp_button_Click1" Text="Sign Up!" />
&nbsp;<br>
    </div>
    </div>

</asp:Content>
