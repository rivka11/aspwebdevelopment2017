<%@ Page Title="" Language="C#" MasterPageFile="~/navMaster.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="WebApplication2.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table class="tableClass">
        <tr>
            <td class="auto-style2">Full Name:</td>
            <td class="auto-style2">
                <asp:TextBox ID="Name" runat="server" Width="209px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Name" ErrorMessage="Name Required" Font-Size="Small" ForeColor="Red">* Required Field</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Email Address:</td>
            <td class="auto-style8">
                <asp:TextBox ID="Email" runat="server" Height="18px" Width="300px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" Display="Dynamic" ErrorMessage="Must enter valid email" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">* Invalid Email Address</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Email" Display="Dynamic" ErrorMessage="Email Required" Font-Size="Small" ForeColor="Red">* Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Your reason for contacting us:</td>
            <td class="auto-style8">
                <asp:DropDownList ID="List" runat="server" Height="25px" Width="300px">
                    <asp:ListItem>seller question</asp:ListItem>
                    <asp:ListItem>buyer question</asp:ListItem>
                    <asp:ListItem>other question</asp:ListItem>
                 </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><br />
            </td>
            <td>
                <asp:TextBox ID="Details" placeholder ="type email here" runat="server" Height="60px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Details" ErrorMessage="Details Required" Font-Size="Small" ForeColor="Red">* Required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Button ID="submit" runat="server" OnClick="submit_Click" Text="Send email" />
                <br />
            </td>
        </tr>
    </table>
    <br />
    <br />
     <br />
 
    </asp:Content>
