<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HabilitarExpediente.aspx.cs" Inherits="Diseño.Gestion_Expedientes.HabilitarExpediente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 479px;
        }
        .style2
        {
            width: 416px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <h2 align="center"> Habilitar/Deshabilitar Expediente </h2>
    </div>
    <br />
    <br />
    <div>
        <table style="width:121%;">
            <tr align="right">
                <td class="style1">
                    &nbsp;</td>
                <td class="style2" align="left">
                    <asp:Label ID="Label1" runat="server" Text="Cédula:          "></asp:Label>
                    <asp:DropDownList ID="DropDownListNombresPersonas" runat="server" Height="22px" 
                        Width="178px" style="margin-left: 0px">
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
                        style="margin-left: 84px" />
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
                        onclick="botonRegresar_Click" Height="25px" Width="145px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
