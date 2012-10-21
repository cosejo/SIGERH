<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Diseño.Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Login
    </h2>
    <p>
        Put content here.
        <asp:Button ID="BotonContinuar" runat="server" onclick="BotonContinuar_Click" 
            Text="Continuar" />
    </p>
</asp:Content>
