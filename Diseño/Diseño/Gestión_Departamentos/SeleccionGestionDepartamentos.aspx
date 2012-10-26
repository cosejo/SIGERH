<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SeleccionGestionDepartamentos.aspx.cs" Inherits="Diseño.Gestión_Departamentos.SeleccionGestionDepartamentos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">


        .style2
        {
            width: 441px;
        }
        .style1
        {
            width: 412px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2 align="center">
            Gestión de 
            Departamentos</h2>
        <p>
            &nbsp;</p>
    </div>
    <div>
        <table style="width:118%;">
            <tr align="center">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1">
                    <asp:Button ID="botonAgregarDepartamento" runat="server" Text="Agregar Departamento" 
                            onclick="botonAgregarDepartamento_Click" Height="25px" Width="150px" />
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
                    <asp:Button ID="botonModificarDepartamento" runat="server" Text="Modificar Departamento" 
                            onclick="botonModificarDepartamento_Click" Height="25px" 
                        Width="150px" />
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
                    <asp:Button ID="botonVisualizarEstructura" runat="server" 
                            Text="Visualizar Estructura" 
                        onclick="botonVisualizarEstructura_Click" Height="25px" Width="150px" />
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
                    <asp:Button ID="botonEliminarDepartamento" runat="server" 
                            Text="Eliminar Departamento" 
                            onclick="botonEliminarDepartamento_Click" Height="25px" 
                        Width="150px" />
                </td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                        &nbsp;</td>
                <td class="style1" style="margin-left: 160px">
                        &nbsp;</td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr align="right">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1" style="margin-left: 160px">
                        &nbsp;</td>
                <td>
                    <asp:Button ID="botonRegresar" runat="server" Text="Regresar" 
                            onclick="botonRegresar_Click" Height="25px" Width="150px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
