<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Diseño.Menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div>
<h2>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Menu
</h2>
</div>
<div style="width: 1297px">
    <br />
    <br />
    </div>
<div>
    <table style="width:121%;">
        <tr align="center">
            <td>
                <asp:Button ID="botonGestionExpedientes" runat="server" 
                    Text="Gestión de expedientes" onclick="botonGestionExpedientes_Click" 
                    Height="26px" Width="215px" />
            </td>
            <td>
                <asp:Button ID="botonGestionGlobalVacaciones" runat="server" 
                    Text="Gestión global de vacaciones" 
                    onclick="botonGestionGlobalVacaciones_Click" Height="26px" Width="215px" />
            </td>
            <td>
                <asp:Button ID="botonAprobarVacaciones" runat="server" 
                    Text="Aprobar vacaciones a colaborador" 
                    onclick="botonAprobarVacaciones_Click" Height="26px" Width="215px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr align="center">
            <td>
                <asp:Button ID="botonAprobarPermisos" runat="server" 
                    Text="Aprobar permisos a colaborador" onclick="botonAprobarPermisos_Click" 
                    Height="26px" Width="215px" />
            </td>
            <td>
                <asp:Button ID="botonSolicitarVacaciones" runat="server" 
                    Text="Solicitar vacaciones" onclick="botonSolicitarVacaciones_Click" 
                    Height="26px" Width="215px" />
            </td>
            <td>
                <asp:Button ID="botonVisualizarPermisos" runat="server" 
                    Text="Visualizar solicitudes de permisos" 
                    onclick="botonVisualizarPermisos_Click" Height="26px" Width="215px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr align="center">
            <td>
                <asp:Button ID="botonVisualizarVacaciones" runat="server" 
                    Text="Visualizar solicitudes de vacaciones" 
                    onclick="botonVisualizarVacaciones_Click" Height="26px" Width="215px" />
            </td>
            <td>
                <asp:Button ID="botonGestionAusencias" runat="server" 
                    Text="Gestión de ausencias" onclick="botonGestionAusencias_Click" 
                    Height="26px" Width="215px" />
            </td>
            <td>
                <asp:Button ID="botonGestionDepartamento" runat="server" 
                    Text="Gestión de departamentos" onclick="botonGestionDepartamento_Click" 
                    Height="26px" Width="215px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr align="center">
            <td>
                <asp:Button ID="botonGestionPuestos" runat="server" Text="Gestión de puestos" 
                    onclick="botonGestionPuestos_Click" Height="26px" Width="215px" />
            </td>
            <td>
                <asp:Button ID="botonGestionCapacitacion" runat="server" 
                    Text="Gestión de capacitación" onclick="botonGestionCapacitacion_Click" 
                    Height="26px" Width="215px" />
            </td>
            <td>
                <asp:Button ID="botonGestionUsuarios" runat="server" Text="Gestión de usuarios" 
                    onclick="botonGestionUsuarios_Click" Height="26px" Width="215px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr align="center">
            <td>
                <asp:Button ID="botonGestionProyectos" runat="server" 
                    Text="Gestión de proyectos" onclick="botonGestionProyectos_Click" 
                    Height="26px" Width="215px" />
            </td>
            <td>
                <asp:Button ID="botonGestionReportes" runat="server" Text="Gestión de Reportes" 
                    onclick="botonGestionReportes_Click" Height="26px" Width="215px" />
            </td>
            <td>
                <asp:Button ID="botonSolicitarPermiso" runat="server" 
                    Text="Solicitar permiso" onclick="botonSolicitarPermiso_Click" 
                    Height="26px" Width="215px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr align="center">
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
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
</asp:Content>
