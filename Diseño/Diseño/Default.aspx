<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Diseño.Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            width: 552px;
        }
    .style2
    {
        width: 561px;
    }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

<meta http-equiv="Expires" content="0" />
<meta http-equiv="Pragma" content="no-cache" />

<script language="javascript"  type="text/javascript">
    {
    if(history.forward(1))
    location.replace(history.forward(1))
    }
</script>
    <h2 align="center">
       &nbsp;Login
    </h2>
    <p>
        &nbsp;</p>
        <table style="width:121%;" >
            <tr>
                <td align="right" class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Usuario:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBoxUsuario" runat="server" Width="268px" 
                        AutoCompleteType="Disabled"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    &nbsp;</td>
                <td align="center" class="style1">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Contraseña:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBoxContrasena" runat="server" Width="266px" 
                        TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style1" align="justify">
        <asp:Button ID="BotonIngresar" runat="server" onclick="BotonIngresar_Click" 
            Text="Ingresar" style="margin-left: 72px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    <p>
        &nbsp;</p>
</asp:Content>
