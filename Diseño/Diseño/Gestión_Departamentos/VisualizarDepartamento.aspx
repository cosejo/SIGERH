﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VisualizarDepartamento.aspx.cs" Inherits="Diseño.Gestión_Departamentos.VisualizarDepartamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">


        .style2
        {
            width: 291px;
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
            Visualización de la 
            estructura organizacional</h2>
        <p>
            &nbsp;</p>
    </div>
    <div style="width: 1306px">
        <asp:TreeView ID="TreeViewDepartamentos" runat="server" Height="209px" 
            style="margin-left: 448px" Width="403px">
        </asp:TreeView>
    </div>
    <div>
        <table style="width:122%;">
            <tr align="left">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1" style="margin-left: 160px">
                        &nbsp;</td>
                <td>
                    <asp:Button ID="botonRegresar" runat="server" Text="Regresar" 
                            onclick="botonRegresar_Click" Height="25px" Width="145px" 
                        style="margin-left: 300px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
