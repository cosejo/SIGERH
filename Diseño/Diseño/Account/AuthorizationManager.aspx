<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AuthorizationManager.aspx.cs" Inherits="Diseño.Account.AuthorizationManager" %>
<%@ Register src="Controls/UCAuthorization.ascx" tagname="UCAuthorization" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
  
          <h2><span class="gridviewBannerUsers">
       <asp:Image ID="Image1" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/Styles/Images/decoy.png" />
       </span> 
        Authorization managment
    </h2>   
    <p>
         &nbsp;<uc1:UCAuthorization ID="UCAuthorization1" runat="server" />
 </p>
</asp:Content>
