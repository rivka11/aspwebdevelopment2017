<%@ Page Title="" Language="C#" MasterPageFile="~/navMaster.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="WebApplication2.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
          <div id ="space"> </div>
   
    <div style="width:100%;">
        <div class="inner">
            <br>
            <div class="inner">
              
            <label>enter email</label>
            <input type ="text" name="email" required="required"/>*
            <br>
            <br>
            <label>enter password</label>
            <input type ="password" name="psw" required="required"/>*
            
            <br>
            <br>
            <input type ="submit" value="sign in"/>
            
     
                <label style="color:red;">
                
                </label>
            </div>
            <br>
    </div>
    </div>
</asp:Content>
