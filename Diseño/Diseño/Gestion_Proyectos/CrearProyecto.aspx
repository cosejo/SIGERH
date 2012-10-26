<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearProyecto.aspx.cs" Inherits="Diseño.Gestion_Proyectos.CrearProyecto" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .style1
        {
            width: 342px;
        }
        .style2
        {
            width: 535px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <h2 align="center">
            Creación de proyectos</h2>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </div>
    <div>
        <table style="width:121%;">
            <tr>
                <td>
                    &nbsp;</td>
                <td  align="right" class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Fecha Inicio:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBoxFechaInicio" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="TextBoxFechaInicio_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="TextBoxFechaInicio">
                    </asp:CalendarExtender>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td  align="right" class="style2">
                    <asp:Label ID="Label3" runat="server" Text="FechaFinal:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBoxFechaFinal" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="TextBoxFechaFinal_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="TextBoxFechaFinal">
                    </asp:CalendarExtender>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td  align="right" class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox3" runat="server" Height="22px" Width="299px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style1">
                    <br />
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style1">
                    <asp:Button ID="botonGuardarCambios" runat="server" 
                        onclick="botonAgregarCambios_Click" Text="Crear" Height="25px" 
                        style="margin-left: 31px" Width="125px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="botonRegresar" runat="server" onclick="botonRegresar_Click" 
                        Text="Regresar" Height="25px" style="margin-left: 99px" Width="125px" />
                </td>
            </tr>
        </table>
    </div>
    <p>
        <br />
    </p>
</asp:Content>
