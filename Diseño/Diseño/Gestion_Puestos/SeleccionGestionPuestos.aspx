<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SeleccionGestionPuestos.aspx.cs" Inherits="Diseño.Gestion_Puestos.SeleccionGestionPuestos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">



        .style2
        {
            width: 291px;
        }
        .style1
        {
            width: 412px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gestión de 
            Puestos</h2>
        <p>
            &nbsp;</p>
    </div>
    <div>
        <table style="width:100%;">
            <tr align="center">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1">
                    <asp:Button ID="botonAgregarPuesto" runat="server" Text="Agregar Puesto" 
                            onclick="botonAgregarPuesto_Click" />
                </td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr align="center">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1">
                    <asp:Button ID="botonModificarPuesto" runat="server" Text="Modificar Puesto" 
                            onclick="botonModificarPuesto_Click" />
                </td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr align="center">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1" style="margin-left: 80px">
                    <asp:Button ID="botonVisualizarPuestos" runat="server" 
                            Text="Visualizar Puestos" 
                        onclick="botonVisualizarPuestos_Click" />
                </td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr align="center">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1" style="margin-left: 160px">
                    <asp:Button ID="botonEliminarPuesto" runat="server" 
                            Text="Eliminar Puesto" 
                            onclick="botonEliminarPuesto_Click" />
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
                            onclick="botonRegresar_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
