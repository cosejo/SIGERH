<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SeleccionGestionCapacitacion.aspx.cs" Inherits="Diseño.Gestion_Capacitacion.SeleccionGestionCapacitacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">


        .style2
        {
            width: 423px;
        }
        .style1
        {
            width: 455px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2 align="center">
            Gestión de 
            Capacitaciones</h2>
        <p>
            &nbsp;</p>
    </div>
    <div>
        <table style="width:120%;">
            <tr align="center">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1">
                    <asp:Button ID="botonAgregarCapacitacion" runat="server" Text="Agregar Capacitación" 
                            onclick="botonAgregarCapacitacion_Click" Height="25px" Width="145px" />
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
                    <asp:Button ID="botonAsignarAProyecto" runat="server" Text="Asignar a Proyecto" 
                            onclick="botonAsignarAProyecto_Click" Height="25px" Width="145px" />
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
                    <asp:Button ID="botonAsignarAColaborador" runat="server" 
                            Text="Asignar a Colaborador" 
                        onclick="botonAsignarAColaborador_Click" Height="25px" Width="145px" />
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
                    <asp:Button ID="botonEliminarCapacitacion" runat="server" 
                            Text="Eliminar Capacitación" 
                            onclick="botonEliminarCapacitacion_Click" Height="25px" 
                        Width="145px" />
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
            <tr align="left">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1" style="margin-left: 160px">
                        &nbsp;</td>
                <td>
                    <asp:Button ID="botonRegresar" runat="server" Text="Regresar" 
                            onclick="botonRegresar_Click" Height="25px" Width="145px" 
                        style="margin-left: 92px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
