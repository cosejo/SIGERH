<%@ Control Language="C#" AutoEventWireup="true"  Inherits="Enterprise.Membership.App.Account.Controls.UCAccountUpdate" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="atk" %>
<script type="text/javascript" src="../../Scripts/jquery-1.4.1.min.js"></script>

  <asp:Panel ID="pnlUserData" runat="server">
   
    <asp:UpdatePanel ID="upContainer" runat="server">
        <ContentTemplate>
          
            <atk:TabContainer ID="tcntUserInfo" runat="server" ActiveTabIndex="1" 
                Width="100%" Font-Size="10px" CssClass="aTab1">
                <atk:TabPanel ID="tbGeneralInfo" runat="server" HeaderText="General User Info">
                <ContentTemplate>
                <div class="contentTemplate">
                <div class="formSectionTitle2">USER ROLES </div>
                <div class="checkboxList">
                <asp:CheckBoxList ID="UserRoles" runat="server" RepeatDirection="Horizontal" />
                </div>
                <br />
                <div class="formSectionTitle2">USER INFO </div>
                <asp:DetailsView AutoGenerateRows="False" DataSourceID="MemberData" ID="UserInfo" runat="server" OnItemUpdating="UserInfo_ItemUpdating" DefaultMode="Edit" CssClass="gridview">
                <Fields>
                <asp:BoundField DataField="UserName" HeaderText="User Name" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="Email" HeaderText="Email"></asp:BoundField>
                <asp:TemplateField HeaderText="Comment">
                <EditItemTemplate><asp:TextBox ID="txtComment" runat="server" Text='<%# Bind("Comment") %>' TextMode="MultiLine"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                <asp:TextBox ID="txtComment" runat="server" Text='<%# Bind("Comment") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Comment") %>'></asp:Label>
                </ItemTemplate><ControlStyle Height="100px" Width="270px" />
                </asp:TemplateField>
                <asp:CheckBoxField DataField="IsApproved" HeaderText="Active User"></asp:CheckBoxField>
                <asp:CheckBoxField DataField="IsLockedOut" HeaderText="Is Locked Out" ReadOnly="True">
                </asp:CheckBoxField><asp:CheckBoxField DataField="IsOnline" HeaderText="Is Online" ReadOnly="True"></asp:CheckBoxField>
                <asp:BoundField DataField="CreationDate" HeaderText="Creation Date" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="LastActivityDate" HeaderText="Last Activity Date" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="LastLoginDate" HeaderText="Last Login Date" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="LastLockoutDate" HeaderText="Last Lockout Date" ReadOnly="True"></asp:BoundField>
                <asp:BoundField DataField="LastPasswordChangedDate" HeaderText="Last Password Changed Date" ReadOnly="True"></asp:BoundField>
                <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                <div class="clearBoth2">
                </div><asp:Button ID="btnUpdate" runat="server" CausesValidation="True" CommandName="Update" Text="Update User" CssClass="button"  Width="200px"/>
                <asp:Button ID="btnCancel" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" CssClass="button" Width="200px"/>
                <asp:Button ID="btnUnlock" runat="server" Text="Unlock User" OnClick="UnlockUser" CssClass="button" Width="200px" />
                <asp:Button ID="btnDelete" runat="server" Text="Delete User" OnClick="DeleteUser"  CssClass="button" Width="200px"/>
                </EditItemTemplate>
                <ItemTemplate>
                <div class="clearBoth2"></div>
                <asp:Button ID="btnUpdate" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit User Info" />
                </ItemTemplate>
                <ControlStyle Font-Size="11px" />
                </asp:TemplateField>
                </Fields>
                <RowStyle CssClass="gridviewRowStyle" />
                <AlternatingRowStyle CssClass="gridviewAlternateRowStyle" />
                <HeaderStyle CssClass="gridviewHeader" />
                <EditRowStyle CssClass="gridviewEdit" />
                </asp:DetailsView><br />
                <asp:ObjectDataSource ID="MemberData" runat="server" DataObjectTypeName="System.Web.Security.MembershipUser" SelectMethod="GetUser" UpdateMethod="UpdateUser" TypeName="System.Web.Security.Membership"><SelectParameters><asp:QueryStringParameter Name="username" QueryStringField="username" /></SelectParameters></asp:ObjectDataSource></div></ContentTemplate></atk:TabPanel><atk:TabPanel ID="TabPanel3" runat="server" HeaderText="User Profile"><ContentTemplate><div class="contentTemplate"><div class="formSectionTitle2">ABOUT YOU </div><div class="formLabelsText">First name:<br /> <asp:TextBox ID="txtFirstName" runat="server" Width="99%" MaxLength="50"></asp:TextBox></div><div class="formLabelsText">Last name:<br /> <asp:TextBox ID="txtLastName" runat="server" Width="99%" MaxLength="50" /></div><div class="formLabelsText">Gender:<br /> <asp:DropDownList runat="server" ID="ddlGenders"><asp:ListItem Text="Please select one..." Selected="True" /><asp:ListItem Text="Male" Value="M" /><asp:ListItem Text="Female" Value="F" /></asp:DropDownList></div><div class="formSectionEnd"></div><div class="formSectionTitle2">ADDRESS </div><div class="formLabelsText">Address:<br /> <asp:TextBox runat="server" ID="txtAddress" Width="99%" MaxLength="100" /></div><div class="formLabelsText">Address2:<br /> <asp:TextBox runat="server" ID="txtAptNumber" Width="99%" MaxLength="50" /></div><div class="formLabelsText">City:<br /> <asp:TextBox runat="server" ID="txtCity" Width="99%" MaxLength="100" /></div><div class="formLabelsText">State:<br /> <asp:DropDownList ID="ddlStates" runat="server" AppendDataBoundItems="True" Width="99%"><asp:ListItem Selected="True" Text="Please select one..." /></asp:DropDownList></div><div class="formLabelsText">Zip code:<br /> <asp:TextBox runat="server" ID="txtPostalCode" Width="99%" MaxLength="20" /></div><div class="formLabelsText">Country:<br /> <asp:DropDownList ID="ddlCountries" runat="server" AppendDataBoundItems="True" Width="99%"><asp:ListItem Selected="True" Text="Please select one..." /></asp:DropDownList></div><div class="formSectionEnd"></div><div class="formSectionTitle2">CONTACT INFO </div><div class="formLabelsText">Phone:<br /> <asp:TextBox runat="server" ID="txtDayTimePhone" Width="99%" MaxLength="20" /></div><div class="formSectionEnd"></div><div class="formButton"><asp:Button ID="btnUpdateProfile" runat="server" Text="Update Profile" ValidationGroup="EditProfile" OnClick="btnUpdateProfile_Click" CssClass="button" /><asp:Button ID="btnDeleteProfile" runat="server" OnClick="btnDeleteProfile_Click" OnClientClick="return confirm('Are Your Sure?')" Text="Delete Profile" CssClass="button" />&#160;&#160;</div></div></ContentTemplate></atk:TabPanel><atk:TabPanel ID="TabPanel4" runat="server" HeaderText="Change Password"><HeaderTemplate>Change Password</HeaderTemplate><ContentTemplate><div class="contentTemplate"><div class="formSectionTitle2">CHANGE PASSWORD: </div><div class="formLabelsText">Current Password:<br /> <asp:TextBox ID="OldPasswordTextbox" runat="server" TextMode="Password" Width="140px"></asp:TextBox><asp:RequiredFieldValidator ID="OldPasswordRequiredValidator" runat="server" ControlToValidate="OldPasswordTextbox" Display="Dynamic" ErrorMessage="Required" ValidationGroup="changepassword"></asp:RequiredFieldValidator></div><div class="formLabelsText">New Password:<br /> <asp:TextBox ID="PasswordTextbox" runat="server" TextMode="Password" Width="140px"></asp:TextBox><asp:RequiredFieldValidator ID="PasswordRequiredValidator" runat="server" ControlToValidate="PasswordTextbox" Display="Dynamic" ErrorMessage="Required" ValidationGroup="changepassword"></asp:RequiredFieldValidator></div><div class="formLabelsText">Confirm New Password:<br /> <asp:TextBox ID="PasswordConfirmTextbox" runat="server" TextMode="Password" Width="140px"></asp:TextBox><asp:RequiredFieldValidator ID="PasswordConfirmRequiredValidator" runat="server" ControlToValidate="PasswordConfirmTextbox" Display="Dynamic" ErrorMessage="Required" ValidationGroup="changepassword"></asp:RequiredFieldValidator><asp:CompareValidator ID="PasswordConfirmCompareValidator" runat="server" ControlToCompare="PasswordTextBox" ControlToValidate="PasswordConfirmTextbox" Display="Dynamic" ErrorMessage="NEW password must match CONFIRM password." ValidationGroup="changepassword"></asp:CompareValidator></div><div class="formButton"><asp:Button ID="ChangePasswordButton" runat="server" OnClick="ChangePassword_OnClick" Text="Change Password" ValidationGroup="changepassword" Width="150px" /></div><div class="formSectionEnd"></div><div><asp:Label ID="Label1" runat="server" ForeColor="Maroon"></asp:Label></div></div></ContentTemplate></atk:TabPanel></atk:TabContainer>
            <br />
           
        </ContentTemplate>
    </asp:UpdatePanel>




<div class="messageboard">
    <asp:Literal ID="Msg" runat="server"></asp:Literal>
  </div>




</asp:Panel>




