<%@ Control Language="C#" AutoEventWireup="true"  Inherits="Enterprise.Membership.App.Account.Controls.UCRegisterwithRole" %>

 
 <div style=" min-height:350px; padding-bottom:5px;"> 


    <asp:CreateUserWizard ID="WZRegisterUser" runat="server" 
         ContinueDestinationPageUrl="~/account/RegisterwithRole.aspx" 
         OnActiveStepChanged="WZRegisterUser_ActiveStepChanged" LoginCreatedUser="False" 
         CompleteSuccessText="The account with selected roles has been successfully created." 
         UnknownErrorMessage="The account was not created. Please try again." 
         CreateUserButtonText="Continue - Step 2" 
         OnCreatedUser="WZRegisterUser_CreatedUser" 
         StepNextButtonText="Continued... Set Role Information">
        <CompleteSuccessTextStyle CssClass="title" />
    <TitleTextStyle CssClass="cuwTitle" />
    <WizardSteps>
      <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server" Title=" Create a New Account">
                
                <ContentTemplate>
                   
                    <p>
                        Use the form below to create a new account.
                    </p>
                    <p>
                        Passwords are required to be a minimum of <%= Membership.MinRequiredPasswordLength %> characters in length.
                    </p>
                    <span class="failureNotification">
                        <asp:Literal ID="ErrorMessage" runat="server"></asp:Literal>
                    </span>
                    <asp:ValidationSummary ID="RegisterUserValidationSummary" runat="server" CssClass="failureNotification" 
                         ValidationGroup="RegisterUserValidationGroup"/>
                    <div class="accountInfo">
                        <fieldset class="register">
                            <legend>Account Information</legend>
                            <p>
                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                <asp:TextBox ID="UserName" runat="server" CssClass="textEntry"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" 
                                     CssClass="failureNotification" ErrorMessage="User Name is required." ToolTip="User Name is required." 
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                <asp:TextBox ID="Email" runat="server" CssClass="textEntry"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" 
                                     CssClass="failureNotification" ErrorMessage="E-mail is required." ToolTip="E-mail is required." 
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                <asp:TextBox ID="Password" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" 
                                     CssClass="failureNotification" ErrorMessage="Password is required." ToolTip="Password is required." 
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                            </p>
                            <p>
                                <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                                <asp:TextBox ID="ConfirmPassword" runat="server" CssClass="passwordEntry" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ControlToValidate="ConfirmPassword" CssClass="failureNotification" Display="Dynamic" 
                                     ErrorMessage="Confirm Password is required." ID="ConfirmPasswordRequired" runat="server" 
                                     ToolTip="Confirm Password is required." ValidationGroup="RegisterUserValidationGroup">*</asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                     CssClass="failureNotification" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match."
                                     ValidationGroup="RegisterUserValidationGroup">*</asp:CompareValidator>
                            </p>
                        </fieldset>
                        <p class="submitButton">
                            <asp:Button ID="CreateUserButton" runat="server" CssClass="button" CommandName="MoveNext" Text="Continue..." 
                                 ValidationGroup="RegisterUserValidationGroup"/>
                        </p>
                    </div>
                </ContentTemplate>
                <CustomNavigationTemplate>
                </CustomNavigationTemplate>
            </asp:CreateUserWizardStep>
      <asp:WizardStep ID="WZRole" runat="server" StepType="Step" Title="Continued... Set Roles" AllowReturn="False">
           <div class="accountInfo" style="width:300px;">
                 <fieldset class="register">
                      <legend>Role Information</legend>
                          <p>        
                              <asp:CheckBoxList ID="RoleList" runat="server" Width="300px" >
                              </asp:CheckBoxList>
                      </p>
            </fieldset>
            </div>
      </asp:WizardStep>
      <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
      </asp:CompleteWizardStep>
    </WizardSteps>
        <FinishCompleteButtonStyle CssClass="button" />
        <StepNextButtonStyle CssClass="button" />
  </asp:CreateUserWizard>


</div>
<div class="messageboard">
    <asp:Literal ID="Msg" runat="server"></asp:Literal>
  </div>



