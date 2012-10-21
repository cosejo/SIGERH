<%@ Control Language="C#" AutoEventWireup="true" Inherits="Enterprise.Membership.App.Account.Controls.UCSearchByRole" %>
<div style=" min-height:300px; padding-bottom:5px;">
  <asp:DropDownList ID="ddlGridSelectRole" runat="server" AutoPostBack="True" OnDataBound="ddlGridSelectRole_DataBound"
           DataSourceID="RolesDataSource" DataTextField="RoleName" 
           DataValueField="RoleName" AppendDataBoundItems="True" 
           ToolTip="-----Select a Role------" ViewStateMode="Disabled">
        <asp:ListItem Selected="True">--- Select a Role ---</asp:ListItem>
    </asp:DropDownList>
    <asp:ObjectDataSource ID="RolesDataSource" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetRoles" TypeName="Enterprise.Membership.App.Account.DataSource.MemberDataContext" ></asp:ObjectDataSource>
<asp:GridView ID="gridviewRole" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="dsRole" DataKeyNames="userName" EmptyDataText="Continue lookup...." OnDataBound="gridviewRole_DataBound" OnSelectedIndexChanged="gridviewRole_SelectedIndexChanged" OnRowDataBound="gridviewRole_RowDataBound" CssClass="gridview">
    <Columns>        
        <asp:BoundField DataField="RowNumber" HeaderText="#" ItemStyle-HorizontalAlign="Center" ItemStyle-Width="20px" />
        <asp:TemplateField HeaderText="User Name" SortExpression="UserName">
            <ItemTemplate>            
                 <asp:LinkButton ID="btnDetail" runat="server" Text='<%# Eval("UserName") %>' CommandArgument='<%# Eval("UserName") %>' OnClick="btnDetail_Click" />                
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Email" SortExpression="Email">
            <EditItemTemplate>
                <asp:TextBox ID="txtComment" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                »: <a href='Mailto:<%# Eval("Email") %>' title="click to email from your computer">
                    <%#Eval("Email")%></a>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="createdate" HeaderText="Created Date" SortExpression="createdate" />
        <asp:BoundField DataField="lastlogindate" HeaderText="Last Login Date" SortExpression="lastlogindate" />
        <asp:BoundField DataField="rolename" HeaderText="ROLE" SortExpression="rolename" ItemStyle-HorizontalAlign="Center">
            <ItemStyle HorizontalAlign="Center"></ItemStyle>
        </asp:BoundField>
        <asp:CheckBoxField DataField="IsApproved" HeaderText="Approved" SortExpression="IsApproved" ItemStyle-HorizontalAlign="Center">
            <ItemStyle HorizontalAlign="Center"></ItemStyle>
        </asp:CheckBoxField>
        <asp:CheckBoxField DataField="IsLockedOut" HeaderText="Locked Out" SortExpression="IsLockedOut" ItemStyle-HorizontalAlign="Center">
            <ItemStyle HorizontalAlign="Center"></ItemStyle>
        </asp:CheckBoxField>
    </Columns>
   <RowStyle CssClass="gridviewRowStyle" />
     <AlternatingRowStyle CssClass="gridviewAlternateRowStyle" />
      <SelectedRowStyle CssClass="gridviewSelected" />
    <HeaderStyle CssClass="gridviewHeader" />
     <EditRowStyle CssClass="gridviewEdit" />
    <PagerTemplate>
        <div class="gridviewPagerFont">
            <asp:Label ID="Label2" runat="server" Text="Show rows:" />
            <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="gridviewRole_SelectedIndexChanged" CssClass="gridviewPagerFont">
                <asp:ListItem Value="5" />
                <asp:ListItem Value="10" />
                <asp:ListItem Value="15" />
                <asp:ListItem Value="20" />
                <asp:ListItem Value="40" />
                <asp:ListItem Value="80" />
                <asp:ListItem Value="1000" />
            </asp:DropDownList>
            &nbsp; Page
            <asp:TextBox ID="txtGoToPage" runat="server" AutoPostBack="true" OnTextChanged="GoToPage_TextChanged" Width="40px" CssClass="gridviewPagerFont" />&nbsp;of
            <asp:Label ID="lblTotalNumberOfPages" runat="server" />&nbsp;
            <asp:Button ID="btnFirst" runat="server" CommandName="Page" ToolTip="First" CommandArgument="First" Text="First" />
            <asp:Button ID="btnPrevious" runat="server" CommandName="Page" ToolTip="Previous Page" CommandArgument="Prev" Text="Prev" />
            <asp:Button ID="btnNext" runat="server" CommandName="Page" ToolTip="Next Page" CommandArgument="Next" Text="Next" />
            <asp:Button ID="btnLast" runat="server" CommandName="Page" ToolTip="Last" CommandArgument="Last" Text="Last" />
        </div>
    </PagerTemplate>
</asp:GridView>

<asp:ObjectDataSource ID="dsRole" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Enterprise_GetUsersByRole" TypeName="Enterprise.Membership.App.Account.DataSource.MemberDataContext" EnablePaging="true"  SelectCountMethod="GetAcountByRole" OnSelected="dsRole_Selected">
    <SelectParameters>
        <asp:ControlParameter ControlID="ddlGridSelectRole" DefaultValue="RoleName" Name="RoleName" PropertyName="SelectedValue" Type="String" />
    </SelectParameters>
</asp:ObjectDataSource>

   <asp:Panel ID="pnlInfo" runat="server" Visible="false"> 
    <div class="Infoboard">
        <asp:HyperLink ID="PagingInformation" runat="server"></asp:HyperLink>
    </div>
    <div class="Infoboard">
        <asp:HyperLink ID="totalRecordCount" runat="server"></asp:HyperLink>
    </div>   
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Member_GetRoles" TypeName="Enterprise.Memebership.Portal.datasource.MembershipDataTableAdapters.Member_RolesTableAdapter"></asp:ObjectDataSource>
</asp:Panel>
</div>

<div class="messageboard">
    <asp:Literal ID="Msg" runat="server"></asp:Literal>
</div>




