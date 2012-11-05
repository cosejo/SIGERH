<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SeleccionGestionUsuarios.aspx.cs" Inherits="Diseño.Gestion_Usuarios.SeleccionGestionUsuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">



        .style2
        {
            width: 291px;
        }
        .style1
        {
            width: 709px;
        }
        .style3
        {
            width: 291px;
            height: 20px;
        }
        .style4
        {
            width: 709px;
            height: 20px;
        }
        .style5
        {
            height: 20px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2 align="center">
            Gestión de 
            Usuarios</h2>
        <p>
            &nbsp;</p>
    </div>
    <div>
        <table style="width:121%;">
            <tr align="center">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1">
                    <asp:Button ID="botonAgregarDepartamento" runat="server" Text="Agregar Usuarios" 
                            onclick="botonAgregarDepartamento_Click" Height="25px" Width="145px" />
                    <br />
                    <br />
                </td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr align="center">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1">
                    <asp:Button ID="botonModificarDepartamento" runat="server" Text="Asignar Roles" 
                            onclick="botonModificarDepartamento_Click" Height="25px" 
                        Width="145px" />
                    <br />
                    <br />
                </td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr align="center">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1" style="margin-left: 80px">
                    <asp:Button ID="botonAsignarPermisos" runat="server" 
                            Text="Asignar Permisos" 
                            onclick="botonAsignarPermisos_Click" Height="25px" 
                        Width="145px" />
                    <br />
                    <br />
                </td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr align="center">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1" style="margin-left: 160px">
                    <asp:Button ID="botonVisualizarEstructura" runat="server" 
                            Text="Visualizar Usuarios" 
                        onclick="botonVisualizarEstructura_Click" Height="25px" Width="145px" />
                    <br />
                    <br />
                </td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                        &nbsp;</td>
                <td class="style1" style="margin-left: 160px">
                    <asp:Button ID="botonEliminarDepartamento" runat="server" 
                            Text="Eliminar Usuarios" 
                            onclick="botonEliminarDepartamento_Click" Height="25px" 
                        Width="145px" style="margin-left: 280px" />
                </td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr align="center">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1" style="margin-left: 160px">
                        &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="center">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1" style="margin-left: 160px">
                        &nbsp;</td>
                <td>
                    <asp:Button ID="botonRegresar" runat="server" Text="Regresar" 
                            onclick="botonRegresar_Click" Height="25px" Width="145px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
