<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountUpdate.aspx.cs" Inherits="Diseño.Account.AccountUpdate" %>

<%@ Register src="Controls/UCAccountUpdate.ascx" tagname="UCAccountUpdate" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Styles/Site.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    

      
      <h2><span class="gridviewBannerUsers">
       <asp:Image ID="Image1" runat="server" ImageAlign="AbsMiddle" ImageUrl="~/Styles/Images/decoy.png" />
       </span> 
        Account Update
      </h2>   
    <p>
         <uc1:UCAccountUpdate ID="UCAccountUpdate1" runat="server" />

       
          
    </div>
    </form>
</body>
</html>
