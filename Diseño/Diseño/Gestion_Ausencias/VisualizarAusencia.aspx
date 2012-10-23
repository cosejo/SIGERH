<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VisualizarAusencia.aspx.cs" Inherits="Diseño.Gestion_Ausencias.VisualizarAusencia" %>
<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 1065px;
        }
        .style2
        {
            width: 646px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <asp:ScriptManager ID="ScriptManager1" runat="server">
                            </asp:ScriptManager>
    <div><h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Visualización de Ausencias</h2>
    </div>
    <p>
        <br />
    </p>
    <div>
        <table style="width:100%;">
            <tr>
                <td align="right">
                    <asp:Label ID="Label1" runat="server" Text="Colaborador:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="467px">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label2" runat="server" Text="Fecha Inicio:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBoxFechaInicio" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="TextBoxFechaInicio_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="TextBoxFechaInicio">
                    </asp:CalendarExtender>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="Label3" runat="server" Text="Fecha Final:"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBoxFechaFinal" runat="server"></asp:TextBox>
                    <asp:CalendarExtender ID="TextBoxFechaFinal_CalendarExtender" runat="server" 
                        Enabled="True" TargetControlID="TextBoxFechaFinal">
                    </asp:CalendarExtender>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="botonConsultar" runat="server" Text="Consultar" 
                        onclick="botonConsultar_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    <div>
        <hr />
    </div>
    <p>
    </p>
    <div>
        <table style="width:100%;">
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
        <asp:GridView ID="GridViewAusencias" runat="server" BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            GridLines="Vertical" style="margin-left: 249px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
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
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    </div>
    <div>
        <table>   
        <tr align="right">
        <td class="style1"> 
            <asp:Button ID="botonRegresar" runat="server" Text="Regresar" 
                onclick="botonRegresar_Click" />
            </td>
            </tr>
        </table>
    </div>
</asp:Content>
