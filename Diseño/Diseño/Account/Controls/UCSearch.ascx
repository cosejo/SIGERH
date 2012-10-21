<%@ Control Language="C#" AutoEventWireup="true"  Inherits="Enterprise.Membership.App.Account.Controls.UCSearch" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="aj" %>
<script type="text/javascript" src="../../Scripts/jquery-1.4.1.min.js"></script>
<script language="javascript" type="text/javascript">
    function setStyle(objDivID) {
        document.getElementById(objDivID).className = 'SelectedNodeStyle';
    }
 </script>
   <asp:ScriptManager ID="ScriptManager1" runat="server"  >
  </asp:ScriptManager>

   <div style=" min-height:300px; padding-bottom:5px;">

    <div id="search_container">  
        <div id="parature_search">     
              
              <asp:TextBox ID="txtSearchKey" class="searchText" runat="server" Text="Search" onfocus="if (this.value == 'Search') {this.value = '';}" ></asp:TextBox>
              <asp:Button ID="btnSearch" runat="server"  Text="Search" class="btnSearch" />
          </div>
  </div>

<asp:GridView ID="grSearchResult" runat="server" AllowPaging="True" 
           AllowSorting="True" AutoGenerateColumns="False" 
           DataSourceID="dsRole" EmptyDataText="Continue to search ..." 
           OnDataBound="GridView1_DataBound" 
           OnSelectedIndexChanged="GridView1_SelectedIndexChanged" 
           OnRowDataBound="GridView1_RowDataBound" DataKeyNames="userName" 
           CssClass="gridview" ViewStateMode="Enabled">
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
                » <a href='Mailto:<%# Eval("Email") %>' title="click to email from your computer">
                    <%#Eval("Email")%></a>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="createdate" HeaderText="Created Date" SortExpression="createdate" />
        <asp:BoundField DataField="lastlogindate" HeaderText="Last Login Date" SortExpression="lastlogindate" />
        <asp:CheckBoxField DataField="IsApproved" HeaderText="Approved" SortExpression="IsApproved">
            <ItemStyle HorizontalAlign="Center" />
        </asp:CheckBoxField>
        <asp:CheckBoxField DataField="IsLockedOut" HeaderText="Locked Out" SortExpression="IsLockedOut">
            <ItemStyle HorizontalAlign="Center" />
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
            <asp:DropDownList ID="ddlPageSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="gridviewPagerFont">
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

<asp:ObjectDataSource ID="dsRole" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="Enterprise_UsersByAccountEmail_Search" TypeName="Enterprise.Membership.App.Account.DataSource.MemberDataContext" EnablePaging="True" SelectCountMethod="Enterprise_NumberofUserByAccountEmail" OnSelected="dsRole_Selected">
    <SelectParameters>       
        <asp:ControlParameter Name="UserName" Type="String" ControlID="txtSearchKey" PropertyName="Text" DefaultValue="@SearchKey" />
    </SelectParameters>
</asp:ObjectDataSource>

<asp:Panel ID="pnlInfo" runat="server" Visible="false">
 
    <div class="Infoboard">
        <asp:HyperLink ID="PagingInformation" runat="server"></asp:HyperLink>
    </div>

    <div class="Infoboard">
        <asp:HyperLink ID="totalRecordCount" runat="server"></asp:HyperLink>
    </div>

   
  
</asp:Panel>
</div>




