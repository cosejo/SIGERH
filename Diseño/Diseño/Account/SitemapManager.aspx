<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SitemapManager.aspx.cs" Inherits="Diseño.Account.SitemapManager" %>

<%@ Register src="Controls/UCSitemap.ascx" tagname="UCSitemap" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

      <h2><span class="gridviewBannerUsers">
       <asp:Image ID="Image1" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/Styles/Images/decoy.png" />
       </span> 
        Sitemap managment
    </h2> 



  
    <p>
        <uc1:UCSitemap ID="UCSitemap1" runat="server" />
    </p>
    
</asp:Content>
