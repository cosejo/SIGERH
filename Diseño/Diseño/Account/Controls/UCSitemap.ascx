<%@ Control Language="C#" AutoEventWireup="true"  Inherits="Enterprise.Membership.App.Account.Controls.UCSitemap" %>

 
    <div style=" min-height:350px; padding-bottom:5px;"> 
<div >
 <asp:FileUpload ID="fuSitemap" runat="server" Width="500px" CssClass="button"/>
  <asp:Button id="UploadBtn" Text="Upload Sitemap"  OnClick="UploadBtn_Click" 
        runat="server" Height="25px" class="button" Width="116px"> </asp:Button> 
  </div>


<div id="divinput" class="divinput"  >
    <asp:Literal ID="txtSitemap" runat="server"  ></asp:Literal>
</div> 


</div>
<div class="messageboard">
    <asp:Literal ID="Msg" runat="server"></asp:Literal>
  </div>



