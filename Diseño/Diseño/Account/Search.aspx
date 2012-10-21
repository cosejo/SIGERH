<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Diseño.Account.Search" %>

<%@ Register src="Controls/UCSearch.ascx" tagname="UCSearch" tagprefix="uc1" %>

<%@ Register src="Controls/UCAccountUpdate.ascx" tagname="UCAccountUpdate" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
    <asp:UpdatePanel ID="upContainer" runat="server">
    <ContentTemplate>
          <h2>
          <span class="gridviewBannerUsers">
             <asp:Image ID="Image1" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/Styles/Images/decoy.png" />
           </span> 
            Member Search
           </h2>   
        <p>
        
            &nbsp;<uc1:UCSearch ID="UCSearch1" runat="server" />
          
           <p>
        
      
               <br />
               <br/>
               <p>
                   <uc2:UCAccountUpdate ID="UCAccountUpdate1" runat="server" />
               </p>
               <p>
               </p>
        </p>
        </ContentTemplate>
          </asp:UpdatePanel>
</asp:Content>
