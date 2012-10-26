<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HabilitarProyecto.aspx.cs" Inherits="Diseño.Gestion_Proyectos.HabilitarProyecto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .style1
        {
            width: 409px;
        }
        .style2
        {
            width: 469px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2 align="center">
            Habilitar/Deshabilitar Proyecto
        </h2>
    </div>
    <p>
        <br />
    </p>
    <div>
        <table style="width:121%;">
            <tr align="right">
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Label ID="Label1" runat="server" Text="Proyecto:      "></asp:Label>
                    <asp:DropDownList ID="DropDownListNombresPersonas" runat="server" Height="22px" 
                        Width="410px" style="margin-left: 0px">
                    </asp:DropDownList>
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
            <tr align="left">
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Label ID="Label2" runat="server" Text="Habilitado: "></asp:Label>
                    <asp:CheckBox ID="CheckBoxHabilitado" runat="server" 
                        oncheckedchanged="CheckBoxHabilitado_CheckedChanged" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="center">
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="left">
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="botonGuardar" runat="server" Text="Guardar" 
                        onclick="botonGuardar_Click" Height="25px" Width="145px" 
                        style="margin-left: 128px" />
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
            <tr align="left">
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="botonRegresar" runat="server" Text="Regresar" 
                        onclick="botonRegresar_Click" Height="25px" Width="145px" 
                        style="margin-left: 85px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
