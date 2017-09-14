<%@ Page Title="" Language="C#" MasterPageFile="~/navMaster.Master" AutoEventWireup="true" CodeBehind="LoginASP.aspx.cs" Inherits="WebApplication2.LoginASP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Login ID="Login1" runat="server" CreateUserText="Sign up for an account" CreateUserUrl="~/SignUpASP.aspx" VisibleWhenLoggedIn="False" OnAuthenticate="Login1_Authenticate">
</asp:Login>
<asp:LoginStatus ID="LoginStatus1" runat="server" />
</asp:Content>
