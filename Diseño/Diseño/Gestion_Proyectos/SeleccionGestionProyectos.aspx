<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SeleccionGestionProyectos.aspx.cs" Inherits="Diseño.Gestion_Proyectos.SeleccionGestionProyectos" %>
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
    <div style="height: 63px; width: 941px;">
        <div>
            <h2>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gestión de 
                Proyectos</h2>
            <p>
                &nbsp;</p>
        </div>
        <div>
            <table style="width:100%;">
                <tr align="center">
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style1">
                        <asp:Button ID="botonCrearExpediente" runat="server" Text="Crear Proyecto" 
                            onclick="botonCrearExpediente_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr align="center">
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style1">
                        <asp:Button ID="botonEditar" runat="server" Text="Eliminar Proyecto" 
                            onclick="botonEditar_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr align="center">
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style1" style="margin-left: 80px">
                        <asp:Button ID="botonConsultarExpediente" runat="server" 
                            Text="Consultar Proyecto" onclick="botonConsultarExpediente_Click" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr align="center">
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style1" style="margin-left: 160px">
                        <asp:Button ID="botonHabilitarExpediente" runat="server" 
                            Text="Habilitar/Deshabilitar Proyecto" 
                            onclick="botonHabilitarExpediente_Click" />
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
    </div>
</asp:Content>
