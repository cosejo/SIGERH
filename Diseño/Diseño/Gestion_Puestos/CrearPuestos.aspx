<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearPuestos.aspx.cs" Inherits="Diseño.Gestion_Puestos.CrearPuestos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">



        .style2
        {
            width: 536px;
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
            Creación de 
            Puestos</h2>
        <p>
            &nbsp;</p>
    </div>
    <div>
        <table style="width:120%;">
            <tr>
                <td class="style2" align="right">
                    <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBoxNombrePuesto" runat="server" Height="21px" 
                        style="margin-left: 0px" Width="281px"></asp:TextBox>
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
            <tr >
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
                    <asp:Button ID="botonCrearPuesto" runat="server" 
                            Text="Crear Puesto" 
                            onclick="botonCrearPuesto_Click" style="margin-left: 56px" />
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
                            onclick="botonRegresar_Click" style="margin-left: 135px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
