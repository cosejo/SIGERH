<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="CreacionUsuarios.aspx.cs" Inherits="Diseño.Gestion_Usuarios.CreacionUsuarios" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .style1
        {
            height: 29px;
        }
        .style2
        {
            width: 521px;
        }
        .style3
        {
            height: 29px;
            width: 521px;
        }
        .style4
        {
            width: 375px;
        }
        .style5
        {
            height: 29px;
            width: 375px;
        }
    </style>

</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2 align="center">
         Creación de Usuarios
    </h2>
    <div style="height: 22px; width: 1301px;">

    </div>
        <table style="width:121%; height: 114px;" align="center">
            <tr>
                <td class="style2" >
                    &nbsp;</td>
                <td align="left" class="style4">
                    <asp:Label ID="Label44" runat="server" Text="Datos Personales" Font-Bold="True" 
                        Font-Names="Arial" Font-Overline="False" Font-Size="XX-Large"></asp:Label></td>
                <td align="left">
                </td>
            </tr>

            <tr>
                <td align="right" class="style3">
                    <asp:Label ID="Label1" runat="server" Text="Nombre:" Visible = "true"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="TextBoxNombre" runat="server" Visible="true" Width="257px"></asp:TextBox>
                </td>
                <td class="style1">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="TextBoxNombre"
                        ErrorMessage="El nombre debe contener unicamente letras" 
                        ValidationExpression="[A-Za-z\s]{2,50}"></asp:RegularExpressionValidator>
                    </td>
            </tr>
                        <tr>
                <td align="right" class="style3">
                    <asp:Label ID="Label4" runat="server" Text="Apellido:" Visible = "true"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="TextBoxApellido" runat="server" Visible="true" Width="257px"></asp:TextBox>
                </td>
                <td class="style1">
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator6" 
                        runat="server" ControlToValidate="TextBoxApellido"
                        ErrorMessage="El apellido debe contener unicamente letras" 
                        ValidationExpression="[A-Za-z\s]{2,50}"></asp:RegularExpressionValidator>
                            </td>
            </tr>
                        <tr>
                <td align="right" class="style2">
                    <asp:Label ID="Label9" runat="server" Text="Cédula:"></asp:Label>
                </td>
                <td class="style4" >
                    <asp:TextBox ID="TextBoxCedula" runat="server" Visible = "true" Width="253px"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBoxCedula"
                        ErrorMessage="La cedula debe contener 9 digitos" 
                        ValidationExpression="\d{9}"></asp:RegularExpressionValidator>
                            </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Usuario:" Visible = "true"></asp:Label>
                </td>
                <td class="style4" >
                    <asp:TextBox ID="TextBoxUsuario" runat="server" Visible = "true" Width="253px"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBoxUsuario"
                        ErrorMessage="El usuario debe contener unicamente letras y estar entre 5 y 50 caracteres" 
                        ValidationExpression="[A-Za-z]{5,50}"></asp:RegularExpressionValidator>
                            </td>
            </tr>
            <tr>
                <td align="right" class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Edad:" Visible = "true"></asp:Label>
                </td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownListEdad" runat="server" Height="16px" 
                        Width="133px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td  class="style2" align="right">
                    <asp:Label ID="Label5" runat="server" Text="Genero:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownListSexo" runat="server" Width="136px">
                        <asp:ListItem Value="MA">Masculino</asp:ListItem>
                        <asp:ListItem Value="Fe">Femenino</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td  align="right" class="style2">
                    <asp:Label ID="Label6" runat="server" Text="Departamento:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownListDepartamento" runat="server" Height="16px" 
                        Width="137px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td align="right" class="style2">
                    <asp:Label ID="Label7" runat="server" Text="Puesto:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownListPuesto" runat="server" Height="16px" 
                        Width="137px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td align="right" class="style2">
                    <asp:Label ID="Label8" runat="server" Text="Rol:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:DropDownList ID="DropDownListRol" runat="server" Height="16px" 
                        Width="138px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td  align="right" class="style2">
                    <asp:Label ID="Label10" runat="server" Text="Contraseña:"></asp:Label>
                </td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxContrasena" runat="server" style="margin-bottom: 3px" 
                        Width="258px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td  align="right" class="style2">
                    <asp:Label ID="Label45" runat="server" Text="Confirmar Contraseña:"></asp:Label>
                </td>
                <td align="left" class="style4">
                    <asp:TextBox ID="TextBoxConfirmarContrasena" runat="server" style="margin-bottom: 3px" 
                        Width="258px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td  align="right" class="style2">
                    <asp:Label ID="Label46" runat="server" Text="Correo:"></asp:Label>
                </td>
                <td align="left" class="style4">
                    <asp:TextBox ID="TextBoxCorreo" runat="server" style="margin-bottom: 3px" 
                        Width="258px" TextMode="Email"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td  align="center" class="style2">
                    &nbsp;</td>
                <td align="center" class="style4">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxCorreo"
                        ErrorMessage="Debe Digitar un correo valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td  align="center" class="style2">
                    &nbsp;</td>
                <td align="center" class="style4">
                    <asp:Button ID="botonCrear" runat="server" Text="Crear" 
                        onclick="botonCrear_Click" Visible = "true" Height="25px" 
                        Width="145px"/>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td  align="center" class="style2">
                    &nbsp;</td>
                <td align="center" class="style4">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td  align="center" class="style2">
                    &nbsp;</td>
                <td align="center" class="style4">
                    &nbsp;</td>
                <td align="center">
                    <asp:Button ID="botonRegresar" runat="server" Text="Regresar" 
                        onclick="botonRegresar_Click" Height="25px" Width="145px" />
                </td>
            </tr>
        </table>
        <input id="txtMensajes" runat="server" style="DISPLAY:none; WIDTH: 10px"/>
    </asp:Content>
