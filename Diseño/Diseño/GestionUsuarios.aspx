<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="GestionUsuarios.aspx.cs" Inherits="Diseño.GestionUsuarios" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            height: 29px;
        }
        .style2
        {
            width: 152px;
        }
        .style3
        {
            height: 29px;
            width: 152px;
        }
    </style>

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         Creación de Usuarios
    </h2>
    <div style="height: 63px; width: 941px;">
        <table style="width:100%;" >
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
        <table style="width:55%; height: 114px;" align="center">
            <tr>
                <td class="style2" >
                    &nbsp;</td>
                <td align="left">
                    <asp:Label ID="Label44" runat="server" Text="Datos Personales" Font-Bold="True" 
                        Font-Names="Arial" Font-Overline="False" Font-Size="XX-Large"></asp:Label></td>
                <td align="left">
                    <h2> &nbsp;</h2>
                </td>
            </tr>
            <tr>
                <td align="center" class="style3">
                    <asp:Label ID="Label1" runat="server" Text="Nombre:" Visible = "true"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBoxNombre" runat="server" Visible="true" Width="257px"></asp:TextBox>
                </td>
                <td class="style1">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Usuario:" Visible = "true"></asp:Label>
                </td>
                <td >
                    <asp:TextBox ID="TextBoxUsuario" runat="server" Visible = "true" Width="253px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Edad:" Visible = "true"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListEdad" runat="server" Height="16px" 
                        Width="133px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td  class="style2" align="center">
                    <asp:Label ID="Label5" runat="server" Text="Sexo:" Visible = "true"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListSexo" runat="server" Width="136px">
                        <asp:ListItem Value="0">Masculino</asp:ListItem>
                        <asp:ListItem Value="1">Femenino</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td  align="center" class="style2">
                    <asp:Label ID="Label11" runat="server" Text="Tipo Usuario:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListTipoUsuario" runat="server" Height="16px" 
                        Width="137px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td  align="center" class="style2">
                    <asp:Label ID="Label6" runat="server" Text="Departamento:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListDepartamento" runat="server" Height="16px" 
                        Width="137px" 
                        onselectedindexchanged="DropDownListDepartamento_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td align="center" class="style2">
                    <asp:Label ID="Label7" runat="server" Text="Puesto:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListPuesto" runat="server" Height="16px" 
                        Width="137px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td align="center" class="style2">
                    <asp:Label ID="Label8" runat="server" Text="Rol:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListRol" runat="server" Height="16px" 
                        Width="138px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td align="center" class="style2">
                    <asp:Label ID="Label9" runat="server" Text="Autorización:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownListAutorizacion" runat="server" Height="16px" 
                        Width="135px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td  align="center" class="style2">
                    <asp:Label ID="Label10" runat="server" Text="Contraseña:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBoxContrasena" runat="server" style="margin-bottom: 3px" 
                        Width="258px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td  align="center" class="style2">
                    <asp:Label ID="Label45" runat="server" Text="Confirmar Contraseña:"></asp:Label>
                </td>
                <td align="left">
                    <asp:TextBox ID="TextBoxConfirmarContrasena" runat="server" style="margin-bottom: 3px" 
                        Width="258px" TextMode="Password" 
                        ontextchanged="TextBoxConfirmarContrasena_TextChanged"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td  align="center" class="style2">
                    &nbsp;</td>
                <td align="center">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td  align="center" class="style2">
                    &nbsp;</td>
                <td align="center">
                    <asp:Button ID="botonEjecutar" runat="server" Text="Aplicar Cambios" 
                        onclick="ButtonEjecutar_Click" Visible = "true"/>
                </td>
                <td>
                    <asp:Button ID="botonBorrar" runat="server" Text="Regresar" 
                        onclick="botonBorrar_Click" />
                </td>
            </tr>
        </table>
        <input id="txtMensajes" runat="server" style="DISPLAY:none; WIDTH: 10px"/>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
<div style="width: 714px; margin-left: 0px">

        </div>
<p>

        
    &nbsp;</p>
</asp:Content>
