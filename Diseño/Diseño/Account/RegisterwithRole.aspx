<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="RegisterwithRole.aspx.cs" Inherits="Diseño.Account.UCRegisterwithRole" %>

<%@ Register src="Controls/UCRegisterwithRole.ascx" tagname="UCRegisterwithRole" tagprefix="uc1" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
  

  
          <h2><span class="gridviewBannerUsers">
       <asp:Image ID="Image1" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/Styles/Images/decoy.png" />
       </span> 
         Account with Role
    </h2>   
    <p>
        &nbsp;<uc1:UCRegisterwithRole ID="UCRegisterwithRole1" runat="server" />
  </asp:Content>
