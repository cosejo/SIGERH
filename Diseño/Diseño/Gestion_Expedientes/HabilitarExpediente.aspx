<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HabilitarExpediente.aspx.cs" Inherits="Diseño.Gestion_Expedientes.HabilitarExpediente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 366px;
        }
        .style2
        {
            width: 526px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <h2> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Habilitar/Deshabilitar Expediente </h2>
    </div>
    <p>
        <br />
    </p>
    <div>
        <table style="width:100%;">
            <tr align="right">
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownListNombresPersonas" runat="server" Height="16px" 
                        Width="526px" style="margin-left: 0px">
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
            <tr align="center">
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="botonGuardar" runat="server" Text="Guardar" 
                        onclick="botonGuardar_Click" />
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
            <tr align="right">
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="botonRegresar" runat="server" Text="Regresar" 
                        onclick="botonRegresar_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
