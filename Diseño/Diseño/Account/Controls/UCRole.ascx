<%@ Control Language="C#" AutoEventWireup="true" Inherits="Enterprise.Membership.App.Account.Controls.UCRole" %>

   <div style=" min-height:300px; padding-bottom:5px;">
<div >
   
  <div class="title"> New Role: </div>   
    <asp:TextBox runat="server" ID="NewRole" MaxLength="50" Width="135px" ToolTip="Name for thje new role."></asp:TextBox>
    <asp:Button ID="btnCancel" runat="server" OnClick="AddRole" Text="Add Role" ToolTip="Click to create new role." />
</div>
<br />
<asp:GridView ID="UserRoles" runat="server" AutoGenerateColumns="False" OnRowDataBound="UserRoles_RowDataBound" CssClass="gridview">
    <Columns>
        
        <asp:TemplateField ItemStyle-HorizontalAlign="Center" ItemStyle-Width="20px" HeaderText="#">
            <ItemTemplate>
                <%# Convert.ToInt32(DataBinder.Eval(Container, "DataItemIndex")) + 1 %>.
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" Width="20px"></ItemStyle>
        </asp:TemplateField>
       
        <asp:TemplateField>
            <HeaderTemplate>
                Role Name
            </HeaderTemplate>
            <ItemTemplate>
                <asp:Label ID="RoleName" runat="server" Text='<%# Eval("Role Name") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <HeaderTemplate>
                User Count
            </HeaderTemplate>
            <ItemTemplate>
                <asp:Label ID="UserCount" runat="server" Text='<%# Eval("User Count") %>'></asp:Label>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
        <asp:TemplateField>
            <HeaderTemplate>
                Delete Role
            </HeaderTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="btnUpdate" runat="server" CommandArgument='<%# Eval("Role Name") %>' CommandName="DeleteRole" OnClientClick="return confirm('Are you sure?')" OnCommand="DeleteRole" Text="Delete" ToolTip="Click to delete this role." />
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" />
        </asp:TemplateField>
    </Columns>
    <RowStyle CssClass="gridviewRowStyle" />
    <AlternatingRowStyle CssClass="gridviewAlternateRowStyle" />
    <SelectedRowStyle CssClass="gridviewSelected" />
    <HeaderStyle CssClass="gridviewHeader" />
    <EditRowStyle CssClass="gridviewEdit" />
</asp:GridView>

</div>

<div class="messageboard">
    <asp:Literal ID="Msg" runat="server"></asp:Literal>
  </div>