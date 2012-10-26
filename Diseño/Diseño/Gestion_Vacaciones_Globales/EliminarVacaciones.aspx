<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EliminarVacaciones.aspx.cs" Inherits="Diseño.Gestion_Vacaciones_Globales.EliminarVacaciones" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 610px;
        }
        .style2
        {
            width: 445px;
        }
        .style3
        {
            height: 26px;
        }
        .style4
        {
            width: 445px;
            height: 26px;
        }
        .style5
        {
            width: 610px;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <h2 align="center"> ELIMINAR VACACIONES GLOBALES</h2>
        <p> &nbsp;</p>
    </div>
    <div>
        <table style="width:121%;">
            <tr>
                <td class="style3">
                    </td>
                <td style="margin-left: 40px" align="right" class="style4">
                    <asp:Label ID="Label4" runat="server" Text="Motivo:"></asp:Label>
                </td>
                <td class="style5">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="429px">
                    </asp:DropDownList>
                </td>
               <td class="style3">
                    </td>
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
                        onclick="botonEliminarCambios_Click" Text="Eliminar" Height="25px" 
                        Width="145px" style="margin-left: 104px" />
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
               <td align="center">
                    <asp:Button ID="botonRegresar" runat="server" onclick="botonRegresar_Click" 
                        Text="Regresar" style="height: 26px" Height="25px" Width="145px" />
                </td>
            </tr>
        </table>
    </div>
    <p>
        <br />
    </p>
</asp:Content>
