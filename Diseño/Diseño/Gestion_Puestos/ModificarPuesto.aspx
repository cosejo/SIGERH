<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModificarPuesto.aspx.cs" Inherits="Diseño.Gestion_Puestos.ModificarPuesto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .style2
        {
            width: 422px;
        }
        

        .style1
        {
            width: 412px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Modificación 
            de Puestos</h2>
        <p>
            &nbsp;</p>
    </div>
    <div>
        <table style="width:100%;">
            <tr align="left">
                <td class="style2" align="right">
                    <asp:Label ID="Label1" runat="server" Text="Puesto:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:DropDownList ID="DropDownListPuestos" runat="server" Height="22px" 
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
                    <asp:Label ID="Label2" runat="server" Text="Nombre:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBoxNombre" runat="server" Height="22px" Width="239px"></asp:TextBox>
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
                    <asp:Label ID="Label3" runat="server" Text="Departamento:"></asp:Label>
                </td>
                <td class="style1" style="margin-left: 160px">
                    <asp:DropDownList ID="DropDownListDepartamentos" runat="server" 
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
            <tr align="center">
                <td class="style2">
                        &nbsp;</td>
                <td class="style1" style="margin-left: 160px">
                    <asp:Button ID="botonAplicarModificacion" runat="server" 
                            Text="Aplicar Modificación" onclick="botonAplicarModificacion_Click" />
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
                            onclick="botonRegresar_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
