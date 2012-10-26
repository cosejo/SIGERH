<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModificarAusencia.aspx.cs" Inherits="Diseño.Gestion_Ausencias.ModificarAusencia" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style3
        {
            width: 750px;
        }
        .style4
        {
            width: 261px;
        }
        .style5
        {
            width: 364px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
    <div>
    <h2 align="center"> Modificar Ausencias</h2>
    </div>
    <div>
        <br />
        <br />
        <br />
        <br />
    </div>
    <div>

        <table style="width:100%;">
            <tr>
                <td class="style3">
                    <table style="width:100%;">
                        <tr>
                            <td align="right" class="style5">
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="Cédula:"></asp:Label>
                                <asp:DropDownList ID="DropDownListNombres" runat="server" Height="22px" 
                                    Width="255px" 
                                    onselectedindexchanged="DropDownListNombres_SelectedIndexChanged">
                                </asp:DropDownList>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="style5">
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Fecha:"></asp:Label>
                                <asp:TextBox ID="TextBoxFecha" runat="server"></asp:TextBox>
                                <asp:CalendarExtender ID="TextBoxFecha_CalendarExtender" runat="server" 
                                    Enabled="True" TargetControlID="TextBoxFecha">
                                </asp:CalendarExtender>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td align="right" class="style5">
                                &nbsp;</td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Justificación:"></asp:Label>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;</td>
                            <td align="center">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
                <td>
                    <asp:GridView ID="GridView1" runat="server" style="margin-left: 51px" 
                        BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" GridLines="Vertical" AutoGenerateColumns="False">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField HeaderText="Fecha" />
                            <asp:BoundField HeaderText="Justificada" />
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                            <td class="style4">
                                <asp:Button ID="botonAplicarCambios" runat="server" Text="Aplicar Cambios" 
                                    onclick="botonAplicarCambios_Click" Height="25px" Width="145px" 
                                    style="margin-left: 440px" />
                            </td>
                            <td align="center">
                        <asp:Button ID="botonRegresar" runat="server" Text="Regresar" 
                            onclick="botonRegresar_Click" Height="25px" Width="145px" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
        </table>

    </div>
        <div>
            <table style="width:100%;">
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td align="right">
                        &nbsp;</td>
                </tr>
            </table>
    </div>
</asp:Content>
