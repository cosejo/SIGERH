<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EliminarPuesto.aspx.cs" Inherits="Diseño.Gestion_Puestos.EliminarPuesto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">



        .style2
        {
            width: 492px;
        }
        .style1
        {
            width: 539px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2 align="center">
            Eliminación de 
            Puestos</h2>
        <p>
            &nbsp;</p>
    </div>
    <div>
        <table style="width:121%;">
            <tr align="center">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr align="left">
                <td class="style2">
                    &nbsp;</td>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Puesto:  "></asp:Label>
                    <asp:DropDownList ID="DropDownListPuestos" runat="server" Height="22px" 
                        Width="233px" style="margin-left: 20px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr align="center">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1" style="margin-left: 80px">
                    <br />
                    <br />
                </td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr align="left">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1" style="margin-left: 160px">
                    <asp:Button ID="botonEliminarPuesto" runat="server" 
                            Text="Eliminar Departamento" 
                            onclick="botonEliminarPuesto_Click" Height="25px" Width="145px" 
                        style="margin-left: 86px" />
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
            <tr align="left">
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
