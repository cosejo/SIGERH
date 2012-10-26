<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AprobarVacaciones.aspx.cs" Inherits="Diseño.Aprobar_Vacaciones_Permisos.AprobarVacaciones" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 832px;
        }
        .style2
        {
            width: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <h2 align="center"> Aprobar Solicitudes de Vacaciones</h2>
    </div>
    <p>
        <br />
    </p>
    <div style="width: 1297px">
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CheckBoxField Text="Aprobar" />
                <asp:CheckBoxField Text="Rechazar" />
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
    </div>
    <p>
        &nbsp;</p>
    <div>
        <table style="width:121%;">
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style1">
                    <asp:Button ID="botonResponderSolicitudes" runat="server" 
                        style="margin-left: 347px" Text="Responder Solicitudes" 
                        onclick="botonResponderSolicitudes_Click" Height="25px" Width="145px" />
                </td>
                <td>
                    <asp:Button ID="botonRegresar" runat="server" Text="Regresar" 
                        onclick="botonRegresar_Click" Height="25px" Width="145px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>
