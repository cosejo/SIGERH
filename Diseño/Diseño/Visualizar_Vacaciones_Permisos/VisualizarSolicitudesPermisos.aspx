<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VisualizarSolicitudesPermisos.aspx.cs" Inherits="Diseño.Visualizar_Vacaciones_Permisos.VisualizarSolicitudesPermisos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 480px;
        }
        .style2
        {
            width: 515px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <h2 align="center"> Solicitudes de Permisos</h2>
    </div>
    <p>
        <br />
    </p>
    <div>
        <div style="margin-top: 0px">
            <table style="width:100%;">
                <tr>
                    <td align="right" class="style2">
                        <asp:Label ID="Label1" runat="server" Text="Cédula:"></asp:Label>
                    </td>
                    <td class="style1">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="273px" 
                            style="margin-left: 0px">
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="right" class="style2">
                        &nbsp;</td>
                    <td class="style1">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td align="right" class="style2">
                        &nbsp;</td>
                    <td class="style1">
                        <asp:Button ID="botonConsultar" runat="server" Text="Consultar" 
                            onclick="botonConsultar_Click" Height="25px" style="margin-left: 68px" 
                            Width="145px" />
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
    <p>
    </p>
    <div>
        <asp:GridView ID="GridViewSolicitudes" runat="server" BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            GridLines="Vertical">
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
    </div>
    <p>
        <table style="width:100%;">
            <tr>
                <td align="right">
                    <asp:Button ID="botonRegresar" runat="server" Text="Regresar" 
                        onclick="botonRegresar_Click" Height="25px" Width="145px" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
