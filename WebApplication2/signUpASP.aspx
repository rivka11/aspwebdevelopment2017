<%@ Page Title="" Language="C#" MasterPageFile="~/navMaster.Master" AutoEventWireup="true" CodeBehind="signUpASP.aspx.cs" Inherits="WebApplication2.signUpASP" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 30px;
        }

        .auto-style2 {
            width: 139px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Height="305px" Width="311px" DisplayCancelButton="True" OnCreatedUser="CreateUserWizard1_CreatedUser" onCreatingUser="CreateUserWizard1_CreatingUser"

        onfinishbuttonclick="CreateUserWizard1_FinishButtonClick" ActiveStepIndex="1">
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server">
                <ContentTemplate>
                    <table style="font-size: 100%; height: 305px; width: 311px;">
                        <tr>
                            <td " class="auto-style1" colspan="2">Sign Up for Your New Account</td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td  class="auto-style2">
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" Display="None" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                  runat="server" 
                                  ErrorMessage="Please Enter Valid Email"
                                  ValidationGroup="CreateUserWizard1" ControlToValidate="Email"
                                  ForeColor="Red"
                                  Display ="None"
                                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                               </asp:RegularExpressionValidator>
                            
                            </td>
                        </tr>
                      

                        <!-- -->
                        <tr>
                            <td  class="auto-style2">
                                <asp:Label ID="Label1" runat="server" AssociatedControlID="firstname">First name</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="firstname" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="firstname" ErrorMessage="Firstname is required." ToolTip="firstname is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <!-- -->

                          <!-- -->
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="Label4" runat="server" AssociatedControlID="lastname">Last name</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="lastname" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="lastname" ErrorMessage="Lastname is required." ToolTip="lastname is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <!-- -->

                        <!-- -->
                        <tr>
                            <td  class="auto-style2">
                                <asp:Label ID="Label2" runat="server" AssociatedControlID="prefcontact">Preferred Contact</asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="prefcontact" runat="server" DataSourceID="SqlDataSourceContactr" DataTextField="methodDesc" DataValueField="ContactID">
                                    <asp:ListItem>Select</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceContactr" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [ContactID], [methodDesc] FROM [contactmethods]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <!-- -->
                           <!-- -->
                        <tr>
                            <td  class="auto-style2">
                                <asp:Label ID="Label5" runat="server" AssociatedControlID="contactinfo">Preferred contact info</asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="contactinfo" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"  Display="None" ControlToValidate="Email" ErrorMessage="contact info is required." ToolTip="contact info is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <!-- -->

                        
                        <!-- -->
                        <tr>
                            <td  class="auto-style2">
                                <asp:Label ID="Label3" runat="server" AssociatedControlID="Email">Campus</asp:Label>
                            </td>
                            <td>
                               <asp:DropDownList ID="campus" runat="server" DataSourceID="SqlDataSourceCampusr" DataTextField="CampusName" DataValueField="CampusID">
                  <asp:ListItem>choose</asp:ListItem>
              </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceCampusr" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CampusID], [CampusName] FROM [campus]"></asp:SqlDataSource>
                            </td>
                        </tr>
                        <!-- -->



                        <tr>
                            <td  colspan="2">
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="None" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                            </td>
                        </tr>
                        
                            
                            
                      
                    </table>
                    <label style="color:Black;" >
                            <asp:ValidationSummary id="valSum" ShowSummary="true" ValidationGroup="CreateUserWizard1"
                                
                             DisplayMode="List"
                             EnableClientScript="true"
                             HeaderText="The form is incomplete"
                             runat="server"/>
                        </label>
                </ContentTemplate>
            </asp:CreateUserWizardStep>
            <asp:CompleteWizardStep runat="server">
                <ContentTemplate>
                    <table style="font-size: 100%; height: 305px; width: 311px;">
                        <tr>
                            <td >Complete</td>
                        </tr>
                        <tr>
                            <td>
                     <asp:Label ID="complete" runat="server">Your account has been successfully created</asp:Label>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="ContinueButton" runat="server" CausesValidation="False" CommandName="Continue" Text="Continue" ValidationGroup="CreateUserWizard1" OnClick="ContinueButton_Click" />
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:CompleteWizardStep>
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>
