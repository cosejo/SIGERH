<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SeleccionGestionExpedientes.aspx.cs" Inherits="Diseño.Gestion_Expedientes.SeleccionGestionExpedientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 412px;
        }
        .style2
        {
            width: 435px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 63px; width: 941px;">
        <div>
        <h2 align="center"> Gestión de Expedientes</h2>
            <p> &nbsp;</p>
        </div>
        <div>
            <table style="width:139%;">
                <tr align="center">
                    <td class="style2">
                        &nbsp;</td>
                    <td class="style1">
                        <asp:Button ID="botonCrearExpediente" runat="server" Text="Crear Expediente" 
                            onclick="botonCrearExpediente_Click" Height="25px" Width="200px" />
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
                        <asp:Button ID="botonEditar" runat="server" Text="Editar Expediente" 
                            onclick="botonEditar_Click" Height="25px" Width="200px" />
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
                        <asp:Button ID="botonConsultarExpediente" runat="server" 
                            Text="Consultar Expediente" onclick="botonConsultarExpediente_Click" 
                            Height="25px" Width="200px" />
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
                        <asp:Button ID="botonHabilitarExpediente" runat="server" 
                            Text="Habilitar/Deshabilitar Expediente" 
                            onclick="botonHabilitarExpediente_Click" Height="25px" Width="200px" />
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
                            onclick="botonRegresar_Click" Height="25px" Width="150px" 
                            style="margin-left: 154px" />
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
