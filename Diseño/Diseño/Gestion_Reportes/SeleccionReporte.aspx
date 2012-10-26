<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SeleccionReporte.aspx.cs" Inherits="Diseño.Gestion_Reportes.SeleccionReporte" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">

        .style1
        {
            width: 610px;
        }
        .style2
        {
            width: 389px;
        }
        .style3
        {
            width: 938px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <h2 align="center">
            Gestión 
            de reportes</h2>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </div>
    <div>
        <table style="width:121%;">
           <tr>
                <td>
                    &nbsp;</td>
                <td  align="right" class="style3">
                    <asp:Label ID="Label4" runat="server" Text="Categoría:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="164px">
                    </asp:DropDownList>
                </td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td  align="right" class="style3">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
            </tr> 
            <tr>
                <td>
                    &nbsp;</td>
                <td  align="right" class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Fecha Inicio:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBoxFechaInicio" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="TextBoxFechaInicio_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="TextBoxFechaInicio">
                    </asp:CalendarExtender>
                </td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td  align="right" class="style3">
                    <asp:Label ID="Label3" runat="server" Text="FechaFinal:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBoxFechaFinal" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="TextBoxFechaFinal_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="TextBoxFechaFinal">
                    </asp:CalendarExtender>
                </td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td  align="right" class="style3">
                    <asp:Label ID="Label1" runat="server" Text="Colaborador:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:DropDownList ID="DropDownListColaborador" runat="server" Height="22px" 
                        Width="343px">
                    </asp:DropDownList>
                    <asp:CheckBox ID="CheckBoxColaborador" runat="server" Text="Habilitar" />
                </td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td align="right" class="style3">
                    <asp:Label ID="Label5" runat="server" Text="Departamento:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:DropDownList ID="DropDownListDepartamento" runat="server" Height="22px" 
                        Width="343px">
                    </asp:DropDownList>
                    <asp:CheckBox ID="CheckBoxDepartamento" runat="server" Text="Habilitar" />
                </td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style1">
                    <br />
                    <br />
                </td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style1" align="left">
                    <asp:Button ID="botonGuardarCambios" runat="server" 
                        onclick="botonAgregarCambios_Click" Text="Agregar" Height="25px" 
                        Width="145px" style="margin-left: 57px" />
                </td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2" align="center">
                    <asp:Button ID="botonRegresar" runat="server" onclick="botonRegresar_Click" 
                        Text="Regresar" Height="25px" Width="145px" />
                </td>
            </tr>
        </table>
    </div>
    <p>
        <br />
    </p>
</asp:Content>
