﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarCapacitacion.aspx.cs" Inherits="Diseño.Gestion_Capacitacion.AgregarCapacitacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">





        .style2
        {
            width: 520px;
        }
        

        .style1
        {
            width: 412px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2 align="center">
            Creación de Capacitaciones</h2>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </div>
    <div>
        <table style="width:121%;">
            <tr align="left">
                <td class="style2" align="right">
                    <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBoxNombre" runat="server" Height="21px" Width="332px"></asp:TextBox>
                </td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr align="center">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr align="left">
                <td class="style2" align="right">
                    <asp:Label ID="Label3" runat="server" Text="Descripción:"></asp:Label>
                </td>
                <td class="style1" style="margin-left: 160px">
                    <asp:TextBox ID="TextBoxDescripcion" runat="server" Height="22px" Width="330px"></asp:TextBox>
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
            <tr >
                <td class="style2" align="right">
                    <asp:Label ID="Label4" runat="server" Text="Duración en días:"></asp:Label>
                </td>
                <td class="style1" style="margin-left: 160px" align="left">
                    <asp:TextBox ID="TextBoxDuracionDias" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="right">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1" style="margin-left: 160px">
                        <br />
                        <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr >
                <td class="style2">
                        &nbsp;</td>
                <td class="style1" style="margin-left: 160px" align="left">
                    <asp:Button ID="botonCrearCapacitacion" runat="server" 
                            Text="Crear Capacitación" onclick="botonCrearCapacitacion_Click" 
                        Height="25px" style="margin-left: 69px" Width="145px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="right">
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
                            onclick="botonRegresar_Click" Height="25px" style="margin-left: 148px" 
                        Width="145px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
