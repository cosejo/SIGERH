<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarAusencia.aspx.cs" Inherits="Diseño.Gestion_Ausencias.AgregarAusencia" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 477px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
    <div>
    <h2 align="center"> Agregar Ausencias</h2>
    </div>
        <div>
            <br />
            <br />
    </div>
    <div>
                    <table style="width:120%;">
                        <tr>
                            <td align="right" class="style1">
                                <asp:Label ID="Label1" runat="server" Text="Nombre:"></asp:Label>
                            </td>
                            <td>
                                <asp:DropDownList ID="DropDownListNombres" runat="server" Height="23px" 
                                    Width="359px">
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style1">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="style1">
                                <asp:Label ID="Label2" runat="server" Text="Fecha:"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBoxFecha" runat="server"></asp:TextBox>
                                <asp:CalendarExtender ID="TextBoxFecha_CalendarExtender" runat="server" 
                                    Enabled="True" TargetControlID="TextBoxFecha">
                                </asp:CalendarExtender>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style1">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="style1">
                                <asp:Label ID="Label3" runat="server" Text="Justificación:"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style1">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style1">
                                &nbsp;</td>
                            <td align="left">
                                <asp:Button ID="botonAplicarCambios" runat="server" Text="Agregar Ausencia" 
                                    onclick="botonAplicarCambios_Click" Height="25px" style="margin-left: 92px" 
                                    Width="145px" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style1">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>

                        <tr>
                            <td class="style1">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="botonRegresar" runat="server" onclick="botonRegresar_Click" 
                                    Text="Regresar" Height="25px" Width="145px" />
                            </td>
                        </tr>

                    </table>
    </div>
</asp:Content>
