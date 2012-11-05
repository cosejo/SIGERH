<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SolicitarPermiso.aspx.cs" Inherits="Diseño.Solicitar_Vacaciones.SolicitarPermiso" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .style1
        {
            width: 525px;
        }
        .style2
        {
            width: 486px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <h2 align="center">
            Formulario de Solicitud de permiso</h2>
    </div>
    <p>
        <br />
    </p>
    <div>
        <table style="width:122%;">
            <tr>
                <td class="style1" align="right">
                    <asp:Label ID="Label1" runat="server" Text="Motivo:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBoxMotivo" runat="server" Height="22px" Width="225px" 
                        AutoCompleteType="Disabled"></asp:TextBox>
                    <asp:CustomValidator ID="CustomValidatorMotivo" runat="server" 
                        ErrorMessage="Debe ingresar un motivo" ValidationExpression="\w{10,100}" ControlToValidate="TextBoxMotivo"></asp:CustomValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" align="right">
                    <asp:Label ID="Label2" runat="server" Text="Fecha Inicio:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBoxFechaInicio" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="TextBoxFechaInicio_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="TextBoxFechaInicio">
                    </asp:CalendarExtender>
                    <asp:RangeValidator ID="RangeValidatorInicio" runat="server"
                        ErrorMessage="La fecha debe estar entre hoy y un año" Type="Date" ControlToValidate="TextBoxFechaInicio"></asp:RangeValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1" align="right">
                    <asp:Label ID="Label3" runat="server" Text="Fecha Final:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBoxFechaFinal" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="TextBoxFechaFinal_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="TextBoxFechaFinal">
                    </asp:CalendarExtender>
                    <asp:RangeValidator ID="RangeValidatorFinal" runat="server" 
                        ErrorMessage="La fecha debe estar entre hoy y un año" Type="Date" ControlToValidate="TextBoxFechaFinal"></asp:RangeValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    <br />
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr >
                <td class="style1">
                    &nbsp;</td>
                <td class="style2" align="left">
                    <asp:Button ID="botonEnviarSolicitud" runat="server" Text="Enviar Solicitud" Height="25px" 
                        Width="145px" style="margin-left: 48px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td align="center">
                    <asp:Button ID="botonRegresar" runat="server" onclick="botonRegresar_Click" 
                        Text="Regresar" Height="25px" Width="145px" />
                </td>
            </tr>
        </table>
    </div>
    <p>
    </p>
</asp:Content>
