<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Role.aspx.cs" Inherits="Diseño.Account.Role" %>

<%@ Register src="Controls/UCRole.ascx" tagname="UCRole" tagprefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">  
  
      <h2><span class="gridviewBannerUsers">
       <asp:Image ID="Image1" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/Styles/Images/decoy.png" />
       </span> 
        User Role
    </h2>   
    <p>
        &nbsp;<uc2:UCRole ID="UCRole1" runat="server" />
          
 
</asp:Content>
