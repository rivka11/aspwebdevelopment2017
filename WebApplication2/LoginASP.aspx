<%@ Page Title="" Language="C#" MasterPageFile="~/navMaster.Master" AutoEventWireup="true" CodeBehind="LoginASP.aspx.cs" Inherits="WebApplication2.LoginASP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:LoginView ID="LoginView1" runat="server">
        <LoggedInTemplate>
            you are logged in already<br />
            <asp:HyperLink ID="HyperLink1" runat="server">logout</asp:HyperLink>
        </LoggedInTemplate>
        <RoleGroups>
            <asp:RoleGroup Roles="admin">
            </asp:RoleGroup>
        </RoleGroups>
       <AnonymousTemplate>
           <asp:Login ID="Login1" runat="server" CreateUserText="Sign up for an account" CreateUserUrl="~/SignUpASP.aspx" VisibleWhenLoggedIn="False" OnAuthenticate="Login1_Authenticate">
</asp:Login>
       </AnonymousTemplate>
    </asp:LoginView>
<asp:LoginStatus ID="LoginStatus1" runat="server" />
</asp:Content>
