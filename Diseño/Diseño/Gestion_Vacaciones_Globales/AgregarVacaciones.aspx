<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarVacaciones.aspx.cs" Inherits="Diseño.Gestion_Vacaciones_Globales.AgregarVacaciones" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 492px;
        }
        .style2
        {
            width: 256px;
        }
        .style3
        {
            width: 202px;
        }
        .style6
        {
            width: 256px;
            height: 19px;
        }
        .style7
        {
            width: 492px;
            height: 19px;
        }
        .style8
        {
            width: 202px;
            height: 19px;
        }
        .style9
        {
            width: 236px;
        }
        .style10
        {
            width: 236px;
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
    <div>
    <h2 align="center"> Agregar Vacaciones globales</h2>
        <p> &nbsp;</p>
    </div>
    <div>
        <table style="width:121%;">
            <tr>
                <td class="style9">
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
               <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
               <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
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
               <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style10">
                    </td>
                <td class="style6">
                    </td>
                <td class="style7">
                    </td>
               <td class="style8">
                    </td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td  align="right" class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Motivo:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox3" runat="server" Height="22px" Width="300px"></asp:TextBox>
                </td>
               <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style1">
                    <br />
                    <br />
                </td>
               <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style1">
                    <asp:Button ID="botonGuardarCambios" runat="server" 
                        onclick="botonAgregarCambios_Click" Text="Agregar" Height="25px" 
                        style="margin-left: 32px" Width="145px" />
                </td>
               <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
               <td class="style3">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
               <td align="center" class="style3">
                    <asp:Button ID="botonRegresar" runat="server" onclick="botonRegresar_Click" 
                        Text="Regresar" Height="25px" Width="145px" />
                </td>
            </tr>
        </table>
    </div>
    <p>
        <br />
    </p>
</asp:Content>
