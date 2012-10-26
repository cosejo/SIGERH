<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AsignarAColaborador.aspx.cs" Inherits="Diseño.Gestion_Capacitacion.AsignarAColaborador" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">




        .style2
        {
            width: 686px;
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
            Asignación de Capacitaciones a Colaboradores</h2>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </div>
    <div>
        <table style="width:100%;">
            <tr align="left">
                <td class="style2" align="right">
                    <asp:Label ID="Label1" runat="server" Text="Proyecto:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:DropDownList ID="DropDownListProyecto" runat="server" Height="22px" 
                        Width="239px">
                    </asp:DropDownList>
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
                    <asp:Label ID="Label3" runat="server" Text="Capacitación:"></asp:Label>
                </td>
                <td class="style1" style="margin-left: 160px">
                    <asp:DropDownList ID="DropDownListCapacitacion" runat="server" 
                        Height="22px" Width="240px">
                    </asp:DropDownList>
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
                        <asp:Label ID="Label4" runat="server" Text="Colaborador:"></asp:Label>
                </td>
                <td class="style1" style="margin-left: 160px" align="left">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="242px">
                    </asp:DropDownList>
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
                    <asp:Button ID="botonAsignarCapacitacion" runat="server" 
                            Text="Asignar Capacitación" onclick="botonAsignarCapacitacion_Click" 
                        Height="25px" Width="145px" style="margin-left: 48px" />
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
            <tr align="right">
                <td class="style2">
                    &nbsp;</td>
                <td class="style1" style="margin-left: 160px">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="botonRegresar" runat="server" Text="Regresar" 
                            onclick="botonRegresar_Click" Height="25px" Width="145px" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
