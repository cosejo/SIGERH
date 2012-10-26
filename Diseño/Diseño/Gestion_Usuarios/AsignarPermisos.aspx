<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AsignarPermisos.aspx.cs" Inherits="Diseño.Gestion_Usuarios.AsignarPermisos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .style2
        {
            width: 539px;
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
            Asignación de Permiso</h2>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </div>
    <div>
        <table style="width:121%;">
            <tr align="left">
                <td class="style2" align="right">
                    <asp:Label ID="Label1" runat="server" Text="Usuario:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:DropDownList ID="DropDownListDepartamentos" runat="server" Height="22px" 
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
                    <asp:Label ID="Label2" runat="server" Text="Rol:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:DropDownList ID="DropDownListDepartamentosPadre0" runat="server" 
                        Height="22px" Width="240px">
                    </asp:DropDownList>
                </td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr align="center">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1" style="margin-left: 80px">
                    &nbsp;</td>
                <td>
                        &nbsp;</td>
            </tr>
            <tr align="left">
                <td class="style2" align="right">
                    <asp:Label ID="Label3" runat="server" Text="Permisos:"></asp:Label>
                </td>
                <td class="style1" style="margin-left: 160px">
                    <asp:DropDownList ID="DropDownListDepartamentosPadre" runat="server" 
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
                    <asp:Button ID="botonAplicarModificacion" runat="server" 
                            Text="Aplicar Cambios" onclick="botonAplicarModificacion_Click" 
                        Height="25px" style="margin-left: 35px" Width="145px" />
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
            <tr align="center">
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
