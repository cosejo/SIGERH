<%@ Control Language="C#" AutoEventWireup="true"  Inherits="Enterprise.Membership.App.Account.Controls.UCAuthorization" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="aj" %>
<script language="javascript" type="text/javascript">
    function setStyle(objDivID)
     {
        document.getElementById(objDivID).className = 'SelectedNodeStyle';
    }
 </script>
   <asp:ScriptManager ID="ScriptManager1" runat="server" EnableViewState="False">
  </asp:ScriptManager>

   <div style=" min-height:300px; padding-bottom:5px;">

<asp:UpdatePanel ID="upContainer" runat="server">
    <ContentTemplate>
        <table width="100%">
            <tr>
                <td valign="top">
                    <table width="100%">
                        <tr>
                            <td valign="top" style="padding-right: 30px; width: 150px;">
                                <div> 
                                      <asp:TreeView runat="server" ID="SiteTree"   ExpandDepth="1"  OnSelectedNodeChanged="SiteTree_SelectedNodeChanged" ShowLines="True" OnTreeNodeExpanded="SiteTree_TreeNodeExpanded"     OnTreeNodeDataBound="SiteTree_TreeNodeDataBound">                                                                          
                                        <LeafNodeStyle  />                                    
                                       <DataBindings>      
                                          <asp:TreeNodeBinding DataMember="siteMapNode" SelectAction="Select" ShowCheckBox="false" TextField="title" />  
                                                 <asp:TreeNodeBinding DataMember="siteMapNode" TextField="title" NavigateUrlField="url" />  
                                                  <asp:TreeNodeBinding DataMember="siteMapNode" TextField="title" NavigateUrlField="url" />    
                                                   <asp:TreeNodeBinding DataMember="siteMap" /> 
                                         </DataBindings> 
                                    </asp:TreeView>
                                    <asp:XmlDataSource ID="XmlDsSiteMap" runat="server" >
                                     </asp:XmlDataSource>
                                    
                                </div>
                            </td>
                            <td valign="top" style="padding-left: 30px; border-left: 1px solid #F0F0F0;">
                                <asp:Panel runat="server" ID="pnlSecurityInfoSection" Visible="false">
                                    <div >
                                        <asp:Literal ID="ltrUri" runat="server" ></asp:Literal>
                                    </div>
                                    <br />
                                    <div >
                                        <asp:Label  CssClass="title" ID="ltrCurrent" runat="server"  Text="Current Rules:"></asp:Label>
                                    </div>
                                    <br />
                                    <asp:GridView runat="server" ID="grdRules" AutoGenerateColumns="False" CellPadding="4" CssClass="gridview">
                                        <Columns>
                                            <asp:TemplateField ItemStyle-HorizontalAlign="Center" ItemStyle-Width="20px" HeaderText="#">
                                                <ItemTemplate>
                                                    <%# Convert.ToInt32(DataBinder.Eval(Container, "DataItemIndex")) + 1 %>.
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" Width="20px"></ItemStyle>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Action">
                                                <ItemTemplate>
                                                   <asp:Literal runat="server" ID="Action" Text= <%# GetAction(Container.DataItem) %> />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Roles">
                                                <ItemTemplate>
                                                  <asp:Literal runat="server"  ID="Role" Text=   <%# GetRole(Container.DataItem) %> />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="User">
                                                <ItemTemplate>
                                                   <asp:Literal runat="server" ID="User" Text=  <%# GetUser(Container.DataItem) %> />
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Delete Rule">
                                                <ItemTemplate>
                                                    <asp:Button ID="btnUpdate" runat="server" Text=" Delete " CommandArgument="<%# Container.DataItem %>" OnClick="DeleteRule" />
                                                </ItemTemplate>
                                                <ControlStyle Font-Size="10px" />
                                                <ItemStyle HorizontalAlign="Center" />
                                            </asp:TemplateField>                                            
                                        </Columns>
                                        <RowStyle CssClass="gridviewRowStyle" />
                                        <AlternatingRowStyle CssClass="gridviewAlternateRowStyle" />
                                        <SelectedRowStyle CssClass="gridviewSelected" />
                                        <HeaderStyle CssClass="gridviewHeader" />
                                        <EditRowStyle CssClass="gridviewEdit" />
                                    </asp:GridView>
                                    <br />
                                    <br />
                                    <div runat="server" id="ltrnewrule"  class="title">
                                    Create New:
                                    </div>
                                    <br />
                                    <table cellpadding="3" cellspacing="0" style="width: 100%">
                                        <tr>
                                            <td style="width: 170px">
                                                <b>Action:</b>&nbsp;<asp:RadioButton ID="ActionDeny" runat="server" Checked="true" GroupName="action" Text="Deny" />
                                                <asp:RadioButton ID="ActionAllow" runat="server" GroupName="action" Text="Allow" />
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 153px">
                                                <b>Rule applies to:</b>&nbsp;
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 153px">
                                                <asp:RadioButton ID="ApplyRole" runat="server" Checked="true" 
                                                    GroupName="applyto" Text="Role:" />
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="UserRoles" runat="server" AppendDataBoundItems="true" Width="204px">
                                                    <asp:ListItem>Select Role</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 153px">
                                                <asp:RadioButton ID="ApplyUser" runat="server" GroupName="applyto" 
                                                    Text="User:" />
                                            </td>
                                            <td>
                                                <asp:TextBox ID="SpecifyUser" runat="server" Width="204px" ToolTip="Enter a UserName.."></asp:TextBox>
                                                <aj:TextBoxWatermarkExtender ID="SpecifyUser_TextBoxWatermarkExtender" runat="server" TargetControlID="SpecifyUser" WatermarkText="User Name...">
                                                </aj:TextBoxWatermarkExtender>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 153px">
                                                <asp:RadioButton ID="ApplyAllUsers" runat="server" GroupName="applyto" Text="All Users (*)" />
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 153px">
                                                &nbsp;</td>
                                            <td>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 153px">
                                                <asp:Button ID="btnUnlock" runat="server" OnClick="CreateRule" CssClass="button" Text="Create" />
                                            </td>
                                            <td>
                                                
                                            </td>
                                        </tr>
                                    </table>
                                    <br />
                                    <br />
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>

    </ContentTemplate>
</asp:UpdatePanel>
</div>

<div class="messageboard">
    <asp:Literal ID="Msg" runat="server"></asp:Literal>
  </div>



