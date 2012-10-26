<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SeleccionGestionAusencias.aspx.cs" Inherits="Diseño.Gestion_Ausencias.SeleccionGestionAusencias" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .style2
        {
            width: 280px;
        }
        .style1
        {
            width: 720px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2 align="center">
            Gestión de Ausencias</h2>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </div>
    <div>
        <table style="width:121%;">
            <tr align="center">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1">
                    <asp:Button ID="botonAgregarAusencia" runat="server" Text="Agregar Ausencia" 
                            onclick="botonAgregarAusencia_Click" Height="25px" Width="145px" />
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
                    <asp:Button ID="botonModificarAusencia" runat="server" Text="Modificar Ausencia" 
                            onclick="botonModificarAusencia_Click" Height="25px" Width="145px" />
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
                    <asp:Button ID="botonConsultarAusencia" runat="server" 
                            Text="Consultar Ausencia" onclick="botonConsultarAusencia_Click" 
                        Height="25px" Width="145px" />
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
                    <asp:Button ID="botonEliminarAusencia" runat="server" 
                            Text="Eliminar Ausencia" 
                            onclick="botonEliminarAusencia_Click" Height="25px" Width="145px" />
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
                <td align="left">
                    <asp:Button ID="botonRegresar" runat="server" Text="Regresar" 
                            onclick="botonRegresar_Click" Height="25px" Width="145px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
